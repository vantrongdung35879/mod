.class public Lcom/gme/video/sdk/gl/EglSurfaceHelper;
.super Ljava/lang/Object;
.source "EglSurfaceHelper.java"


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 114
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered (see log)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroyEgl()V
    .locals 4

    .line 99
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 103
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 104
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 106
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 107
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 108
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public initEgl()V
    .locals 13

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 33
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    .line 36
    new-array v2, v1, [I

    .line 37
    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    .line 42
    new-array v6, v2, [I

    fill-array-data v6, :array_0

    const/4 v10, 0x1

    .line 50
    new-array v2, v10, [Landroid/opengl/EGLConfig;

    .line 51
    new-array v11, v4, [I

    .line 52
    iget-object v5, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3098

    const/16 v4, 0x3038

    .line 57
    filled-new-array {v3, v1, v4}, [I

    move-result-object v1

    .line 62
    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v2, v0

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v5, v6, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 63
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->checkEglError(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_1

    .line 68
    filled-new-array {v4}, [I

    move-result-object v1

    .line 71
    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v2, v4, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 73
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->checkEglError(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public makeCurrent()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public presentationTimeANDROID(J)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglSurfaceHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
