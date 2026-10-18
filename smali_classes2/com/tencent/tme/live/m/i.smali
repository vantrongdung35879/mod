.class public Lcom/tencent/tme/live/m/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/m/n$a;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/tencent/tme/live/m/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/h;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    iput-object p2, p0, Lcom/tencent/tme/live/m/i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    .line 1
    iget-boolean v1, v0, Lcom/tencent/tme/live/m/h;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/tencent/tme/live/m/h;->l:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x10

    long-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v1, v1, v2

    float-to-long v3, v1

    const-wide/16 v5, 0x21

    .line 2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/tme/live/m/h;->q:J

    long-to-float v1, v3

    mul-float v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/tme/live/m/h;->r:J

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/tencent/tme/live/m/h;->k:Lcom/tencent/tme/live/m/m;

    invoke-interface {v1}, Lcom/tencent/tme/live/m/m;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v1

    double-to-int v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/tme/live/m/h;->y:Ljava/lang/String;

    const-string v3, "getRefreshRate error : "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x10

    :goto_0
    int-to-long v1, v1

    .line 4
    iput-wide v1, v0, Lcom/tencent/tme/live/m/h;->s:J

    .line 5
    iget-object v0, p0, Lcom/tencent/tme/live/m/i;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
