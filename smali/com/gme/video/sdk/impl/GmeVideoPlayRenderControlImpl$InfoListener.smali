.class Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;
.super Ljava/lang/Object;
.source "GmeVideoPlayRenderControlImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3

    const/4 p3, 0x3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_4

    const/16 p3, 0x2714

    if-eq p2, p3, :cond_2

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayBufferingEnd()V

    goto/16 :goto_1

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p1, :cond_5

    .line 66
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlayBufferingStart()V

    goto/16 :goto_1

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p2, p2, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p2, :cond_5

    .line 76
    new-instance p2, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;

    invoke-direct {p2}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;-><init>()V

    .line 78
    :try_start_0
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p3

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mWidth:I

    iput p3, p2, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->width:I

    .line 79
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p3

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    iput p3, p2, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->height:I

    .line 80
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p3

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsNum:I

    if-lez p3, :cond_3

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p3

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsDen:I

    if-lez p3, :cond_3

    .line 81
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p3

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget p3, p3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsNum:I

    int-to-float p3, p3

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v1

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsDen:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    iput p3, p2, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->fps:F

    .line 83
    :cond_3
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getBitRate()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->bitRate:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    sget-object p3, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "MEDIA_INFO_VIDEO_DECODED_START error %s "

    invoke-static {p3, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1, p2}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onFirstFrameDecoded(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)V

    goto :goto_1

    .line 60
    :cond_4
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    if-eqz p1, :cond_5

    .line 61
    iget-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl$InfoListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    iget-object p1, p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;->mPlayControlCallback:Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;

    invoke-interface {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;->onPlay()V

    :cond_5
    :goto_1
    return v0
.end method
