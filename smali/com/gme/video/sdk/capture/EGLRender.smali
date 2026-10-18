.class public Lcom/gme/video/sdk/capture/EGLRender;
.super Ljava/lang/Object;
.source "EGLRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EGLRender"

.field private static final VERBOSE:Z


# instance fields
.field private callBack:Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;

.field private mCurrentTime:J

.field private mDecodeSurface:Landroid/view/Surface;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLContextEncoder:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

.field private mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

.field private mEGLSavedContext:Landroid/opengl/EGLContext;

.field private mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

.field private mEnableFeedVideo:Z

.field private mFps:I

.field private mFrameAvailable:Z

.field private mHeight:I

.field private mPreTime:J

.field private mRGBATextureRrender:Lcom/gme/video/sdk/capture/RGBATextureRrender;

.field private mStart:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/gme/video/sdk/capture/STextureRender;

.field private mWidth:I

.field private video_interval:F


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 24
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 25
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 26
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 29
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 30
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 31
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 32
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mFrameAvailable:Z

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mPreTime:J

    .line 45
    iput-wide v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mCurrentTime:J

    .line 84
    iput-boolean p4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEnableFeedVideo:Z

    .line 85
    iput p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    .line 86
    iput p2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    .line 87
    invoke-direct {p0, p3}, Lcom/gme/video/sdk/capture/EGLRender;->initFPs(I)V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)Z
    .locals 3

    .line 261
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEglError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "EGLRender"

    invoke-static {v2, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private computePresentationTimeNsec(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    .line 302
    iget p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mFps:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private eglSetup(Landroid/view/Surface;)Z
    .locals 14

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 131
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const-string v3, "EGLRender"

    if-ne v1, v2, :cond_0

    .line 132
    const-string/jumbo p1, "unable to get EGL10 display"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 136
    new-array v2, v1, [I

    .line 137
    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x1

    invoke-static {v4, v2, v0, v2, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    const-string/jumbo p1, "unable to initialize EGL10"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/16 v2, 0xf

    .line 143
    new-array v7, v2, [I

    fill-array-data v7, :array_0

    .line 154
    new-array v12, v5, [I

    const/4 v11, 0x1

    .line 155
    new-array v2, v11, [Landroid/opengl/EGLConfig;

    .line 156
    iget-object v6, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    const-string p1, "eglChooseConfig error"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    const/16 v4, 0x3098

    const/16 v6, 0x3038

    .line 163
    filled-new-array {v4, v1, v6}, [I

    move-result-object v1

    .line 168
    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v2, v0

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v7, v8, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 170
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Lcom/gme/video/sdk/capture/EGLRender;->checkEglError(Ljava/lang/String;)Z

    .line 171
    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v4, :cond_3

    .line 172
    const-string p1, "null context2"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 176
    :cond_3
    filled-new-array {v6}, [I

    move-result-object v1

    .line 179
    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v2, v0

    invoke-static {v4, v2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 181
    const-string p1, "eglCreateWindowSurface"

    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/EGLRender;->checkEglError(Ljava/lang/String;)Z

    .line 183
    iget-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v1, :cond_4

    .line 184
    const-string/jumbo p1, "surface was null"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    return v5

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
        0x3025
        0x8
        0x3026
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private initFPs(I)V
    .locals 6

    .line 120
    iput p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mFps:I

    const/16 v0, 0x3e8

    .line 121
    div-int/2addr v0, p1

    int-to-float v1, v0

    int-to-double v2, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double v2, v2, v4

    double-to-float v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->video_interval:F

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initFPs fps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "video_interval: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->video_interval:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EGLRender"

    invoke-static {v1, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private releaseEgl()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 229
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 230
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 231
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    return-void
.end method

.method private restoreEglEnvironment()V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const-string v3, "EGLRender"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    iget-object v5, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "restoreEglEnvironment eglMakeCurrent: error"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string v0, "eglMakeCurrent unbind: error"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 78
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    .line 79
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    .line 80
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method private saveCurrentEglEnvironment()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    .line 60
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedDisplay:Landroid/opengl/EGLDisplay;

    const/16 v0, 0x3059

    .line 61
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveDrawSurface:Landroid/opengl/EGLSurface;

    const/16 v0, 0x305a

    .line 62
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSaveReadSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private setup()V
    .locals 3

    .line 238
    iget-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEnableFeedVideo:Z

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/gme/video/sdk/capture/RGBATextureRrender;

    iget v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    iget v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/gme/video/sdk/capture/RGBATextureRrender;-><init>(II)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mRGBATextureRrender:Lcom/gme/video/sdk/capture/RGBATextureRrender;

    .line 240
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->surfaceCreated()I

    .line 242
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mRGBATextureRrender:Lcom/gme/video/sdk/capture/RGBATextureRrender;

    invoke-virtual {v1}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 243
    iget v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    iget v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/capture/STextureRender;

    iget v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    iget v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/gme/video/sdk/capture/STextureRender;-><init>(II)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mTextureRender:Lcom/gme/video/sdk/capture/STextureRender;

    .line 246
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/STextureRender;->surfaceCreated()V

    .line 248
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mTextureRender:Lcom/gme/video/sdk/capture/STextureRender;

    invoke-virtual {v1}, Lcom/gme/video/sdk/capture/STextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 249
    iget v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    iget v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 250
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 251
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mDecodeSurface:Landroid/view/Surface;

    :goto_0
    return-void
.end method


# virtual methods
.method public drawImage()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mTextureRender:Lcom/gme/video/sdk/capture/STextureRender;

    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/STextureRender;->drawFrame()V

    return-void
.end method

.method public eglUninstall()V
    .locals 3

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/capture/EGLRender;->makeCurrent(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EGLRender"

    const-string v2, "makeCurrent error"

    invoke-static {v1, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEnableFeedVideo:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mRGBATextureRrender:Lcom/gme/video/sdk/capture/RGBATextureRrender;

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->deleteTexture()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mTextureRender:Lcom/gme/video/sdk/capture/STextureRender;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/STextureRender;->deleteTexture()V

    .line 207
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->releaseEgl()V

    .line 209
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mDecodeSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    return-void
.end method

.method public getDecodeSurface()Landroid/view/Surface;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mDecodeSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public initOpengl(Landroid/view/Surface;)Z
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->saveCurrentEglEnvironment()V

    .line 94
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/EGLRender;->eglSetup(Landroid/view/Surface;)Z

    move-result p1

    const-string v0, "EGLRender"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 95
    const-string p1, "eglSetup error"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/capture/EGLRender;->makeCurrent(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    const-string p1, "makeCurrent error"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->releaseEgl()V

    .line 109
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V

    return v1

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->setup()V

    .line 115
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V

    return v2
.end method

.method public makeCurrent(I)Z
    .locals 5

    .line 270
    const-string v0, "eglMakeCurrent failed"

    const-string v1, "EGLRender"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 272
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-static {p1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 277
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 307
    iget-boolean p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/EGLRender;->startDrawSurface()V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->callBack:Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 0

    return-void
.end method

.method public declared-synchronized startDrawRgba([BJ)I
    .locals 5

    const-string/jumbo p2, "startDrawRgba FAIL videoData len"

    const-string/jumbo p3, "unitySatrt: "

    monitor-enter p0

    const/4 v0, 0x0

    .line 345
    :try_start_0
    array-length v1, p1

    iget v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    iget v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 346
    const-string v1, "EGLRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; mwidth: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mWidth:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; mHeight: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mHeight:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    monitor-exit p0

    return v3

    .line 349
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->saveCurrentEglEnvironment()V

    const/4 p2, 0x1

    .line 350
    invoke-virtual {p0, p2}, Lcom/gme/video/sdk/capture/EGLRender;->makeCurrent(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 351
    const-string p1, "EGLRender"

    const-string p2, "makeCurrent FAIL"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    monitor-exit p0

    return v3

    .line 355
    :cond_1
    :try_start_4
    iget-object p2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 356
    iget-boolean p2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    if-nez p2, :cond_2

    .line 357
    const-string p1, "EGLRender"

    const-string p2, "end....... "

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    :try_start_5
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    monitor-exit p0

    return v3

    .line 363
    :cond_2
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mCurrentTime:J

    .line 364
    iget-wide v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->mPreTime:J

    sub-long/2addr v1, v3

    long-to-float p2, v1

    iget v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->video_interval:F

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_5

    .line 366
    iget-object p2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mRGBATextureRrender:Lcom/gme/video/sdk/capture/RGBATextureRrender;

    if-eqz p2, :cond_3

    .line 367
    invoke-virtual {p2, p1}, Lcom/gme/video/sdk/capture/RGBATextureRrender;->render([B)V

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->callBack:Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    if-eqz p2, :cond_4

    .line 370
    invoke-interface {p1}, Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;->onUpdate()V

    .line 373
    :cond_4
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/EGLRender;->swapBuffers()Z

    .line 374
    iget-wide p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mCurrentTime:J

    iput-wide p1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mPreTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    :cond_5
    :goto_0
    :try_start_7
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 377
    :try_start_8
    const-string p2, "EGLRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 382
    :goto_1
    monitor-exit p0

    return v0

    .line 379
    :goto_2
    :try_start_9
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V

    .line 380
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public declared-synchronized startDrawSurface()V
    .locals 6

    const-string/jumbo v0, "start: "

    monitor-enter p0

    const/4 v1, 0x0

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->saveCurrentEglEnvironment()V

    const/4 v2, 0x1

    .line 315
    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/capture/EGLRender;->makeCurrent(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "EGLRender"

    const-string v3, "makeCurrent error"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :try_start_1
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 320
    iget-boolean v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    if-nez v2, :cond_1

    .line 321
    const-string v2, "EGLRender"

    const-string v3, "end....... "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :try_start_3
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    monitor-exit p0

    return-void

    .line 325
    :cond_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mCurrentTime:J

    .line 326
    iget-wide v4, p0, Lcom/gme/video/sdk/capture/EGLRender;->mPreTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->video_interval:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/EGLRender;->drawImage()V

    .line 329
    iget-object v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->callBack:Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    if-eqz v3, :cond_2

    .line 330
    invoke-interface {v2}, Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;->onUpdate()V

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/EGLRender;->swapBuffers()Z

    .line 334
    iget-wide v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mCurrentTime:J

    iput-wide v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mPreTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 339
    :cond_3
    :goto_0
    :try_start_5
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 337
    :try_start_6
    const-string v3, "EGLRender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 341
    :goto_1
    monitor-exit p0

    return-void

    .line 339
    :goto_2
    :try_start_7
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V

    .line 340
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public startRender()V
    .locals 1

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    return-void
.end method

.method public declared-synchronized stopRender()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 389
    :try_start_0
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mStart:Z

    .line 390
    const-string v1, "EGLRender"

    const-string/jumbo v2, "stopRender"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->saveCurrentEglEnvironment()V

    .line 392
    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSavedContext:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 393
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/EGLRender;->eglUninstall()V

    if-nez v1, :cond_0

    .line 396
    const-string v1, "EGLRender"

    const-string v2, "restoreEglEnvironment"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/EGLRender;->restoreEglEnvironment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public swapBuffers()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 292
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lcom/gme/video/sdk/capture/EGLRender;->checkEglError(Ljava/lang/String;)Z

    return v0
.end method
