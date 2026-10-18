.class public Lcom/tencent/beacon/e/i;
.super Ljava/lang/Object;
.source "StrategyQueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/beacon/module/StrategyModule;

.field private volatile c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/module/StrategyModule;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/beacon/e/i;->c:Z

    .line 3
    iput-object p1, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/tencent/beacon/a/c/c;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/e/i;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V
    .locals 4

    .line 43
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    iget-byte v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[strategy] mid: %d , detail changed..."

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/e/e;->a(Ljava/util/Map;)V

    .line 46
    iget-object p1, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->detail:Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/tencent/beacon/e/b;->a(Ljava/util/Map;)V

    .line 47
    iput-boolean v1, p0, Lcom/tencent/beacon/e/i;->d:Z

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/pack/ModuleStrategy;)V
    .locals 5

    .line 48
    iget-byte v0, p2, Lcom/tencent/beacon/pack/ModuleStrategy;->onOff:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/beacon/e/e;->c()Z

    move-result v3

    if-eq v3, v0, :cond_1

    .line 50
    iget-byte p2, p2, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object v3, v4, v2

    const-string p2, "[strategy] mid: %d , isUsable changed: %b "

    invoke-static {p2, v4}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/tencent/beacon/e/e;->a(Z)V

    .line 52
    iput-boolean v2, p0, Lcom/tencent/beacon/e/i;->d:Z

    :cond_1
    return-void
.end method

