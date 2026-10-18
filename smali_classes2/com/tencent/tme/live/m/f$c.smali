.class public Lcom/tencent/tme/live/m/f$c;
.super Lcom/tencent/tme/live/m/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/m/f$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/m/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z
    .locals 0

    monitor-enter p0

    if-eqz p4, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 3
    iget-wide p4, p4, Lcom/tencent/tme/live/n/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, p4

    const-wide/16 p4, 0x14

    cmp-long p6, p2, p4

    if-ltz p6, :cond_1

    monitor-exit p0

    const/4 p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 4
    iget p3, p1, Lcom/tencent/tme/live/n/b;->A:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p1, Lcom/tencent/tme/live/n/b;->A:I

    :cond_2
    return p2
.end method

.method public clear()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
