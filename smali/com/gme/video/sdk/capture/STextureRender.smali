.class public Lcom/gme/video/sdk/capture/STextureRender;
.super Ljava/lang/Object;
.source "STextureRender.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final TAG:Ljava/lang/String; = "STextureRendering"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"


# instance fields
.field private mHeight:I

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:[I

.field private mWidth:I

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    .line 14
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_COORDS:[F

    const/16 v1, 0x10

    .line 21
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 29
    invoke-static {v0}, Lcom/gme/video/sdk/capture/GlUtilVideo;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 31
    invoke-static {v1}, Lcom/gme/video/sdk/capture/GlUtilVideo;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 57
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/gme/video/sdk/capture/STextureRender;->mMVPMatrix:[F

    .line 58
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mSTMatrix:[F

    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/gme/video/sdk/capture/STextureRender;->mTextureID:[I

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/STextureRender;-><init>()V

    .line 71
    iput p1, p0, Lcom/gme/video/sdk/capture/STextureRender;->mWidth:I

    .line 72
    iput p2, p0, Lcom/gme/video/sdk/capture/STextureRender;->mHeight:I

    return-void
.end method

.method public static initTex()I
    .locals 5

    const/4 v0, 0x1

    .line 112
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v0, 0x84c0

    .line 114
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 115
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 116
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 118
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v4, 0x2600

    .line 120
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 122
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 124
    aget v0, v1, v2

    return v0
.end method


# virtual methods
.method public deleteTexture()V
    .locals 3

    .line 84
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 85
    iget-object v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mTextureID:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public drawFrame()V
    .locals 7

    .line 132
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 135
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    iget v1, p0, Lcom/gme/video/sdk/capture/STextureRender;->maPositionHandle:I

    const/16 v5, 0xc

    sget-object v6, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 145
    iget v1, p0, Lcom/gme/video/sdk/capture/STextureRender;->maTextureHandle:I

    const/16 v5, 0x10

    sget-object v6, Lcom/gme/video/sdk/capture/STextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 148
    iget-object v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 149
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/gme/video/sdk/capture/STextureRender;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 150
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/gme/video/sdk/capture/STextureRender;->mSTMatrix:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 154
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 157
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 158
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 160
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public getTextureId()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mTextureID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public surfaceCreated()V
    .locals 3

    .line 92
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

    invoke-static {v0, v1}, Lcom/gme/video/sdk/capture/GlUtilVideo;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 98
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maPositionHandle:I

    .line 99
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->maTextureHandle:I

    .line 100
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->muMVPMatrixHandle:I

    .line 101
    iget v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->muSTMatrixHandle:I

    .line 104
    iget-object v0, p0, Lcom/gme/video/sdk/capture/STextureRender;->mTextureID:[I

    const/4 v1, 0x0

    invoke-static {}, Lcom/gme/video/sdk/capture/STextureRender;->initTex()I

    move-result v2

    aput v2, v0, v1

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