.method private a(Lcom/tencent/beacon/pack/ModuleStrategy;)V
    .locals 5

    .line 53
    iget-object v0, p1, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/b;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-byte v2, p1, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object p1, p1, Lcom/tencent/beacon/pack/ModuleStrategy;->url:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object p1, v3, v1

    const-string p1, "[strategy] mid: %d , url changed: %s"

    invoke-static {p1, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/b;->b(Ljava/lang/String;)V

    .line 57
    iput-boolean v1, p0, Lcom/tencent/beacon/e/i;->d:Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/tencent/beacon/e/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/beacon/e/a;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p2, p1}, Lcom/tencent/beacon/e/a;->a(Ljava/util/Map;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private b(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V
    .locals 4

    .line 10
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-byte v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[strategy] mid: %d , PreventEventCode changed..."

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iput-boolean v1, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 13
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tencent/beacon/base/util/b;->a(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/e/e;->a(Ljava/util/Set;)V

    .line 14
    iget-object p1, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->preventEventCode:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/beacon/e/b;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->f()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/beacon/e/i;->c:Z

    return-void
.end method

.method private c(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V
    .locals 4

    .line 3
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-byte v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[strategy] mid: %d , SampleEventSet changed..."

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iput-boolean v1, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 6
    iget-object v0, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tencent/beacon/base/util/b;->a(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/e/e;->b(Ljava/util/Set;)V

    .line 7
    iget-object p1, p3, Lcom/tencent/beacon/pack/ModuleStrategy;->sampleEvent:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/beacon/e/b;->b(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "s_e_e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/tencent/beacon/a/a/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "local strategyQuery finish!"

    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/a/a/c;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/tencent/beacon/a/a/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->a()Lcom/tencent/beacon/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/e/a;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    .line 2
    invoke-static {}, Lcom/tencent/beacon/a/b/a;->a()Lcom/tencent/beacon/a/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/beacon/a/b/a;->a(JLjava/lang/Runnable;)V

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "[strategy] next time: %d"

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/tencent/beacon/e/k;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/beacon/e/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->builder()Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/beacon/base/net/RequestType;->STRATEGY:Lcom/tencent/beacon/base/net/RequestType;

    .line 5
    invoke-virtual {v4, v5}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a(Lcom/tencent/beacon/base/net/RequestType;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v4

    const/16 v5, 0x64

    .line 6
    invoke-virtual {v4, v5}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a(I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v4

    const/16 v5, 0x65

    .line 7
    invoke-virtual {v4, v5}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v4

    .line 9
    invoke-static {v2}, Lcom/tencent/beacon/base/net/b/b;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v2

    .line 10
    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/b;->b(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f91

    invoke-virtual {v2, v1, v4}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a(Ljava/lang/String;I)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/a/c/c;->k()Ljava/lang/String;

    move-result-object v2

    const-string v4, "A1"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 12
    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "A2"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 13
    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/f;->d()Ljava/lang/String;

    move-result-object v2

    const-string v4, "A4"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 14
    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/f;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "A6"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "A7"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v2

    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "A23"

    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "A31"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "A19"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/e/i;->a:Landroid/content/Context;

    .line 20
    invoke-static {v1}, Lcom/tencent/beacon/a/c/b;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "F"

    goto :goto_0

    :cond_1
    const-string v1, "B"

    :goto_0
    const-string v2, "A66"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/e/i;->a:Landroid/content/Context;

    .line 21
    invoke-static {v1}, Lcom/tencent/beacon/a/c/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A67"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/e/i;->a:Landroid/content/Context;

    .line 22
    invoke-static {v1}, Lcom/tencent/beacon/a/c/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A68"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/beacon/a/c/b;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "Y"

    goto :goto_1

    :cond_2
    const-string v1, "N"

    .line 23
    :goto_1
    const-string v2, "A85"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/tencent/beacon/a/c/j;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a(Ljava/util/Map;)Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;->a()Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->c()Lcom/tencent/beacon/base/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/base/net/c;->b(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/call/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/base/net/call/j;->b(Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void

    .line 27
    :cond_3
    :goto_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[strategy] query times or query success times arrive max, return!"

    invoke-static {v2, v0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/module/StrategyModule;->a(Z)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/beacon/e/i;->a([BZ)V

    .line 2
    iget-object p1, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/module/StrategyModule;->a(Z)V

    .line 3
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->c()V

    return-void
.end method

.method public a([BZ)V
    .locals 4

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lcom/tencent/beacon/pack/CommonStrategy;

    invoke-direct {v1}, Lcom/tencent/beacon/pack/CommonStrategy;-><init>()V

    .line 5
    new-instance v2, Lcom/tencent/beacon/pack/a;

    invoke-direct {v2, p1}, Lcom/tencent/beacon/pack/a;-><init>([B)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/tencent/beacon/pack/CommonStrategy;->readFrom(Lcom/tencent/beacon/pack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "[strategy] -> common strategy: %s"

    const/4 v3, 0x1

    .line 7
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/tencent/beacon/e/a;->a()Lcom/tencent/beacon/e/a;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/tencent/beacon/e/i;->a(Lcom/tencent/beacon/pack/CommonStrategy;Lcom/tencent/beacon/e/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 10
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const-string/jumbo v2, "strategy_data"

    .line 12
    :try_start_2
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    .line 14
    invoke-static {}, Lcom/tencent/beacon/e/k;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 16
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[strategy] error to common strategy!"

    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/tencent/beacon/e/i;->c:Z

    return v0
.end method

.method protected a(Lcom/tencent/beacon/pack/CommonStrategy;Lcom/tencent/beacon/e/a;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/tencent/beacon/pack/CommonStrategy;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Lcom/tencent/beacon/base/net/b/b;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    iget-object v3, p1, Lcom/tencent/beacon/pack/CommonStrategy;->url:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "[strategy] url changed to: %s"

    invoke-static {v3, v4}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iput-boolean v2, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 21
    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/b;->d(Ljava/lang/String;)V

    .line 22
    :cond_1
    iget v1, p1, Lcom/tencent/beacon/pack/CommonStrategy;->queryInterval:I

    invoke-virtual {p2}, Lcom/tencent/beacon/e/a;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 23
    iget v1, p1, Lcom/tencent/beacon/pack/CommonStrategy;->queryInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "[strategy] QueryPeriod changed to: %d"

    invoke-static {v0, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iput-boolean v2, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 25
    iget v0, p1, Lcom/tencent/beacon/pack/CommonStrategy;->queryInterval:I

    invoke-virtual {p2, v0}, Lcom/tencent/beacon/e/a;->a(I)V

    .line 26
    :cond_2
    iget-object v0, p1, Lcom/tencent/beacon/pack/CommonStrategy;->moduleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/e/i;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    iput-boolean v2, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 28
    :cond_3
    iget-object p1, p1, Lcom/tencent/beacon/pack/CommonStrategy;->cloudParas:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/tencent/beacon/e/i;->a(Ljava/util/Map;Lcom/tencent/beacon/e/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    iput-boolean v2, p0, Lcom/tencent/beacon/e/i;->d:Z

    .line 30
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/beacon/e/i;->d:Z

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method a(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/beacon/pack/ModuleStrategy;",
            ">;)Z"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->a()Lcom/tencent/beacon/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/e/a;->d()Lcom/tencent/beacon/e/e;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/e/e;->a(Z)V

    .line 33
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->d()V

    return p1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v1}, Lcom/tencent/beacon/module/StrategyModule;->b()Lcom/tencent/beacon/e/b;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/pack/ModuleStrategy;

    .line 36
    iget-byte v3, v2, Lcom/tencent/beacon/pack/ModuleStrategy;->mId:B

    invoke-virtual {v0}, Lcom/tencent/beacon/e/e;->b()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 37
    invoke-direct {p0, v0, v2}, Lcom/tencent/beacon/e/i;->a(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/pack/ModuleStrategy;)V

    .line 38
    invoke-direct {p0, v2}, Lcom/tencent/beacon/e/i;->a(Lcom/tencent/beacon/pack/ModuleStrategy;)V

    .line 39
    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/beacon/e/i;->a(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V

    .line 40
    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/beacon/e/i;->b(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/beacon/e/i;->c(Lcom/tencent/beacon/e/e;Lcom/tencent/beacon/e/b;Lcom/tencent/beacon/pack/ModuleStrategy;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-boolean p1, p0, Lcom/tencent/beacon/e/i;->d:Z

    return p1
.end method

.method public b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "strategy_data"

    const-string v2, ""

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/e/i;->a:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/k;->a(Landroid/content/Context;I)Lcom/tencent/beacon/e/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/tencent/beacon/e/j;->c:[B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/tencent/beacon/e/i;->a([BZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const-string v0, "[strategy] local strategy is null!"

    .line 7
    :try_start_2
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    :try_start_3
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :goto_1
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->e()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->e()V

    throw v0
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->c()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/e/i;->a([B)V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/beacon/e/i;->c:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/e/i;->b:Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->a()Lcom/tencent/beacon/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/beacon/e/i;->g()V

    :cond_0
    return-void
.end method
