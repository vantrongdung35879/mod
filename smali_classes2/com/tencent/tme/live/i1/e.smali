.class public Lcom/tencent/tme/live/i1/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/tencent/tme/live/h1/b;

.field public c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

.field public d:Lcom/tencent/tme/live/j1/a;

.field public e:Lcom/tencent/tme/live/i1/d;

.field public f:Lcom/tencent/tme/live/h1/a;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/i1/e;->d:Lcom/tencent/tme/live/j1/a;

    new-instance v0, Lcom/tencent/tme/live/i1/e$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/e$a;-><init>(Lcom/tencent/tme/live/i1/e;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i1/e;->f:Lcom/tencent/tme/live/h1/a;

    new-instance v0, Lcom/tencent/tme/live/i1/e$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/e$c;-><init>(Lcom/tencent/tme/live/i1/e;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/tme/live/i1/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    iput-object p3, p0, Lcom/tencent/tme/live/i1/e;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    new-instance p1, Lcom/tencent/tme/live/i1/d;

    invoke-direct {p1}, Lcom/tencent/tme/live/i1/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/i1/e;Lcom/tencent/tme/live/w0/o$b;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p1, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/e/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/i1/e;->d:Lcom/tencent/tme/live/j1/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/tme/live/i1/e;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/tencent/tme/live/i1/e$b;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/i1/e$b;-><init>(Lcom/tencent/tme/live/i1/e;)V

    check-cast v0, Lcom/tencent/tme/live/j1/c;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/j1/c;->a(Lcom/tencent/tme/live/framework/model/PopTVCfgBean;Lcom/tencent/tme/live/v0/h;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "startLoadVideo popTVVideoRepository is null"

    const/4 v1, 0x0

    .line 8
    const-string v2, "PopTvPalyerManager"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/i1/e;->g:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
