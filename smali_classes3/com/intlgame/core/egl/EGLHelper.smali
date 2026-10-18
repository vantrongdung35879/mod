.class public Lcom/intlgame/core/egl/EGLHelper;
.super Ljava/lang/Object;
.source "EGLHelper.java"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field private alpha:I

.field private blue:I

.field private depth:I

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field private green:I

.field private red:I

.field private renderType:I

.field private shareContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 15
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 16
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 17
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 18
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x8

    .line 20
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->red:I

    .line 21
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->green:I

    .line 22
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->blue:I

    .line 23
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->alpha:I

    const/16 v1, 0x10

    .line 24
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->depth:I

    const/4 v1, 0x4

    .line 25
    iput v1, p0, Lcom/intlgame/core/egl/EGLHelper;->renderType:I

    .line 27
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 33
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    const-string v0, "getEGL failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private makeCurrent()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 44
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    const-string v0, "get gl failed"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 86
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 87
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 88
    iget-object v0, p0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public eglInit(II)Z
    .locals 24

    move-object/from16 v0, p0

    .line 52
    iget-object v1, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    .line 55
    new-array v4, v3, [I

    .line 56
    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v1, 0x1

    .line 58
    new-array v10, v1, [I

    .line 59
    iget v12, v0, Lcom/intlgame/core/egl/EGLHelper;->red:I

    iget v14, v0, Lcom/intlgame/core/egl/EGLHelper;->green:I

    iget v4, v0, Lcom/intlgame/core/egl/EGLHelper;->blue:I

    iget v5, v0, Lcom/intlgame/core/egl/EGLHelper;->alpha:I

    iget v6, v0, Lcom/intlgame/core/egl/EGLHelper;->depth:I

    iget v7, v0, Lcom/intlgame/core/egl/EGLHelper;->renderType:I

    const/16 v23, 0x3038

    const/16 v11, 0x3024

    const/16 v13, 0x3023

    const/16 v15, 0x3022

    const/16 v17, 0x3021

    const/16 v19, 0x3025

    const/16 v21, 0x3040

    move/from16 v16, v4

    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v22, v7

    filled-new-array/range {v11 .. v23}, [I

    move-result-object v11

    .line 66
    iget-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v11

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 67
    aget v8, v10, v2

    if-nez v8, :cond_1

    return v2

    .line 70
    :cond_1
    new-array v12, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 71
    iget-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v6, v11

    move-object v7, v12

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 72
    aget-object v2, v12, v2

    const/16 v4, 0x3057

    const/16 v5, 0x3056

    const/16 v6, 0x3038

    move/from16 v7, p1

    move/from16 v8, p2

    .line 74
    filled-new-array {v4, v7, v5, v8, v6}, [I

    move-result-object v4

    .line 75
    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v5, v7, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3098

    .line 77
    filled-new-array {v4, v3, v6}, [I

    move-result-object v3

    .line 78
    iget-object v4, v0, Lcom/intlgame/core/egl/EGLHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lcom/intlgame/core/egl/EGLHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, v0, Lcom/intlgame/core/egl/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v2, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, v0, Lcom/intlgame/core/egl/EGLHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/egl/EGLHelper;->makeCurrent()V

    return v1
.end method
