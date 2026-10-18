.class public Lcom/intlgame/video/Square;
.super Ljava/lang/Object;
.source "Square.java"


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static TAG:Ljava/lang/String; = "INTLSquare"

.field static final positionData:[F

.field static final texCoordData:[F


# instance fields
.field color:[F

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mColorHandle:I

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

    .line 48
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intlgame/video/Square;->positionData:[F

    const/16 v0, 0x8

    .line 55
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intlgame/video/Square;->texCoordData:[F

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
    .locals 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "uniform mat4 uSTMatrix;\nattribute vec2 vPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(vPosition, 0, 1);\nvTexCoord = (uSTMatrix * vec4(aTexCoord, 0, 1)).xy;\n}\n"

    iput-object v0, p0, Lcom/intlgame/video/Square;->vertexShaderCode:Ljava/lang/String;

    .line 26
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    iput-object v1, p0, Lcom/intlgame/video/Square;->fragmentShaderCode:Ljava/lang/String;

    const/4 v2, 0x4

    .line 63
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/intlgame/video/Square;->color:[F

    .line 67
    sget-object v3, Lcom/intlgame/video/Square;->positionData:[F

    array-length v4, v3

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

    iput-object v4, p0, Lcom/intlgame/video/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 70
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v3, p0, Lcom/intlgame/video/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    sget-object v3, Lcom/intlgame/video/Square;->texCoordData:[F

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 74
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/intlgame/video/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 76
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v2, p0, Lcom/intlgame/video/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v2, 0x8b31

    .line 79
    invoke-virtual {p0, v2, v0}, Lcom/intlgame/video/Square;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v2, 0x8b30

    .line 82
    invoke-virtual {p0, v2, v1}, Lcom/intlgame/video/Square;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 86
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    .line 87
    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 88
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 90
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    const/4 v2, 0x1

    .line 91
    new-array v3, v2, [I

    .line 92
    iget v5, p0, Lcom/intlgame/video/Square;->mProgram:I

    const v6, 0x8b82

    invoke-static {v5, v6, v3, v4}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 94
    aget v3, v3, v4

    if-eq v3, v2, :cond_0

    .line 95
    sget-object v2, Lcom/intlgame/video/Square;->TAG:Ljava/lang/String;

    const-string v3, "glGetProgramiv is error ===================== "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    const-string/jumbo v3, "vPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/intlgame/video/Square;->mPositionHandle:I

    .line 99
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    const-string v3, "aTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/intlgame/video/Square;->mTexHandle:I

    .line 101
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/intlgame/video/Square;->mSTMatrixHandle:I

    .line 102
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    const-string v3, "sTexture"

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/intlgame/video/Square;->mSTextureHandle:I

    .line 104
    iget v2, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 105
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 106
    iget v0, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 107
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35b5b6
        0x3f65e5e6
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 133
    :goto_0
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v1, Lcom/intlgame/video/Square;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    return-void
.end method

.method public draw([FI)V
    .locals 8

    .line 147
    iget v0, p0, Lcom/intlgame/video/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    const v0, 0x84c0

    .line 149
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 150
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 152
    iget p2, p0, Lcom/intlgame/video/Square;->mSTextureHandle:I

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 153
    iget p2, p0, Lcom/intlgame/video/Square;->mSTMatrixHandle:I

    const/4 v2, 0x1

    invoke-static {p2, v2, v1, p1, v1}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 155
    iget p1, p0, Lcom/intlgame/video/Square;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 156
    iget v2, p0, Lcom/intlgame/video/Square;->mPositionHandle:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/intlgame/video/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 161
    iget p1, p0, Lcom/intlgame/video/Square;->mTexHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 162
    iget v2, p0, Lcom/intlgame/video/Square;->mTexHandle:I

    iget-object v7, p0, Lcom/intlgame/video/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 166
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 167
    iget p1, p0, Lcom/intlgame/video/Square;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 168
    iget p1, p0, Lcom/intlgame/video/Square;->mTexHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 169
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 3

    .line 116
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    .line 118
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 119
    const-string p2, "glShaderSource"

    invoke-static {p2}, Lcom/intlgame/video/Square;->checkGlError(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 121
    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 124
    aget p2, p2, v2

    if-nez p2, :cond_0

    .line 125
    sget-object p2, Lcom/intlgame/video/Square;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compileStatus is error ===================== "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const-string p1, "glCompileShader"

    invoke-static {p1}, Lcom/intlgame/video/Square;->checkGlError(Ljava/lang/String;)V

    return v0
.end method
