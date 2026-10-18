.class public Lcom/vasd/pvideoplayer/Square;
.super Ljava/lang/Object;
.source "Square.java"


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final LOG_TAG:Ljava/lang/String; = "PixVideo"

.field static final positionData:[F

.field static final texCoordData:[F


# instance fields
.field private final fragmentShaderCode:Ljava/lang/String;

.field private mPositionHandle:I

.field private mProgram:I

.field private mSTMatrixHandle:I

.field private mSTextureHandle:I

.field private mTexHandle:I

.field private texCoordBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 45
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vasd/pvideoplayer/Square;->positionData:[F

    const/16 v0, 0x8

    .line 52
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vasd/pvideoplayer/Square;->texCoordData:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "uniform mat4 uSTMatrix;\nattribute vec2 vPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(vPosition, 0, 1);\nvTexCoord = (uSTMatrix * vec4(aTexCoord, 0, 1)).xy;\n}\n"

    iput-object v0, p0, Lcom/vasd/pvideoplayer/Square;->vertexShaderCode:Ljava/lang/String;

    .line 24
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    iput-object v1, p0, Lcom/vasd/pvideoplayer/Square;->fragmentShaderCode:Ljava/lang/String;

    .line 61
    sget-object v2, Lcom/vasd/pvideoplayer/Square;->positionData:[F

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 62
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/vasd/pvideoplayer/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 65
    iget-object v2, p0, Lcom/vasd/pvideoplayer/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    sget-object v2, Lcom/vasd/pvideoplayer/Square;->texCoordData:[F

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/vasd/pvideoplayer/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 70
    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v2, p0, Lcom/vasd/pvideoplayer/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v2, 0x8b31

    .line 74
    invoke-virtual {p0, v2, v0}, Lcom/vasd/pvideoplayer/Square;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v2, 0x8b30

    .line 77
    invoke-virtual {p0, v2, v1}, Lcom/vasd/pvideoplayer/Square;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 81
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    .line 82
    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 83
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 86
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    const/4 v0, 0x1

    .line 87
    new-array v1, v0, [I

    .line 88
    iget v2, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 90
    aget v1, v1, v3

    if-eq v1, v0, :cond_0

    .line 92
    const-string v0, "PixVideo"

    const-string v1, "glGetProgramiv is error ===================== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vasd/pvideoplayer/Square;->mPositionHandle:I

    .line 96
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vasd/pvideoplayer/Square;->mTexHandle:I

    .line 97
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vasd/pvideoplayer/Square;->mSTMatrixHandle:I

    .line 98
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vasd/pvideoplayer/Square;->mSTextureHandle:I

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 126
    :goto_0
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PixVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 103
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    return-void
.end method

.method public draw([FI)V
    .locals 7

    .line 135
    iget v0, p0, Lcom/vasd/pvideoplayer/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    const v0, 0x84c0

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 139
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 141
    iget p2, p0, Lcom/vasd/pvideoplayer/Square;->mSTextureHandle:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 142
    iget p2, p0, Lcom/vasd/pvideoplayer/Square;->mSTMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {p2, v1, v0, p1, v0}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 144
    iget p1, p0, Lcom/vasd/pvideoplayer/Square;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 145
    iget v1, p0, Lcom/vasd/pvideoplayer/Square;->mPositionHandle:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vasd/pvideoplayer/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    iget p1, p0, Lcom/vasd/pvideoplayer/Square;->mTexHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 151
    iget v1, p0, Lcom/vasd/pvideoplayer/Square;->mTexHandle:I

    iget-object v6, p0, Lcom/vasd/pvideoplayer/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 155
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    return-void
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 3

    .line 108
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    .line 110
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 111
    const-string p2, "glShaderSource"

    invoke-static {p2}, Lcom/vasd/pvideoplayer/Square;->checkGlError(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 113
    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 114
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 116
    aget p2, p2, v2

    if-nez p2, :cond_0

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "compileStatus is error ===================== "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PixVideo"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    const-string p1, "glCompileShader"

    invoke-static {p1}, Lcom/vasd/pvideoplayer/Square;->checkGlError(Ljava/lang/String;)V

    return v0
.end method
