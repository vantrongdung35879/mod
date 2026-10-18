.class public Lcom/intlgame/video/INTLVideoMomentPlayerActivity;
.super Landroid/app/Activity;
.source "INTLVideoMomentPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayVideoActivity"


# instance fields
.field private mBtnPlay:Landroid/widget/ImageView;

.field private mControlLayout:Landroid/view/View;

.field private mIsCurrentFinishPlay:Z

.field private mIsCurrentIsPlaying:Z

.field private mIsSeeking:Z

.field private mIvPlay:Landroid/widget/ImageView;

.field private mLoadingLayout:Landroid/view/View;

.field private mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

.field private mPlayLayout:Landroid/view/View;

.field private mSbProgress:Landroid/widget/SeekBar;

.field private mTimeoutTask:Ljava/lang/Runnable;

.field private mTvCurrentPosition:Landroid/widget/TextView;

.field private mTvTotalDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 33
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvCurrentPosition:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvTotalDuration:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mSbProgress:Landroid/widget/SeekBar;

    .line 36
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIvPlay:Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentIsPlaying:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentFinishPlay:Z

    .line 40
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsSeeking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->showLoadingView()V

    return-void
.end method

.method static synthetic access$100(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->hideLoadingView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIvPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTimeoutTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Lcom/gme/video/sdk/IGmeVideoPlayControl;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->updateTotalDuration(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsSeeking:Z

    return p0
.end method

.method static synthetic access$500(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;J)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->getTimeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvCurrentPosition:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mSbProgress:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$802(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentIsPlaying:Z

    return p1
.end method

.method static synthetic access$902(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentFinishPlay:Z

    return p1
.end method

.method private getTimeStr(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 147
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 148
    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    .line 149
    div-long v4, p1, v2

    rem-long/2addr v4, v2

    .line 150
    rem-long/2addr p1, v2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    cmp-long v9, v0, v2

    if-lez v9, :cond_0

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v7

    aput-object v1, p2, v6

    aput-object p1, p2, v8

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    aput-object v1, p2, v7

    aput-object p1, p2, v6

    const-string p1, "%02d:%02d"

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private hideLoadingView()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mLoadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->stopTimeoutTask()V

    return-void
.end method

.method private initGmeVideoSDK()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, p0, v1}, Lcom/gme/video/sdk/IGmeVideoSDK;->createVideoPlayControl(Landroid/content/Context;I)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 66
    new-instance v1, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;

    invoke-direct {v1, p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;-><init>(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoControlCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;)I

    return-void
.end method

.method private initView()V
    .locals 1

    .line 70
    sget v0, Lcom/intlgame/video/R$id;->tv_current:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvCurrentPosition:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/intlgame/video/R$id;->tv_play_total_time:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvTotalDuration:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/intlgame/video/R$id;->sb_progress:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mSbProgress:Landroid/widget/SeekBar;

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_play:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIvPlay:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/intlgame/video/R$id;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mBtnPlay:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/intlgame/video/R$id;->fl_play:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayLayout:Landroid/view/View;

    .line 77
    sget v0, Lcom/intlgame/video/R$id;->fl_loading:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mLoadingLayout:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/intlgame/video/R$id;->lv_play_control:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mControlLayout:Landroid/view/View;

    .line 80
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_play:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/intlgame/video/R$id;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_close:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_back:I

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewWithGmeVideoSDK(Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    sget v1, Lcom/intlgame/video/R$id;->rl_video_container:I

    invoke-virtual {p0, v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    .line 88
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->setVideoURL(Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->play()I

    .line 90
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->showLoadingView()V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIvPlay:Landroid/widget/ImageView;

    sget v1, Lcom/intlgame/video/R$mipmap;->img_bofang:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentIsPlaying:Z

    .line 114
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->pause()I

    return-void
.end method

.method private resume()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentFinishPlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentFinishPlay:Z

    .line 120
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->play()I

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->resume()I

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIvPlay:Landroid/widget/ImageView;

    sget v1, Lcom/intlgame/video/R$mipmap;->img_zanting1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentIsPlaying:Z

    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->startTimeoutTask()V

    return-void
.end method

.method private startTimeoutTask()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTimeoutTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;-><init>(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTimeoutTask:Ljava/lang/Runnable;

    .line 244
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayLayout:Landroid/view/View;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopTimeoutTask()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTimeoutTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateTotalDuration(J)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mTvTotalDuration:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->getTimeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mSbProgress:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_play:I

    if-ne p1, v0, :cond_1

    .line 97
    iget-boolean p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsCurrentIsPlaying:Z

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->pause()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->resume()V

    goto :goto_0

    .line 102
    :cond_1
    sget v0, Lcom/intlgame/video/R$id;->btn_play:I

    if-ne p1, v0, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->resume()V

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_close:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/intlgame/video/R$id;->iv_play_control_back:I

    if-ne p1, v0, :cond_4

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->requestWindowFeature(I)Z

    .line 55
    sget p1, Lcom/intlgame/video/R$layout;->activity_video_player:I

    invoke-virtual {p0, p1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 58
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->initGmeVideoSDK()V

    .line 59
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->initView()V

    .line 60
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->initViewWithGmeVideoSDK(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->stop()I

    .line 265
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    sget v1, Lcom/intlgame/video/R$id;->rl_video_container:I

    invoke-virtual {p0, v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    .line 268
    :cond_0
    const-class v0, Lcom/intlgame/video/INTLVideoManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/video/INTLVideoManager;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->onQuitFullScreen()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 257
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->pause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsSeeking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayVideoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mPlayControl:Lcom/gme/video/sdk/IGmeVideoPlayControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->seek(I)I

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->mIsSeeking:Z

    return-void
.end method
