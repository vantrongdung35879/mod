.class public Lcom/tencent/tme/live/b2/a$c;
.super Lcom/tencent/tme/live/b2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/b2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/b2/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/b2/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a$c;-><init>(Lcom/tencent/tme/live/b2/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    check-cast p2, Lcom/tencent/tme/live/f2/a;

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->m()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/f2/a;->increaseScheduledWriteBytes(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->increaseScheduledWriteMessages()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/e2/i;->write(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/f2/d$b;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/e2/i;->flush(Lcom/tencent/tme/live/f2/j;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/f2/d$b;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public c(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    move-object p1, p2

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/e2/i;->remove(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method
