.class public Lcom/tencent/tme/live/f2/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/tencent/tme/live/f2/i;

.field public final b:Lcom/tencent/tme/live/f2/j;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    iput-object p2, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    iput-object p3, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown event type: "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 4
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireFilterClose()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 6
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 8
    check-cast v1, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 10
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 14
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/tencent/tme/live/f2/f;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V

    goto :goto_0

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 18
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 20
    check-cast v1, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireMessageSent(Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    .line 21
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 22
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 24
    invoke-interface {v0, v1}, Lcom/tencent/tme/live/b2/e;->fireMessageReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 26
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionClosed()V

    goto :goto_0

    .line 27
    :pswitch_7
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 28
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionOpened()V

    goto :goto_0

    .line 29
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 30
    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireSessionCreated()V

    :goto_0
    return-void

    .line 31
    :goto_1
    iget-object v2, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/h;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    const-string v1, "] "

    const-string v2, "["

    if-nez v0, :cond_0

    .line 2
    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
