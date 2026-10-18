.class public Lcom/tencent/tme/live/b2/a$d;
.super Lcom/tencent/tme/live/b2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/b2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/b2/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/b2/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/b2/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/e2/g;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/tencent/tme/live/b2/a;->SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, p1}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/c2/b;->a(Lcom/tencent/tme/live/f2/j;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/tme/live/b2/a;->SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/tencent/tme/live/c2/b;->a(Lcom/tencent/tme/live/f2/j;)V

    :cond_1
    throw p1
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V
    .locals 0

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/e2/g;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 3

    move-object p1, p2

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    instance-of v0, p3, Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/f2/a;->increaseReadMessages(J)V

    :cond_1
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/e2/m;->a(J)V

    :cond_2
    :try_start_0
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/tencent/tme/live/e2/g;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3}, Lcom/tencent/tme/live/f2/a;->offerReadFuture(Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Lcom/tencent/tme/live/f2/a;->offerReadFuture(Ljava/lang/Object;)V

    :cond_4
    throw p2
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 1

    check-cast p2, Lcom/tencent/tme/live/f2/a;

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/e2/g;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/f2/a;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/f2/a;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_1
    throw p1
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    move-object p1, p2

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tencent/tme/live/e2/g;->d(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getAttributeMap()Lcom/tencent/tme/live/f2/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_1
    throw p2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_2
    throw v0

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_3
    throw p2

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getAttributeMap()Lcom/tencent/tme/live/f2/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_4
    throw v0

    :catchall_4
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_5
    throw p2

    :catchall_5
    move-exception v0

    :try_start_7
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_6
    throw v0

    :catchall_6
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_7
    throw p2

    :catchall_7
    move-exception v0

    :try_start_8
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getAttributeMap()Lcom/tencent/tme/live/f2/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_8
    throw v0

    :catchall_8
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_9
    throw p2

    :catchall_9
    move-exception v0

    :try_start_b
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_a
    throw v0

    :catchall_a
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_b
    throw p2

    :catchall_b
    move-exception v0

    :try_start_c
    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getAttributeMap()Lcom/tencent/tme/live/f2/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :try_start_d
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_c
    throw v0

    :catchall_c
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_d
    throw p2

    :catchall_d
    move-exception v0

    :try_start_e
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/b2/e;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_e
    throw v0

    :catchall_e
    move-exception p2

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/tencent/tme/live/f2/a;->offerClosedReadFuture()V

    :cond_f
    throw p2
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 2

    move-object p1, p2

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/tencent/tme/live/f2/a;->increaseWrittenMessages(Lcom/tencent/tme/live/g2/d;J)V

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/tme/live/e2/c;

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/e2/m;->a(J)V

    :cond_0
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/e2/g;->b(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public d(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/e2/g;->c(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public e(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/e2/g;->b(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method
