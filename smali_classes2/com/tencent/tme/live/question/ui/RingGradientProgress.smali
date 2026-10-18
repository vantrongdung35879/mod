.class public Lcom/tencent/tme/live/question/ui/RingGradientProgress;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/os/PowerManager$WakeLock;

.field public d:I

.field public e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->h:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->i:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->j:Ljava/lang/Runnable;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->h:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->i:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->j:Ljava/lang/Runnable;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->h:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$b;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->i:Ljava/lang/Runnable;

    new-instance p1, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress$c;-><init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->j:Ljava/lang/Runnable;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->getDisplayExpire()I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/tencent/tme/live/question/ui/RingGradientProgress;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    return p1
.end method

.method private getApngAnimUrl()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_quesiton_progress_timer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method private getDisplayExpire()I
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x3e7

    if-le v0, v1, :cond_1

    const/16 v0, 0x3e7

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_ring_progress_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tv_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->iv_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->getDisplayExpire()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->c:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public c()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "TME::QuestionVote"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    iget-object v3, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->h:Ljava/lang/Runnable;

    iget v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->k:I

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v7

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->getApngAnimUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v4

    new-instance v5, Lcom/tencent/tme/live/c/c$a;

    const v6, 0x7fffffff

    invoke-direct {v5, v6, v0, v2}, Lcom/tencent/tme/live/c/c$a;-><init>(IZZ)V

    invoke-virtual {v4, v3, v1, v5}, Lcom/tencent/tme/live/c/c;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/tencent/tme/live/c/c$a;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b()V

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/tencent/tme/live/c/a;->a(Landroid/view/View;)Lcom/tencent/tme/live/c/a;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-boolean v1, v0, Lcom/tencent/tme/live/c/a;->i:Z

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/tencent/tme/live/c/a;->stop()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setITimerStateCallback(Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->l:Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;

    return-void
.end method
