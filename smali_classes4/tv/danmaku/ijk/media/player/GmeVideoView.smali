.class public Ltv/danmaku/ijk/media/player/GmeVideoView;
.super Landroid/widget/FrameLayout;
.source "GmeVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GmeVideoView"

.field private static final s_allAspectRatio:[I


# instance fields
.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mIsLoop:Z

.field private mLeftVolume:F

.field private mManifestString:Ljava/lang/String;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

.field private mRightVolume:F

.field mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field private mSettings:Ltv/danmaku/ijk/media/player/Settings;

.field private mShouldAutoPlay:Z

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 784
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    .line 32
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 52
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 56
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanPause:Z

    .line 70
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekBack:Z

    .line 71
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekForward:Z

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareStartTime:J

    .line 80
    iput-wide v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareEndTime:J

    .line 82
    iput-wide v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekStartTime:J

    .line 83
    iput-wide v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekEndTime:J

    .line 85
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    .line 86
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    .line 369
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$2;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$2;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$3;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 436
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$4;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 447
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$5;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 498
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$6;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 531
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$7;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 538
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$8;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 601
    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$9;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    .line 791
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 792
    sget-object v1, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    .line 811
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    .line 812
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 813
    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 90
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    .line 32
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 52
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 56
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanPause:Z

    .line 70
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekBack:Z

    .line 71
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekForward:Z

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareStartTime:J

    .line 80
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareEndTime:J

    .line 82
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekStartTime:J

    .line 83
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekEndTime:J

    .line 85
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    .line 86
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    .line 369
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$2;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$3;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 436
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$4;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 447
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$5;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 498
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$6;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 531
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$7;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$7;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 538
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$8;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$8;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 601
    new-instance v0, Ltv/danmaku/ijk/media/player/GmeVideoView$9;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$9;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    .line 791
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 792
    sget-object v0, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    aget v0, v0, p2

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    .line 812
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 813
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 95
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    .line 32
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 52
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    const/4 p3, 0x0

    .line 55
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 56
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p3, 0x1

    .line 69
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanPause:Z

    .line 70
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekBack:Z

    .line 71
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekForward:Z

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareStartTime:J

    .line 80
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareEndTime:J

    .line 82
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekStartTime:J

    .line 83
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekEndTime:J

    .line 85
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    .line 86
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    .line 369
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$2;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$2;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$3;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$3;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 436
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$4;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$4;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 447
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$5;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$5;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 498
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$6;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$6;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 531
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$7;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$7;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 538
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$8;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$8;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 601
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$9;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$9;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    .line 791
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 792
    sget-object p3, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    aget p3, p3, p2

    iput p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    .line 811
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    .line 812
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 813
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 100
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    .line 32
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 52
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    const/4 p3, 0x0

    .line 55
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    .line 56
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p3, 0x1

    .line 69
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanPause:Z

    .line 70
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekBack:Z

    .line 71
    iput-boolean p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekForward:Z

    const-wide/16 p3, 0x0

    .line 79
    iput-wide p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareStartTime:J

    .line 80
    iput-wide p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareEndTime:J

    .line 82
    iput-wide p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekStartTime:J

    .line 83
    iput-wide p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekEndTime:J

    .line 85
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    .line 86
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    .line 369
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$2;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$2;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$3;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$3;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 436
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$4;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$4;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 447
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$5;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$5;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 498
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$6;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$6;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 531
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$7;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$7;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 538
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$8;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$8;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 601
    new-instance p3, Ltv/danmaku/ijk/media/player/GmeVideoView$9;

    invoke-direct {p3, p0}, Ltv/danmaku/ijk/media/player/GmeVideoView$9;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    .line 791
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 792
    sget-object p3, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    aget p3, p3, p2

    iput p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    .line 811
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    .line 812
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 813
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 106
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/player/GmeVideoView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    return p0
.end method

.method static synthetic access$102(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1102(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1200(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1202(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1302(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1500(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Ltv/danmaku/ijk/media/player/GmeVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1902(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$2002(Ltv/danmaku/ijk/media/player/GmeVideoView;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$202(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2102(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;
    .locals 0

    .line 28
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2300(Ltv/danmaku/ijk/media/player/GmeVideoView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IRenderView;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    return-object p0
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/player/GmeVideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$602(Ltv/danmaku/ijk/media/player/GmeVideoView;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$800(Ltv/danmaku/ijk/media/player/GmeVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$900(Ltv/danmaku/ijk/media/player/GmeVideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method private asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltv/danmaku/ijk/media/player/GmeVideoView$1;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView$1;-><init>(Ltv/danmaku/ijk/media/player/GmeVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 594
    invoke-interface {p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    .line 598
    :cond_1
    invoke-interface {p2, p1}, Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method private buildLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 948
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const-string p1, "und"

    :cond_0
    return-object p1
.end method

.method private buildResolution(IIII)Ljava/lang/String;
    .locals 1

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    const-string p1, " x "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-gt p3, p1, :cond_0

    if-le p4, p1, :cond_1

    .line 920
    :cond_0
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildTimeMilli(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x3e8

    .line 931
    div-long v0, p1, v0

    const-wide/16 v2, 0xe10

    .line 932
    div-long v4, v0, v2

    .line 933
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    .line 934
    rem-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-gtz v8, :cond_0

    .line 936
    const-string p1, "--:--"

    return-object p1

    :cond_0
    const-wide/16 p1, 0x64

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v4, p1

    if-ltz v12, :cond_1

    .line 939
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p2, v1, v11

    aput-object v2, v1, v10

    aput-object v0, v1, v9

    const-string p2, "%d:%02d:%02d"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    .line 941
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p2, v1, v11

    aput-object v2, v1, v10

    aput-object v0, v1, v9

    const-string p2, "%02d:%02d:%02d"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 943
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v11

    aput-object v0, v1, v10

    const-string p2, "%02d:%02d"

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initRenders()V
    .locals 3

    .line 816
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 818
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Settings;->getEnableSurfaceView()Z

    move-result v0

    const/4 v1, 0x1

    .line 819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Settings;->getEnableTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Settings;->getEnableNoView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 828
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setRender(I)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    .line 116
    new-instance v0, Ltv/danmaku/ijk/media/player/Settings;

    invoke-direct {v0, p1}, Ltv/danmaku/ijk/media/player/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    .line 118
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->initRenders()V

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoWidth:I

    .line 121
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setFocusable(Z)V

    .line 125
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setFocusableInTouchMode(Z)V

    .line 126
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->requestFocus()Z

    .line 128
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 129
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    .line 746
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openVideo()V
    .locals 9

    const-string v0, "Unable to open content: "

    .line 312
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->release(Z)V

    .line 320
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 321
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 324
    :try_start_0
    invoke-virtual {p0, v2}, Ltv/danmaku/ijk/media/player/GmeVideoView;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 327
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 328
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 329
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 330
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 331
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 332
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 333
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 334
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentBufferPercentage:I

    .line 335
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 336
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    :cond_1
    new-instance v2, Ltv/danmaku/ijk/media/player/FileMediaDataSource;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ltv/danmaku/ijk/media/player/FileMediaDataSource;-><init>(Ljava/io/File;)V

    .line 338
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v6, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 342
    :goto_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v2, v6}, Ltv/danmaku/ijk/media/player/GmeVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;)V

    .line 343
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 344
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget v4, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    iget v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    invoke-interface {v2, v4, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 345
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mPrepareStartTime:J

    .line 347
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 353
    iput v5, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 366
    throw v0

    :catch_0
    move-exception v2

    .line 360
    sget-object v4, Ltv/danmaku/ijk/media/player/GmeVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iput v3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 362
    iput v3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    .line 363
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_1

    :catch_1
    move-exception v2

    .line 355
    sget-object v4, Ltv/danmaku/ijk/media/player/GmeVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    iput v3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 357
    iput v3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    .line 358
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    .line 234
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekWhenPrepared:I

    .line 236
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->openVideo()V

    .line 237
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->requestLayout()V

    .line 238
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->invalidate()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 763
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    .line 856
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_7

    .line 857
    new-instance p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 858
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 860
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mManifestString:Ljava/lang/String;

    const-wide/16 v2, 0x1

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    .line 861
    const-string v1, "is-manifest"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 862
    const-string v1, "manifest_string"

    iget-object v5, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mManifestString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingMediaCodec()Z

    move-result v1

    const-string v5, "mediacodec"

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3

    .line 865
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 866
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v1

    const-string v5, "mediacodec-auto-rotate"

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 871
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v1

    const-string v5, "mediacodec-handle-resolution-change"

    if-eqz v1, :cond_2

    .line 872
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 874
    :cond_2
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 877
    :cond_3
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 880
    :goto_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getUsingOpenSLES()Z

    move-result v1

    const-string v5, "opensles"

    if-eqz v1, :cond_4

    .line 881
    invoke-virtual {p1, v4, v5, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 883
    :cond_4
    invoke-virtual {p1, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 886
    :goto_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "overlay-format"

    if-eqz v5, :cond_5

    const-wide/32 v9, 0x41424752

    .line 888
    invoke-virtual {p1, v4, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_3

    .line 890
    :cond_5
    invoke-virtual {p1, v4, v8, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 892
    :goto_3
    const-string v1, "framedrop"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 893
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    if-eqz v1, :cond_6

    move-wide v8, v2

    goto :goto_4

    :cond_6
    move-wide v8, v6

    :goto_4
    const-string v1, "start-on-prepared"

    invoke-virtual {p1, v4, v1, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 895
    const-string v1, "enable-accurate-seek"

    invoke-virtual {p1, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 897
    const-string v1, "http-detect-range-support"

    invoke-virtual {p1, v0, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 899
    const-string v0, "skip_loop_filter"

    const-wide/16 v1, 0x30

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    .line 845
    :cond_8
    new-instance p1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_5

    .line 850
    :cond_9
    new-instance p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 906
    :goto_5
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSettings:Ltv/danmaku/ijk/media/player/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 907
    new-instance v0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v0, p1}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    move-object p1, v0

    :cond_a
    return-object p1
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 739
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 740
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 715
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 706
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLeftVolume()F
    .locals 1

    .line 277
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getLeftVolume()F

    move-result v0

    return v0

    .line 280
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    return v0
.end method

.method public getRightVolume()F
    .locals 1

    .line 284
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getRightVolume()F

    move-result v0

    return v0

    .line 287
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    return v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 954
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 957
    :cond_0
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public isLoop()Z
    .locals 1

    .line 299
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isLooping()Z

    move-result v0

    return v0

    .line 303
    :cond_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 734
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 687
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 690
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 693
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 662
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 663
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 664
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 667
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 669
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    .line 671
    :cond_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 672
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 654
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 655
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 701
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 723
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekStartTime:J

    .line 725
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 p1, 0x0

    .line 726
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 728
    :cond_0
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mShouldAutoPlay:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 291
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mIsLoop:Z

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 563
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 585
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 553
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setRender(I)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 191
    sget-object v1, Ltv/danmaku/ijk/media/player/GmeVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "invalid render %d\n"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Ltv/danmaku/ijk/media/player/TextureRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/danmaku/ijk/media/player/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/TextureRenderView;->getSurfaceHolder()Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 178
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ltv/danmaku/ijk/media/player/TextureRenderView;->setVideoSize(II)V

    .line 179
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ltv/danmaku/ijk/media/player/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 180
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/TextureRenderView;->setAspectRatio(I)V

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setRenderView(Ltv/danmaku/ijk/media/player/IRenderView;)V

    goto :goto_0

    .line 186
    :cond_2
    new-instance p1, Ltv/danmaku/ijk/media/player/SurfaceRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/danmaku/ijk/media/player/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setRenderView(Ltv/danmaku/ijk/media/player/IRenderView;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setRenderView(Ltv/danmaku/ijk/media/player/IRenderView;)V

    :goto_0
    return-void
.end method

.method public setRenderView(Ltv/danmaku/ijk/media/player/IRenderView;)V
    .locals 4

    .line 133
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 138
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 139
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IRenderView;->removeRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V

    .line 140
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    .line 141
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 148
    :cond_2
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    .line 149
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IRenderView;->setAspectRatio(I)V

    .line 150
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoHeight:I

    if-lez v1, :cond_3

    .line 151
    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSize(II)V

    .line 153
    :cond_3
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoSarDen:I

    if-lez v1, :cond_4

    .line 154
    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 157
    :cond_4
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IRenderView;->getView()Landroid/view/View;

    move-result-object p1

    .line 158
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->addView(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mSHCallback:Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IRenderView;->addRenderCallback(Ltv/danmaku/ijk/media/player/IRenderView$IRenderCallback;)V

    .line 166
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mVideoRotationDegree:I

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IRenderView;->setVideoRotation(I)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    .line 202
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "http"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_0
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mManifestString:Ljava/lang/String;

    .line 207
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setVideoURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 268
    iput p1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mLeftVolume:F

    .line 269
    iput p2, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRightVolume:F

    .line 271
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 678
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 680
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 682
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .line 255
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 257
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->asyncRelease(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 260
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentState:I

    .line 261
    iput v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mTargetState:I

    .line 262
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 263
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 697
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->release(Z)V

    return-void
.end method

.method public toggleAspectRatio()I
    .locals 3

    .line 795
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 796
    sget-object v1, Ltv/danmaku/ijk/media/player/GmeVideoView;->s_allAspectRatio:[I

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatioIndex:I

    .line 798
    aget v0, v1, v0

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    .line 799
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mRenderView:Ltv/danmaku/ijk/media/player/IRenderView;

    if-eqz v1, :cond_0

    .line 800
    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IRenderView;->setAspectRatio(I)V

    .line 801
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .line 832
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 833
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRenderIndex:I

    .line 835
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    .line 836
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/GmeVideoView;->setRender(I)V

    .line 837
    iget v0, p0, Ltv/danmaku/ijk/media/player/GmeVideoView;->mCurrentRender:I

    return v0
.end method
