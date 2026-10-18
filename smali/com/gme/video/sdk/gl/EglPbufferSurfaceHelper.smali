.class public Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;
.super Ljava/lang/Object;
.source "EglPbufferSurfaceHelper.java"


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mWidth:I

    .line 24
    iput p2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mHeight:I

    return-void
.end method


# virtual methods
.method protected checkError(Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL error encountered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyEgl()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 111
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 114
    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 115
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 117
    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 118
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 119
    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    :cond_0
    return-void
.end method

.method public initEgl()V
    .locals 8

    .line 32
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 34
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 35
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [I

    .line 40
    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    .line 44
    new-array v4, v1, [I

    fill-array-data v4, :array_0

    const/4 v6, 0x1

    .line 53
    new-array v1, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v2, 0x1

    .line 54
    new-array v7, v2, [I

    .line 55
    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v5, v1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3098

    const/16 v3, 0x3038

    .line 59
    filled-new-array {v2, v0, v3}, [I

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v6, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 64
    const-string v0, "eglCreateContext"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->checkError(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 69
    iget v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mWidth:I

    const/16 v2, 0x3056

    iget v4, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mHeight:I

    const/16 v6, 0x3057

    filled-new-array {v6, v0, v2, v4, v3}, [I

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v1, v1, v5

    invoke-interface {v2, v3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 75
    const-string v0, "eglCreatePbufferSurface"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->checkError(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

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
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public makeCurrent()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "before makeCurrent"

    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->checkError(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapBuffers()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/gme/video/sdk/gl/EglPbufferSurfaceHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
