.class public Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/tme/live/h1/b;


# instance fields
.field public a:Lcom/tencent/tme/live/e1/a;

.field public b:Lcom/tencent/tme/live/g1/a;

.field public c:Lcom/tencent/tme/live/f1/a;

.field public final d:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

.field public e:Lcom/tencent/tme/live/h1/a;

.field public f:Landroid/content/Context;

.field public g:Landroid/app/Activity;

.field public h:Lcom/tencent/tme/live/w0/o$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;-><init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;)V

    iput-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->d:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;-><init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;)V

    iput-object p2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->d:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;-><init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;)V

    iput-object p2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->d:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private getTMEVideoPlayControlCallback()Lcom/tencent/tme/player/TMEVideoPlayControlCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->d:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->layout_sample_videoview:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/e1/a;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->g:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->getTMEVideoPlayControlCallback()Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    move-result-object v1

    check-cast p1, Lcom/tencent/tme/live/e1/d;

    .line 1
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p1, Lcom/tencent/tme/live/e1/d;->b:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-static {}, Lcom/tencent/tme/player/TMEPlayerFactory;->getPlayer()Lcom/tencent/tme/player/TMEPlayer;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    iget-object v3, p1, Lcom/tencent/tme/live/e1/d;->b:Landroid/view/ViewGroup;

    invoke-interface {v2, v0, v3}, Lcom/tencent/tme/player/TMEPlayer;->bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    sget-object v2, Lcom/tencent/tme/player/TMEPlayer$SourceType;->LiveStream:Lcom/tencent/tme/player/TMEPlayer$SourceType;

    invoke-interface {v0, v2}, Lcom/tencent/tme/player/TMEPlayer;->setSourceType(Lcom/tencent/tme/player/TMEPlayer$SourceType;)V

    iget-object v0, p1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    new-instance v1, Lcom/tencent/tme/live/e1/c;

    invoke-direct {v1, p1}, Lcom/tencent/tme/live/e1/c;-><init>(Lcom/tencent/tme/live/e1/d;)V

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/tme/player/TMEPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->f:Landroid/content/Context;

    check-cast p1, Lcom/tencent/tme/live/e1/d;

    .line 3
    iput-object v0, p1, Lcom/tencent/tme/live/e1/d;->f:Landroid/content/Context;

    iput-object p0, p1, Lcom/tencent/tme/live/e1/d;->g:Lcom/tencent/tme/live/e1/b;

    return-void
.end method

.method public getStreamInfo()Lcom/tencent/tme/live/w0/o$b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->h:Lcom/tencent/tme/live/w0/o$b;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->g:Landroid/app/Activity;

    return-void
.end method

.method public setPlayerStateCallback(Lcom/tencent/tme/live/h1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->e:Lcom/tencent/tme/live/h1/a;

    return-void
.end method

.method public setStreamOfflineMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/tencent/tme/live/e1/d;

    .line 1
    iput-boolean p1, v2, Lcom/tencent/tme/live/e1/d;->i:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/tencent/tme/live/g1/b$b;->b:Lcom/tencent/tme/live/g1/b$b;

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    .line 3
    iput-object p1, v0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    if-eqz v1, :cond_2

    .line 4
    check-cast v1, Lcom/tencent/tme/live/e1/d;

    .line 5
    iget-object p1, v1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz p1, :cond_2

    const-string p1, "SamplePlayer"

    const-string v0, "stopPlayer is called "

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {p1}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/tencent/tme/live/g1/b$b;->a:Lcom/tencent/tme/live/g1/b$b;

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    .line 7
    iput-object p1, v0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    .line 8
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_stop:I

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoStateCtrlLayerMode(Lcom/tencent/tme/live/g1/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    .line 1
    iput-object p1, v0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    :cond_0
    return-void
.end method

.method public setVideoStream(Lcom/tencent/tme/live/w0/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->h:Lcom/tencent/tme/live/w0/o$b;

    return-void
.end method
