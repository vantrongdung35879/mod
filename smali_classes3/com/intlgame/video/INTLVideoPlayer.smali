.class public Lcom/intlgame/video/INTLVideoPlayer;
.super Ljava/lang/Object;
.source "INTLVideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/video/INTLVideoPlayer$State;,
        Lcom/intlgame/video/INTLVideoPlayer$SourceType;,
        Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;
    }
.end annotation


# static fields
.field private static final DEFUALT_HEIGHT:I = 0x2d0

.field private static final DEFUALT_WIDTH:I = 0x500

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final MAX_BACKOFF:D = 1500.0

.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "INTLVideoPlayer"


# instance fields
.field private autoPlay:Z

.field baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

.field private gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

.field private mCurActivity:Landroid/app/Activity;

.field private mCurProgress:J

.field private mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

.field private mFboID:I

.field private volatile mFboTexID:I

.field private final mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mHeight:I

.field private mInGamePlayMode:Z

.field private volatile mInited:Z

.field private mOldFboID:I

.field private mOldFboTexID:I

.field private mOldSquare:Lcom/intlgame/video/Square;

.field private mOldTextureID:I

.field private mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

.field private mPlayerId:I

.field private mPlayingQuality:Ljava/lang/Integer;

.field private mProgressBeforeSwitchingQuality:J

