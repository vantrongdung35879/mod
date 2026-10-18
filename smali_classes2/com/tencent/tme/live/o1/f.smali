.class public Lcom/tencent/tme/live/o1/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tencent/tme/live/o1/b;

.field public volatile b:Z

.field public c:Landroid/os/Handler;

.field public d:I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/o1/f;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/o1/f;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tencent/tme/live/o1/f;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/tme/live/o1/f;->a:Lcom/tencent/tme/live/o1/b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/tme/live/o1/f;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o1/f;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/o1/f;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/tme/live/o1/f;->d:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/o1/f;->a()V

    iget-boolean p1, p0, Lcom/tencent/tme/live/o1/f;->b:Z

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->y:Z

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance p1, Lcom/tencent/tme/live/o1/e;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/o1/e;-><init>(Lcom/tencent/tme/live/o1/f;)V

    iput-object p1, p0, Lcom/tencent/tme/live/o1/f;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tencent/tme/live/o1/f;->c:Landroid/os/Handler;

    .line 3
    iget v1, p0, Lcom/tencent/tme/live/o1/f;->d:I

    int-to-long v1, v1

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
