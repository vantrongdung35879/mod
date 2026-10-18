.class public Lcom/tencent/tme/live/g1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/g1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/g1/b$b;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public e:Landroid/widget/ProgressBar;

.field public f:Lcom/tencent/tme/live/i1/b;

.field public g:Lcom/tencent/tme/live/h1/a;

.field public h:Lcom/tencent/tme/live/e1/a;

.field public i:Lcom/tencent/tme/live/e1/b;

.field public j:Landroid/content/Context;

.field public k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public l:Ljava/lang/Runnable;

.field public m:Lcom/tencent/tme/live/g1/b$b;

.field public n:Z


# direct methods
.method public static synthetic $r8$lambda$FPnOJqP-t2f3I3iVJX7KQCP__cs(Lcom/tencent/tme/live/g1/b;Lcom/tencent/tme/live/e1/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/g1/b;->a(Lcom/tencent/tme/live/e1/b;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v0, Lcom/tencent/tme/live/g1/b$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/g1/b$a;-><init>(Lcom/tencent/tme/live/g1/b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    sget-object v0, Lcom/tencent/tme/live/g1/b$b;->a:Lcom/tencent/tme/live/g1/b$b;

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/g1/b;->n:Z

    return-void
.end method

.method private a(Lcom/tencent/tme/live/e1/b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/tme/live/e1/b;->getStreamInfo()Lcom/tencent/tme/live/w0/o$b;

    move-result-object p1

    if-nez p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->g:Lcom/tencent/tme/live/h1/a;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/tencent/tme/live/i1/e$a;

    .line 24
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e$a;->a:Lcom/tencent/tme/live/i1/e;

    invoke-virtual {p1}, Lcom/tencent/tme/live/i1/e;->b()V

    :cond_0
    return-void

    .line 25
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/tme/live/g1/b;->n:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    .line 26
    iput-boolean p2, p1, Lcom/tencent/tme/live/i1/b;->b:Z

    iget-object p1, p1, Lcom/tencent/tme/live/i1/b;->a:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    const/4 p2, 0x3

    .line 28
    invoke-static {p1, p2}, Lcom/tencent/tme/live/i1/d;->a(Ljava/lang/String;I)V

    :cond_2
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/tencent/tme/live/g1/b;->n:Z

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    check-cast p1, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e1/d;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/g1/b;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/g1/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/g1/b;->n:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    const-string v0, "VideoStateCtrl"

    const-string v2, "dismissStateLayout is called"

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, -0x8

    if-ne p1, v0, :cond_0

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_no_video_warn:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto :goto_1

    :cond_0
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/tme/live/e1/b;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tme/live/g1/b;->i:Lcom/tencent/tme/live/e1/b;

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->state_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_warn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_pause_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget-object p1, Lcom/tencent/tme/live/g1/b$b;->a:Lcom/tencent/tme/live/g1/b$b;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v0, Lcom/tencent/tme/live/g1/b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/tencent/tme/live/g1/b$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/g1/b;Lcom/tencent/tme/live/e1/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->progressbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b;->e:Landroid/widget/ProgressBar;

    return-void
.end method

.method public a(Lcom/tencent/tme/player/TMEPlayerEvent;Landroid/os/Message;)V
    .locals 2

    const-string v0, "setVideoControlCallback[onEvent]"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoStateCtrl"

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    if-ne p1, p2, :cond_0

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    if-ne p1, p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/tencent/tme/live/g1/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 8

    const-string v0, "setVideoControlCallback[onState]"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoStateCtrl"

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_0

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_pause:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto/16 :goto_2

    :cond_0
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_1

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_stop:I

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Interrupt:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Error:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_3

    :goto_1
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tme/live/g1/b;->a()V

    .line 7
    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->g:Lcom/tencent/tme/live/h1/a;

    if-eqz p1, :cond_8

    check-cast p1, Lcom/tencent/tme/live/i1/e$a;

    .line 8
    iget-object p2, p1, Lcom/tencent/tme/live/i1/e$a;->a:Lcom/tencent/tme/live/i1/e;

    .line 9
    iget-object v0, p2, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    if-eqz v0, :cond_8

    .line 10
    iget-object v0, p2, Lcom/tencent/tme/live/i1/e;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz v0, :cond_8

    .line 11
    iget-object p2, p2, Lcom/tencent/tme/live/i1/e;->a:Landroid/app/Activity;

    if-eqz p2, :cond_8

    .line 12
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lcom/tencent/tme/live/i1/e$a;->a:Lcom/tencent/tme/live/i1/e;

    .line 13
    iget-object v0, p2, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    .line 14
    iget-object p2, p2, Lcom/tencent/tme/live/i1/e;->a:Landroid/app/Activity;

    .line 15
    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Lcom/tencent/tme/live/i1/e$a;->a:Lcom/tencent/tme/live/i1/e;

    .line 16
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 17
    iget-boolean v1, v0, Lcom/tencent/tme/live/i1/d;->g:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tme/live/i1/d;->g:Z

    iput-object p2, v0, Lcom/tencent/tme/live/i1/d;->d:Landroid/content/Context;

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/tencent/tme/live/i1/d;->h:Z

    iput p2, v0, Lcom/tencent/tme/live/i1/d;->e:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/w0/d;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lcom/tencent/tme/live/i1/d;->f:I

    iput-object p1, v0, Lcom/tencent/tme/live/i1/d;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    iget-object p1, v0, Lcom/tencent/tme/live/i1/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_5

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/tme/live/i1/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    :cond_5
    iget-object p1, v0, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v0, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_6
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    iget-object v1, v0, Lcom/tencent/tme/live/i1/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, v0, Lcom/tencent/tme/live/i1/d;->i:Ljava/lang/Runnable;

    iget p1, v0, Lcom/tencent/tme/live/i1/d;->f:I

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 20
    :cond_7
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    .line 21
    iget-boolean p1, p1, Lcom/tencent/tme/live/i1/b;->b:Z

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->g:Lcom/tencent/tme/live/h1/a;

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tme/live/g1/b;->n:Z

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->i:Lcom/tencent/tme/live/e1/b;

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {v1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tme/live/g1/b$b;->a:Lcom/tencent/tme/live/g1/b$b;

    iput-object v0, p0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/g1/b;->m:Lcom/tencent/tme/live/g1/b$b;

    sget-object v2, Lcom/tencent/tme/live/g1/b$b;->a:Lcom/tencent/tme/live/g1/b$b;

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/g1/b;->c()V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tencent/tme/live/g1/b$b;->c:Lcom/tencent/tme/live/g1/b$b;

    if-ne v1, p1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tme/live/g1/b;->a()V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/tencent/tme/live/g1/b$b;->b:Lcom/tencent/tme/live/g1/b$b;

    if-ne v1, p1, :cond_4

    invoke-virtual {p0}, Lcom/tencent/tme/live/g1/b;->a()V

    iget-object p1, p0, Lcom/tencent/tme/live/g1/b;->d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->i:Lcom/tencent/tme/live/e1/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/tencent/tme/live/e1/b;->getStreamInfo()Lcom/tencent/tme/live/w0/o$b;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/w0/o$b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$b;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v0, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_no_video_warn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    const-string v2, "poptvShowPauseImage"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 6
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
