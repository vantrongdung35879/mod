.class public Lcom/tencent/tme/live/b2/g;
.super Lcom/tencent/tme/live/f2/h;


# static fields
.field public static final e:Lcom/tencent/tme/net/slf4j/Logger;

.field public static final f:Z


# instance fields
.field public final d:Lcom/tencent/tme/live/b2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/b2/g;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/b2/g;->e:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/tme/live/b2/g;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tme/live/f2/h;-><init>(Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/b2/g;->d:Lcom/tencent/tme/live/b2/c$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nextFilter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/f2/h;->b:Lcom/tencent/tme/live/f2/j;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/b2/g;->d:Lcom/tencent/tme/live/b2/c$a;

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/f2/h;->a:Lcom/tencent/tme/live/f2/i;

    .line 4
    sget-boolean v3, Lcom/tencent/tme/live/b2/g;->f:Z

    if-eqz v3, :cond_0

    sget-object v4, Lcom/tencent/tme/live/b2/g;->e:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "Firing a {} event for session {}"

    invoke-interface {v4, v6, v2, v5}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown event type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v4, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 6
    check-cast v4, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v1, v0, v4}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object v4, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 8
    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v1, v0, v4}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object v4, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 10
    check-cast v4, Lcom/tencent/tme/live/f2/f;

    invoke-interface {v1, v0, v4}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V

    goto :goto_0

    .line 11
    :pswitch_4
    iget-object v4, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 12
    check-cast v4, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v1, v0, v4}, Lcom/tencent/tme/live/b2/c$a;->b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    .line 13
    :pswitch_5
    iget-object v4, p0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 14
    invoke-interface {v1, v0, v4}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/c$a;->d(Lcom/tencent/tme/live/f2/j;)V

    goto :goto_0

    :pswitch_7
    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/c$a;->b(Lcom/tencent/tme/live/f2/j;)V

    goto :goto_0

    :pswitch_8
    invoke-interface {v1, v0}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;)V

    :goto_0
    if-eqz v3, :cond_1

    sget-object v1, Lcom/tencent/tme/live/b2/g;->e:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Event {} has been fired for session {}"

    invoke-interface {v1, v3, v2, v0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

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
