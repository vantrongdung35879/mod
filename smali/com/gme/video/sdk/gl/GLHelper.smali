.class public Lcom/gme/video/sdk/gl/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GLHelper"

.field private static final debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 17
    invoke-static {v0, p0}, Lcom/gme/video/sdk/gl/GLHelper;->createShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 21
    invoke-static {v1, p1}, Lcom/gme/video/sdk/gl/GLHelper;->createShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 25
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 29
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 31
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 32
    const-string p0, "glLinkProgram"

    invoke-static {p0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 34
    new-array p0, p0, [I

    const p1, 0x8b82

    .line 35
    invoke-static {v1, p1, p0, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 36
    aget p0, p0, v0

    if-nez p0, :cond_2

    .line 37
    sget-object p0, Lcom/gme/video/sdk/gl/GLHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "glLinkProgram error : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private static createShader(ILjava/lang/String;)I
    .locals 3

    .line 46
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 49
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "glCompileShader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 52
    new-array p0, p0, [I

    const p1, 0x8b81

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, p1, p0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 54
    aget p0, p0, v1

    if-nez p0, :cond_0

    .line 55
    sget-object p0, Lcom/gme/video/sdk/gl/GLHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "glCompileShader error : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static gen2DTexture(I)[I
    .locals 1

    const/16 v0, 0xde1

    .line 64
    invoke-static {p0, v0}, Lcom/gme/video/sdk/gl/GLHelper;->genTexture(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static genExtTexture(I)[I
    .locals 1

    const v0, 0x8d65

    .line 68
    invoke-static {p0, v0}, Lcom/gme/video/sdk/gl/GLHelper;->genTexture(II)[I

    move-result-object p0

    return-object p0
.end method

.method private static genTexture(II)[I
    .locals 5

    .line 72
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 75
    aget v3, v0, v2

    .line 77
    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    const-string v3, "glBindTexture mTextureID"

    invoke-static {v3}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    const/16 v3, 0x2802

    const/16 v4, 0x2901

    .line 81
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 82
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 85
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 86
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    const-string v3, "glTexParameter"

    invoke-static {v3}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 89
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static glCheckError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static loadBitmapTexture(Landroid/graphics/Bitmap;Z)I
    .locals 5

    const/4 v0, 0x1

    .line 103
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 104
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 106
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 107
    const-string v0, "glBindTexture mTextureID"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 110
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 111
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    .line 114
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 115
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 116
    const-string v0, "glTexParameter"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 118
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 120
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_0
    aget p0, v1, v2

    return p0
.end method
