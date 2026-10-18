.class public Lcom/gme/video/sdk/edit/surface/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final mTriangleVerticesData:[F


# instance fields
.field private final mMVPMatrix:[F

.field private mProgram:I

.field private final mSTMatrix:[F

.field private mTextureID:I

.field private final mTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private rotationAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 21
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVerticesData:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 49
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mMVPMatrix:[F

    .line 50
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mSTMatrix:[F

    const/16 v1, -0x3039

    .line 52
    iput v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTextureID:I

    .line 60
    iput p1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->rotationAngle:I

    .line 61
    sget-object p1, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVerticesData:[F

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 62
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 137
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, p1}, Lcom/gme/video/sdk/gl/GLHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    if-eqz p1, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failed creating program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8

    .line 72
    const-string v0, "onDrawFrame start"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 p1, 0x5

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mSTMatrix:[F

    aget v0, p2, p1

    neg-float v0, v0

    aput v0, p2, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xd

    .line 77
    aget v2, p2, v1

    sub-float/2addr v0, v2

    aput v0, p2, v1

    .line 80
    :cond_0
    iget p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 81
    const-string p2, "glUseProgram"

    invoke-static {p2}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 82
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 83
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTextureID:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 84
    iget-object p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maPositionHandle:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 86
    const-string p2, "glVertexAttribPointer maPosition"

    invoke-static {p2}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 87
    iget p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 88
    const-string p2, "glEnableVertexAttribArray maPositionHandle"

    invoke-static {p2}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget v2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maTextureHandle:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 91
    const-string p2, "glVertexAttribPointer maTextureHandle"

    invoke-static {p2}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 92
    iget p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maTextureHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 93
    const-string p2, "glEnableVertexAttribArray maTextureHandle"

    invoke-static {p2}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 94
    iget p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mSTMatrix:[F

    const/4 v2, 0x1

    invoke-static {p2, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 95
    iget p2, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mMVPMatrix:[F

    invoke-static {p2, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p2, 0x4

    .line 96
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 97
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 7

    .line 102
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/gme/video/sdk/gl/GLHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    if-eqz v0, :cond_5

    .line 106
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maPositionHandle:I

    .line 107
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maPositionHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 111
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maTextureHandle:I

    .line 112
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->maTextureHandle:I

    if-eq v0, v1, :cond_3

    .line 116
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muMVPMatrixHandle:I

    .line 117
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muMVPMatrixHandle:I

    if-eq v0, v1, :cond_2

    .line 121
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muSTMatrixHandle:I

    .line 122
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->muSTMatrixHandle:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 127
    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->genExtTexture(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mTextureID:I

    .line 129
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 130
    iget v0, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->rotationAngle:I

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->mMVPMatrix:[F

    int-to-float v3, v0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
