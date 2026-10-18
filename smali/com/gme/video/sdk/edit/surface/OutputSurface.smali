.class public Lcom/gme/video/sdk/edit/surface/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mFrameAvailable:Z

.field private final mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/gme/video/sdk/edit/surface/TextureRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/surface/OutputSurface;->setup()V

    return-void
.end method

.method private setup()V
    .locals 2

    .line 21
    new-instance v0, Lcom/gme/video/sdk/edit/surface/TextureRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gme/video/sdk/edit/surface/TextureRenderer;-><init>(I)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mTextureRender:Lcom/gme/video/sdk/edit/surface/TextureRenderer;

    .line 22
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->surfaceCreated()V

    .line 23
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mTextureRender:Lcom/gme/video/sdk/edit/surface/TextureRenderer;

    invoke-virtual {v1}, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 25
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 45
    iget-boolean v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 49
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameAvailable:Z

    .line 53
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    const-string v0, "before updateTexImage"

    invoke-static {v0}, Lcom/gme/video/sdk/gl/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public drawImage(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mTextureRender:Lcom/gme/video/sdk/edit/surface/TextureRenderer;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/gme/video/sdk/edit/surface/TextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameAvailable:Z

    .line 69
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit p1

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mTextureRender:Lcom/gme/video/sdk/edit/surface/TextureRenderer;

    .line 31
    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 32
    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
