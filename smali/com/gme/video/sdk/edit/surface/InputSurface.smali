.class public Lcom/gme/video/sdk/edit/surface/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# instance fields
.field private final mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/surface/InputSurface;->mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    .line 20
    invoke-virtual {v0}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->initEgl()V

    return-void
.end method


# virtual methods
.method public makeCurrent()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/InputSurface;->mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    invoke-virtual {v0}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->makeCurrent()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/InputSurface;->mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    invoke-virtual {v0}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->destroyEgl()V

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/InputSurface;->mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->presentationTimeANDROID(J)V

    return-void
.end method

.method public swapBuffers()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/gme/video/sdk/edit/surface/InputSurface;->mEglSurfaceHelper:Lcom/gme/video/sdk/gl/EglSurfaceHelper;

    invoke-virtual {v0}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->swapBuffers()V

    return-void
.end method
