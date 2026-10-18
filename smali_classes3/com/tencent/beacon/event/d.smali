.class public Lcom/tencent/beacon/event/d;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Lcom/tencent/beacon/event/h;
.implements Lcom/tencent/beacon/a/a/d;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/tencent/beacon/event/a/a;

.field private final c:Lcom/tencent/beacon/event/g;

.field private final d:Lcom/tencent/beacon/event/g;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 2
    iput-wide v0, p0, Lcom/tencent/beacon/event/d;->e:J

    const-wide/16 v0, 0x1388

    .line 3
    iput-wide v0, p0, Lcom/tencent/beacon/event/d;->f:J

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->a(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/d;->a:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/tencent/beacon/event/a/a;->a()Lcom/tencent/beacon/event/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/d;->b:Lcom/tencent/beacon/event/a/a;

    .line 6
    new-instance v1, Lcom/tencent/beacon/event/g;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/beacon/event/g;-><init>(ILcom/tencent/beacon/event/a/a;Z)V

    iput-object v1, p0, Lcom/tencent/beacon/event/d;->c:Lcom/tencent/beacon/event/g;

    .line 7
    new-instance v1, Lcom/tencent/beacon/event/g;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/beacon/event/g;-><init>(ILcom/tencent/beacon/event/a/a;Z)V

    iput-object v1, p0, Lcom/tencent/beacon/event/d;->d:Lcom/tencent/beacon/event/g;

    .line 8
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/beacon/event/d;)Lcom/tencent/beacon/event/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/d;->b:Lcom/tencent/beacon/event/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/beacon/event/d;[BLcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/beacon/event/d;->a([BLcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;

    move-result-object p0

    return-object p0
.end method

.method private a([BLcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;
    .locals 2

    .line 16
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 17
    new-instance p2, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;

    invoke-direct {p2, p1}, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;-><init>([B)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/event/immediate/Beacon2WnsTransferArgs;-><init>([B)V

    .line 19
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->setAppkey(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;->setEventCode(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;
    .locals 3

    .line 3
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "[EventManager]"

    const-string v2, "eventName is %s, logID is %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/beacon/event/b;-><init>(Lcom/tencent/beacon/event/d;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "-1"

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/beacon/event/open/EventResult$a;->a(J)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 14

    .line 25
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/beacon/event/d;->e:J

    iget-object v6, p0, Lcom/tencent/beacon/event/d;->c:Lcom/tencent/beacon/event/g;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/beacon/a/b/a;->a(IJJLjava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v7

    iget-wide v11, p0, Lcom/tencent/beacon/event/d;->f:J

    iget-object v13, p0, Lcom/tencent/beacon/event/d;->d:Lcom/tencent/beacon/event/g;

    const/16 v8, 0x3e8

    const-wide/16 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/beacon/a/b/a;->a(IJJLjava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 11

    .line 28
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/16 v4, 0xb

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v4, "u_c_r_p"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 31
    iput-wide v4, p0, Lcom/tencent/beacon/event/d;->e:J

    .line 32
    :cond_1
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v0, "u_c_n_p"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 33
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-ltz p1, :cond_4

    const-wide/32 v0, 0x36ee80

    cmp-long p1, v4, v0

    if-gtz p1, :cond_4

    .line 34
    iput-wide v4, p0, Lcom/tencent/beacon/event/d;->f:J

    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "d_m"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 36
    iget-wide v4, p0, Lcom/tencent/beacon/event/d;->e:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_3

    const-string v0, "realtimePollingTime"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/tencent/beacon/event/d;->e:J

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x2710

    invoke-static/range {v4 .. v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/d;->e:J

    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/tencent/beacon/event/d;->f:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    const-string v0, "normalPollingTime"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/tencent/beacon/event/d;->f:J

    const-wide/16 v7, 0x7d0

    const-wide/32 v9, 0x36ee80

    invoke-static/range {v4 .. v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/d;->f:J

    .line 40
    :cond_4
    :goto_0
    iget-wide v0, p0, Lcom/tencent/beacon/event/d;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v0, p0, Lcom/tencent/beacon/event/d;->f:J

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "[EventManager]"

    const-string v0, "pollingTime maybe change, realtime: %s normal: %s"

    .line 42
    invoke-static {p1, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/tencent/beacon/event/EventBean;->getEventValue()Ljava/util/Map;

    move-result-object v0

    const-string v1, "A156"

    const-string v2, "N"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v0}, Lcom/tencent/beacon/event/EventBean;->setEventValue(Ljava/util/Map;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/tencent/beacon/event/c/d;->a(Ljava/util/List;Z)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->c()Lcom/tencent/beacon/base/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/base/net/c;->b(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/call/j;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/beacon/event/c;-><init>(Lcom/tencent/beacon/event/d;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->b()Lcom/tencent/beacon/a/b/a;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/tencent/beacon/base/net/call/j;->a(Lcom/tencent/beacon/base/net/call/Callback;Lcom/tencent/beacon/a/b/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/tencent/beacon/event/d;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/g;->run()V

    .line 22
    iget-object p1, p0, Lcom/tencent/beacon/event/d;->c:Lcom/tencent/beacon/event/g;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/g;->run()V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/beacon/event/d;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V

    .line 24
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/beacon/event/d;->c:Lcom/tencent/beacon/event/g;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/b/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/beacon/event/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/beacon/event/a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/beacon/event/a;-><init>(Lcom/tencent/beacon/event/d;Lcom/tencent/beacon/event/EventBean;)V

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/d;->a(Ljava/lang/Runnable;)Z

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p2, v3, v1

    const/4 p2, 0x2

    aput-object v2, v3, p2

    const-string p2, "[EventModule]"

    const-string v2, "event: %s. go in EventManager(%s). offer: %s"

    .line 4
    invoke-static {p2, v1, v2, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "-1"

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/beacon/event/open/EventResult$a;->a(J)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x67

    .line 7
    invoke-static {p1}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->b(I)V

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/a;->b(I)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/b/a;->a(IZ)V

    .line 2
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/b/a;->a(IZ)V

    return-void
.end method
