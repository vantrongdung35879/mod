.class public Lcom/vasd/pvideoplayer/MediaTexture;
.super Ljava/lang/Object;
.source "MediaTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final DEFUALT_HEIGHT:I = 0x2d0

.field private static final DEFUALT_WIDTH:I = 0x500

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final LOG_TAG:Ljava/lang/String; = "PixVideo"

.field private static square:Lcom/vasd/pvideoplayer/Square;


# instance fields
.field public bUpdateSurface:Z

.field private fSTMatirx:[F

.field private iFboId:I

.field private iFboTexId:I

.field private iHeight:I

.field private iTextureId:I

.field private iWidth:I

.field private surface:Landroid/view/Surface;

.field private surfaceTex:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    .line 27
    iput-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    .line 29
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    .line 30
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    const/16 v0, 0x500

    .line 31
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    const/16 v0, 0x2d0

    .line 32
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->bUpdateSurface:Z

    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->fSTMatirx:[F

    return-void
.end method

.method private createFBO()V
    .locals 13

    .line 91
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const/16 v0, 0x500

    .line 93
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    const/16 v0, 0x2d0

    .line 94
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createFBO ======================= width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PixVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 99
    new-array v1, v0, [I

    .line 100
    iget v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 102
    iget v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    aput v2, v1, v3

    .line 103
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 105
    iget v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    aput v2, v1, v3

    .line 106
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 110
    :cond_2
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    .line 111
    aget v2, v1, v3

    iput v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    .line 113
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 114
    aget v0, v1, v3

    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    .line 116
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 117
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 118
    iget v7, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    iget v8, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1907

    const/4 v9, 0x0

    const/16 v10, 0x1907

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 120
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 121
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 122
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 123
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const v0, 0x8ce0

    .line 125
    iget v4, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    invoke-static {v1, v0, v2, v4, v3}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    .line 126
    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 127
    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public CreateSurface()Landroid/view/Surface;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 56
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 58
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 59
    aget v0, v1, v2

    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    const v1, 0x8d65

    .line 62
    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 63
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 65
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 68
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 70
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 73
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    .line 74
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 75
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    iget v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 76
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    .line 80
    :cond_0
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTexture;->square:Lcom/vasd/pvideoplayer/Square;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/vasd/pvideoplayer/Square;

    invoke-direct {v0}, Lcom/vasd/pvideoplayer/Square;-><init>()V

    sput-object v0, Lcom/vasd/pvideoplayer/MediaTexture;->square:Lcom/vasd/pvideoplayer/Square;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public DestroySurface()V
    .locals 5

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->bUpdateSurface:Z

    .line 192
    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 194
    new-array v4, v3, [I

    .line 196
    aput v1, v4, v0

    .line 197
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 198
    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    aput v1, v4, v0

    .line 199
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 201
    iput v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    .line 202
    iput v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 208
    iget v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 209
    invoke-static {v3, v1, v0}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 211
    iput v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    const/4 v1, 0x0

    .line 212
    iput-object v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    .line 213
    iput-object v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surface:Landroid/view/Surface;

    .line 216
    :cond_1
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    .line 217
    iput v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    return-void
.end method

.method public UpdateTexture()I
    .locals 5

    .line 137
    iget-boolean v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->bUpdateSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 139
    iput-boolean v1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->bUpdateSurface:Z

    .line 141
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 142
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v0, :cond_0

    .line 144
    const-string v0, "PixVideo"

    const-string v2, "UpdateTexture failed, CurrentContext is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 148
    :cond_0
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    if-gez v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/vasd/pvideoplayer/MediaTexture;->createFBO()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 156
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->fSTMatirx:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 158
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const v0, 0x8892

    .line 159
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v0, 0x1

    .line 161
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES30;->glColorMask(ZZZZ)V

    .line 162
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboId:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 163
    invoke-static {v3, v3, v3, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 164
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    const/16 v0, 0xb71

    .line 165
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xb90

    .line 166
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xb44

    .line 167
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 168
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 169
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    iget v3, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 171
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTexture;->square:Lcom/vasd/pvideoplayer/Square;

    iget-object v3, p0, Lcom/vasd/pvideoplayer/MediaTexture;->fSTMatirx:[F

    iget v4, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iTextureId:I

    invoke-virtual {v0, v3, v4}, Lcom/vasd/pvideoplayer/Square;->draw([FI)V

    const/16 v0, 0xde1

    .line 173
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 174
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 177
    iget v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iFboTexId:I

    return v0

    :cond_2
    return v1
.end method

.method public UpdateTextureSize(II)V
    .locals 1

    .line 41
    iput p1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iWidth:I

    .line 42
    iput p2, p0, Lcom/vasd/pvideoplayer/MediaTexture;->iHeight:I

    .line 44
    iget-object v0, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/vasd/pvideoplayer/MediaTexture;->bUpdateSurface:Z

    return-void
.end method
