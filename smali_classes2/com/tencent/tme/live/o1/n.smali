.class public Lcom/tencent/tme/live/o1/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o1/n$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/o1/b;

.field public b:Lcom/tencent/tme/live/o1/n$a;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o1/n;->c:I

    iput-object p1, p0, Lcom/tencent/tme/live/o1/n;->a:Lcom/tencent/tme/live/o1/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o1/n;->c:I

    iget-object v0, p0, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    return-void
.end method