.field private mSTMatirx:[F

.field public mSourceType:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

.field private mSquare:Lcom/intlgame/video/Square;

.field private mState:Lcom/intlgame/video/INTLVideoPlayer$State;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTex:Landroid/graphics/SurfaceTexture;

.field private mTextureID:I

.field private mTotalDuration:J

.field private volatile mUpdateSurface:Z

.field private mVideoContainer:Landroid/view/ViewGroup;

.field private mVideoLogCallback:Lcom/intlgame/video/IINTLVideoPlayerLogCallback;

.field private mVideoPlayCallback:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

.field private final mVideoUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVolume:F

.field private mWidth:I

.field private playLoopback:Z

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    .line 40
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    .line 41
    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 42
    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSourceType:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurProgress:J

    .line 45
    iput-wide v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mProgressBeforeSwitchingQuality:J

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    iput v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 53
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    .line 54
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoContainer:Landroid/view/ViewGroup;

    .line 55
    new-instance v2, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    invoke-direct {v2, p0}, Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;-><init>(Lcom/intlgame/video/INTLVideoPlayer;)V

    iput-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoPlayCallback:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    .line 56
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    .line 57
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoLogCallback:Lcom/intlgame/video/IINTLVideoPlayerLogCallback;

    .line 60
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    const/4 v2, -0x1

    .line 62
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    .line 63
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    .line 64
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    .line 65
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    .line 66
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    .line 70
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mUpdateSurface:Z

    const/16 v3, 0x10

    .line 72
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSTMatirx:[F

    .line 74
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldTextureID:I

    .line 76
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboTexID:I

    .line 77
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboID:I

    .line 78
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldSquare:Lcom/intlgame/video/Square;

    const-wide/16 v2, -0x1

    .line 83
    iput-wide v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTotalDuration:J

    .line 88
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->retryCount:I

    .line 101
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->playLoopback:Z

    .line 105
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->autoPlay:Z

    .line 110
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    .line 127
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    .line 131
    new-instance v0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    invoke-direct {v0, v1}, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;-><init>(I)V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/IINTLVideoPlayerEventCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/intlgame/video/INTLVideoPlayer$State;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/intlgame/video/INTLVideoPlayer;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    return p0
.end method

.method static synthetic access$102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/intlgame/video/INTLVideoPlayer$State;)Lcom/intlgame/video/INTLVideoPlayer$State;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/intlgame/video/INTLVideoPlayer;Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intlgame/video/INTLVideoPlayer;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mProgressBeforeSwitchingQuality:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/intlgame/video/INTLVideoPlayer;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->retryCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/intlgame/video/INTLVideoPlayer;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->retryCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/intlgame/video/INTLVideoPlayer;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->retryCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/intlgame/video/INTLVideoPlayer;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurProgress:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/intlgame/video/INTLVideoPlayer;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    return p0
.end method

.method static synthetic access$600(Lcom/intlgame/video/INTLVideoPlayer;)Lcom/gme/video/sdk/IGmeVideoPlayControl;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intlgame/video/INTLVideoPlayer;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/intlgame/video/INTLVideoPlayer;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/intlgame/video/INTLVideoPlayer;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    return p0
.end method

.method private createFbo()V
    .locals 13

    .line 663
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const/16 v0, 0x500

    .line 664
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    const/16 v0, 0x2d0

    .line 665
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    :cond_1
    const/4 v0, 0x1

    .line 668
    new-array v1, v0, [I

    .line 669
    iget v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 670
    iget v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    aput v2, v1, v3

    .line 671
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 673
    iget v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    aput v2, v1, v3

    .line 674
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 677
    :cond_2
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    .line 678
    aget v2, v1, v3

    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    .line 680
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 681
    aget v0, v1, v3

    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create_fbo ======================= width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFboTexID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , playerID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 685
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 686
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 687
    iget v7, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    iget v8, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

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

    .line 690
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 691
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 692
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 693
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const v0, 0x8ce0

    .line 695
    iget v4, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    invoke-static {v1, v0, v2, v4, v3}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    .line 697
    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 698
    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    return-void
.end method

.method public static getPlayerVersion()Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "1.0.24"

    return-object v0
.end method

.method private isOnMainThread()Z
    .locals 2

    .line 150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createSurface()V
    .locals 4

    .line 637
    const-string v0, "createSurface "

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 639
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 641
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 642
    aget v0, v1, v2

    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    const v1, 0x8d65

    .line 644
    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 645
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 647
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 650
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 652
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 654
    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 655
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    .line 656
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 657
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 658
    new-instance v0, Lcom/intlgame/video/Square;

    invoke-direct {v0}, Lcom/intlgame/video/Square;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSquare:Lcom/intlgame/video/Square;

    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 497
    :try_start_0
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 502
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoPlayer;->stop()I

    .line 504
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    if-nez v0, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoPlayer;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    const-string v0, "deinit unBindView need to be on main thread"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    .line 511
    :cond_2
    const-class v0, Lcom/gme/video/sdk/IGmeVideoPlayControl;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 512
    :try_start_2
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 513
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    const/4 v1, 0x0

    .line 515
    iput-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    .line 516
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    .line 516
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 518
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    throw v0
.end method

.method public getFileDuration()J
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-nez v0, :cond_0

    .line 411
    const-string v0, "plase init first"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->getFileDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayVolume()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    return v0
.end method

.method public getTexture()I
    .locals 1

    .line 703
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    return v0
.end method

.method public getmTotalDuration()J
    .locals 2

    .line 798
    iget-wide v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTotalDuration:J

    return-wide v0
.end method

.method public init(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 162
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    goto :goto_0

    .line 164
    :cond_1
    iput-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    .line 167
    :goto_0
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    .line 169
    iget-boolean p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    if-nez p1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoPlayer;->isOnMainThread()Z

    move-result p1

    if-nez p1, :cond_2

    .line 171
    const-string p1, "init bindView need to be on main thread"

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object p1

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2, v0}, Lcom/gme/video/sdk/IGmeVideoSDK;->createVideoPlayControl(Landroid/content/Context;I)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 177
    iput-object p2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoContainer:Landroid/view/ViewGroup;

    .line 179
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    goto :goto_1

    .line 181
    :cond_3
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/gme/video/sdk/IGmeVideoSDK;->createVideoPlayControl(Landroid/content/Context;I)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 183
    iget-object p2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setSurface(Landroid/view/Surface;)I

    .line 186
    :goto_1
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setUpdatePlayingProgressFrequency(I)I

    .line 187
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget-object p2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoPlayCallback:Lcom/intlgame/video/INTLVideoPlayer$GmeVideoPlayControlCallback;

    invoke-virtual {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoControlCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;)I

    .line 188
    iput-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    return v0
.end method

.method public isUrlValid()Z
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 792
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mUpdateSurface:Z

    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 3

    .line 419
    const-string v0, "INTLVideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoLogCallback:Lcom/intlgame/video/IINTLVideoPlayerLogCallback;

    if-eqz v1, :cond_0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/intlgame/video/IINTLVideoPlayerLogCallback;->onLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()I
    .locals 4

    .line 361
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-nez v0, :cond_0

    .line 362
    const-string v0, "please init first"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x3e

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Preparing:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq v0, v1, :cond_1

    return v2

    .line 370
    :cond_1
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->pause()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3d

    return v0

    .line 376
    :cond_2
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 378
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    if-eqz v0, :cond_3

    .line 379
    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUserPaused:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_3
    return v2
.end method

.method public play()I
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-nez v0, :cond_0

    .line 293
    const-string v0, "please init first"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x3e

    return v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "video url for level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "is empty, so play failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x47

    return v0

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoPlayer;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    const-string v0, "play is not on main thread"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x3f

    return v0

    .line 307
    :cond_2
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoURL(Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->playLoopback:Z

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setLoop(Z)V

    .line 313
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->play()I

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play failed, ret = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x3d

    return v0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVolume(F)V

    .line 321
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Preparing:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 324
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    if-eqz v0, :cond_4

    .line 325
    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePreparing:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v2}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 4

    .line 386
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-nez v0, :cond_0

    .line 387
    const-string v0, "plase init first"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 v0, 0x3e

    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 395
    :cond_1
    const-string v0, "resume"

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->resume()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3d

    return v0

    .line 400
    :cond_2
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 402
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    if-eqz v0, :cond_3

    .line 403
    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    :cond_3
    return v2
.end method

.method public seek(I)I
    .locals 4

    .line 332
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-nez v0, :cond_0

    .line 333
    const-string p1, "please init first"

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 p1, 0x3e

    return p1

    .line 337
    :cond_0
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq v0, v1, :cond_1

    return v2

    .line 341
    :cond_1
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LiveStream:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSourceType:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    if-ne v0, v1, :cond_2

    return v2

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 350
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->seek(I)I

    move-result p1

    .line 351
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v1, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    if-eqz p1, :cond_3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek failed, ret = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 p1, 0x3d

    return p1

    :cond_3
    return v2
.end method

.method public setAutoPlay(Z)I
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setAutoPlay(Z)V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLoopback , player not init, vaule save = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEventCallback(Lcom/intlgame/video/IINTLVideoPlayerEventCallback;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    return-void
.end method

.method public setLogCallback(Lcom/intlgame/video/IINTLVideoPlayerLogCallback;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoLogCallback:Lcom/intlgame/video/IINTLVideoPlayerLogCallback;

    return-void
.end method

.method public setLoopback(Z)I
    .locals 2

    .line 264
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->playLoopback:Z

    .line 265
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setLoop(Z)V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLoopback , player not init, vaule save = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPlayQuality(I)V
    .locals 4

    .line 201
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 202
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no url for video quality"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoPlayer;->isOnMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string p1, "setPlayQuality is not on main thread"

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    sget-object v2, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v1, v2, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onEvent(Lcom/intlgame/video/SPMediaPlayerEvent;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I

    .line 218
    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 220
    iget-wide v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mCurProgress:J

    iput-wide v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mProgressBeforeSwitchingQuality:J

    .line 221
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoURL(Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->play()I

    .line 225
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayingQuality:Ljava/lang/Integer;

    return-void
.end method

.method public setPlayVolume(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iput p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    .line 241
    sget-object p1, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-eq p1, v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVolume:F

    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVolume(F)V

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 236
    :cond_2
    :goto_0
    const-string/jumbo p1, "volume invalid, must between 0.0f ~ 1.0f"

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    const/16 p1, 0x47

    return p1
.end method

.method public setPlayerId(I)V
    .locals 1

    .line 135
    iput p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    .line 136
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    iput p1, v0, Lcom/intlgame/video/model/INTLVideoPlayEventMessage;->playerId:I

    return-void
.end method

.method public setVideoUrl(ILjava/lang/String;)V
    .locals 1

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo p1, "video url invalid"

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mVideoUrls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setmTotalDuration(J)V
    .locals 0

    .line 802
    iput-wide p1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTotalDuration:J

    return-void
.end method

.method public stop()I
    .locals 6

    const-string v0, "release mSurfaceTex succ:"

    .line 427
    iget-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInited:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    sget-object v3, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    .line 432
    :cond_0
    const-string/jumbo v1, "stop"

    invoke-virtual {p0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->stop()I

    move-result v1

    .line 437
    iget-boolean v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mInGamePlayMode:Z

    if-eqz v3, :cond_4

    .line 438
    iput-boolean v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mUpdateSurface:Z

    .line 439
    const-string v3, "defer release SurfaceTexure resources"

    invoke-virtual {p0, v3}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 442
    iget v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldTextureID:I

    .line 443
    iget v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboTexID:I

    .line 444
    iget v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboID:I

    .line 445
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSquare:Lcom/intlgame/video/Square;

    iput-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldSquare:Lcom/intlgame/video/Square;

    .line 447
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurface:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 449
    iput-object v4, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 452
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 453
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_2

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 456
    :cond_2
    iput-object v4, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    :cond_3
    const/4 v0, -0x1

    .line 458
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    .line 459
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboTexID:I

    .line 460
    iput v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    .line 461
    iput-object v4, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSquare:Lcom/intlgame/video/Square;

    .line 462
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    .line 463
    iput v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    .line 465
    :cond_4
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mState:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 467
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mEventCallback:Lcom/intlgame/video/IINTLVideoPlayerEventCallback;

    if-eqz v0, :cond_5

    .line 468
    sget-object v2, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateStopped:Lcom/intlgame/video/SPMediaPlayerState;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->baseEventMsg:Lcom/intlgame/video/model/INTLVideoPlayEventMessage;

    invoke-interface {v0, v2, v3}, Lcom/intlgame/video/IINTLVideoPlayerEventCallback;->onState(Lcom/intlgame/video/SPMediaPlayerState;Lcom/intlgame/video/model/INTLVideoPlayEventMessage;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 474
    throw v0

    :cond_6
    :goto_0
    return v2
.end method

.method public updateTexture()V
    .locals 7

    const-string v0, "playerId: "

    .line 709
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 712
    :try_start_0
    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldTextureID:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboTexID:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboID:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldSquare:Lcom/intlgame/video/Square;

    if-eqz v1, :cond_4

    .line 713
    :cond_0
    const-string v1, "performing deferred cleanup on render thread"

    invoke-virtual {p0, v1}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 714
    new-array v1, v2, [I

    .line 715
    iget v5, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldTextureID:I

    if-eq v5, v3, :cond_1

    .line 716
    aput v5, v1, v4

    .line 717
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 718
    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldTextureID:I

    .line 720
    :cond_1
    iget v5, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboTexID:I

    if-eq v5, v3, :cond_2

    .line 721
    aput v5, v1, v4

    .line 722
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 723
    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboTexID:I

    .line 725
    :cond_2
    iget v5, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboID:I

    if-eq v5, v3, :cond_3

    .line 726
    aput v5, v1, v4

    .line 727
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 728
    iput v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldFboID:I

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldSquare:Lcom/intlgame/video/Square;

    if-eqz v1, :cond_4

    .line 731
    invoke-virtual {v1}, Lcom/intlgame/video/Square;->deleteProgram()V

    const/4 v1, 0x0

    .line 732
    iput-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mOldSquare:Lcom/intlgame/video/Square;

    .line 736
    :cond_4
    iget-boolean v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mUpdateSurface:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_7

    .line 737
    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    if-gez v1, :cond_6

    .line 738
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoPlayer;->createFbo()V

    .line 739
    iget v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    if-lez v1, :cond_6

    .line 740
    new-instance v1, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;

    iget v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    invoke-direct {v1, v3}, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;-><init>(I)V

    .line 741
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    if-eqz v3, :cond_5

    .line 742
    iget-wide v5, v3, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->bitRate:J

    invoke-static {v5, v6}, Lbq/log$$ExternalSyntheticBackport3;->m$1(J)I

    move-result v3

    iput v3, v1, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->bitrate:I

    .line 743
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v3, v3, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->fps:F

    float-to-int v3, v3

    iput v3, v1, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->fps:I

    .line 744
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v3, v3, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->width:I

    iput v3, v1, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->width:I

    .line 745
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v3, v3, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->height:I

    iput v3, v1, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->height:I

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mPlayerId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,onFirstFrameDecoded\uff0cget info: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v0, v0, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v0, v0, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fps :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget v0, v0, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->fps:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bitrate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->gmeVideoInfo:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    iget-wide v5, v0, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->bitRate:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoPlayer;->onLog(Ljava/lang/String;)V

    .line 750
    :cond_5
    const-string/jumbo v0, "{}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :try_start_1
    invoke-virtual {v1}, Lcom/intlgame/video/model/INTLVideoFirstFrameMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 754
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 757
    :goto_0
    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    .line 762
    :cond_6
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 763
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSurfaceTex:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSTMatirx:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 765
    invoke-static {v4}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const v0, 0x8892

    .line 767
    invoke-static {v0, v4}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 769
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES30;->glColorMask(ZZZZ)V

    .line 770
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mFboID:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 771
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 772
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    const/16 v0, 0xb71

    .line 773
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xb90

    .line 774
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xb44

    .line 775
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 776
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 777
    iget v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mWidth:I

    iget v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mHeight:I

    invoke-static {v4, v4, v0, v2}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 779
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSquare:Lcom/intlgame/video/Square;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoPlayer;->mSTMatirx:[F

    iget v3, p0, Lcom/intlgame/video/INTLVideoPlayer;->mTextureID:I

    invoke-virtual {v0, v2, v3}, Lcom/intlgame/video/Square;->draw([FI)V

    const/16 v0, 0xde1

    .line 781
    invoke-static {v0, v4}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 782
    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoPlayer;->mGLResourceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 787
    throw v0
.end method
