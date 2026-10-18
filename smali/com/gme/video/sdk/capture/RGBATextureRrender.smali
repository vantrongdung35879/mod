.class public Lcom/gme/video/sdk/capture/RGBATextureRrender;
.super Ljava/lang/Object;
.source "RGBATextureRrender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RGBATextureRrender"


# instance fields
.field private aPositionHandle:I

.field private aRgbaMap:I

.field private aTextureCoordHandle:I

.field fragmentShaderCode:Ljava/lang/String;

.field private mHeight:I

.field private mProgram:I

.field private mTextureID:[I

.field private mWidth:I

.field private textureVertexBuffer:Ljava/nio/FloatBuffer;

.field final textureVertexData:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexData:[F

.field vertexShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nattribute vec4 av_Position;\nattribute vec2 af_Position;\nvarying vec2 v_texPosition;\nvoid main() {\nv_texPosition = af_Position;\ngl_Position = av_Position;\n}\n"

    iput-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexShaderCode:Ljava/lang/String;

    .line 25
    const-string v0, "precision mediump float;\nvarying vec2 v_texPosition;\nuniform sampler2D colorMap;\nvoid main() {\ngl_FragColor = texture2D(colorMap, v_texPosition);\n}\n"

    iput-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->fragmentShaderCode:Ljava/lang/String;

    const/16 v0, 0x8

    .line 34
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexData:[F

    .line 41
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexData:[F

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mTextureID:[I

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    .line 61
    iput p1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mWidth:I

    .line 62
    iput p2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private bindTexture([BII)V
    .locals 12

    const/16 v0, 0xcf5

    const/4 v1, 0x1

    .line 75
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    .line 76
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 77
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 78
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 79
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 92
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move v6, p2

    move v7, p3

    .line 83
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    sget-object p2, Lcom/gme/video/sdk/capture/RGBATextureRrender;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " Exception E:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private drawFrameRender([B)V
    .locals 3

    const v0, 0x84c1

    .line 190
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mTextureID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mWidth:I

    iget v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mHeight:I

    invoke-direct {p0, p1, v0, v2}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->bindTexture([BII)V

    .line 193
    iget p1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aRgbaMap:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 196
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 199
    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public createBuffers([F)V
    .locals 2

    .line 151
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 152
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexBuffer:Ljava/nio/FloatBuffer;

    .line 154
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 155
    iget-object p1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public deleteTexture()V
    .locals 3

    .line 70
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 71
    iget-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mTextureID:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public getTextureId()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mTextureID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public initTex()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mTextureID:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    return-void
.end method

.method public render([B)V
    .locals 7

    .line 159
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mWidth:I

    iget v1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 164
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    if-nez v0, :cond_0

    .line 165
    sget-object p1, Lcom/gme/video/sdk/capture/RGBATextureRrender;->TAG:Ljava/lang/String;

    const-string v0, "create shaderUtils failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    iget v1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aPositionHandle:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 175
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 177
    iget v1, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    iget-object v6, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 184
    iget v0, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 185
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->drawFrameRender([B)V

    return-void
.end method

.method public surfaceCreated()I
    .locals 6

    .line 105
    sget-object v0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "surfaceCreated"

    invoke-static {v0, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexShaderCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->fragmentShaderCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gme/video/sdk/capture/GlUtilVideo;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexData:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexData:[F

    .line 115
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 116
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexData:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexData:[F

    .line 122
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->textureVertexBuffer:Ljava/nio/FloatBuffer;

    .line 123
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    const-string v4, "av_Position"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aPositionHandle:I

    .line 127
    iget v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    const-string v4, "af_Position"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    .line 129
    iget v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->mProgram:I

    const-string v4, "colorMap"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aRgbaMap:I

    .line 131
    iget v4, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aPositionHandle:I

    if-ltz v4, :cond_2

    iget v5, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    if-ltz v5, :cond_2

    if-gez v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aTextureCoordHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/gme/video/sdk/capture/RGBATextureRrender;->aRgbaMap:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v2, "aPositionHandle: %d, aTextureCoordHandle: %d, aRgbaMap: %d"

    invoke-static {v0, v2, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->initTex()V

    return v1

    :cond_2
    :goto_0
    return v3
.end method
