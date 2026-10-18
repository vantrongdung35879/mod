.class public Lcom/tencent/tme/live/m/g;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/f$b;J)V
    .locals 0

    iput-wide p2, p0, Lcom/tencent/tme/live/m/g;->b:J

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/t/c;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/tme/live/m/g;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/tencent/tme/live/n/b;

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/tencent/tme/live/m/g;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/tme/live/m/g;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
