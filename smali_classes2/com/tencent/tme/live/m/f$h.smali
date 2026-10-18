.class public Lcom/tencent/tme/live/m/f$h;
.super Lcom/tencent/tme/live/m/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/m/f$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/tme/live/n/b;

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/m/f$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/m/f$h;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/m/f$h;->c:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    .line 3
    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iput-object v0, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/tencent/tme/live/m/f$h;->a:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/tme/live/m/f$h;->a:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/tme/live/m/f$h;->c:F

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget p3, p0, Lcom/tencent/tme/live/m/f$h;->a:I

    const/4 p4, 0x0

    if-lez p3, :cond_4

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result p3

    const/4 p5, 0x1

    if-eq p3, p5, :cond_0

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v0

    iget-object p3, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;

    invoke-virtual {p3}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p3, p6, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    iget-object p3, p3, Lcom/tencent/tme/live/o/e;->g:Lcom/tencent/tme/live/n/e;

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-ltz p6, :cond_2

    if-eqz p3, :cond_2

    long-to-float p6, v0

    iget-wide v0, p3, Lcom/tencent/tme/live/n/e;->c:J

    long-to-float p3, v0

    iget v0, p0, Lcom/tencent/tme/live/m/f$h;->c:F

    mul-float p3, p3, v0

    cmpg-float p3, p6, p3

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/tencent/tme/live/m/f$h;->a:I

    if-le p2, p3, :cond_3

    :goto_0
    const/4 p4, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;

    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 2
    iget p2, p1, Lcom/tencent/tme/live/n/b;->A:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/tencent/tme/live/n/b;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/tencent/tme/live/m/f$h;->b:Lcom/tencent/tme/live/n/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
