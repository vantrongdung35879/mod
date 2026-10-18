.class public Lcom/tencent/tme/live/n/j$d;
.super Lcom/tencent/tme/live/n/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/n/j$a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/tencent/tme/live/n/b;

    check-cast p2, Lcom/tencent/tme/live/n/b;

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/n/j$a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    iget-wide v0, p1, Lcom/tencent/tme/live/n/b;->a:J

    iget-wide v2, p2, Lcom/tencent/tme/live/n/b;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    if-gez v4, :cond_5

    goto :goto_1

    .line 3
    :cond_5
    iget v0, p1, Lcom/tencent/tme/live/n/b;->q:I

    iget v1, p2, Lcom/tencent/tme/live/n/b;->q:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    if-gez v0, :cond_6

    :goto_1
    const/4 p1, -0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method
