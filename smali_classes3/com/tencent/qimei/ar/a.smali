.class public final Lcom/tencent/qimei/ar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/ar/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/tencent/qimei/ar/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ar/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/qimei/ar/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ar/a;->b:Lcom/tencent/qimei/ar/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    sget-object v0, Lcom/tencent/qimei/aq/a;->a:Lcom/tencent/qimei/aq/b;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BizInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qimei/ar/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/as/a;

    .line 9
    instance-of v1, v0, Lcom/tencent/qimei/ar/b;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Lcom/tencent/qimei/ar/b;

    iput-object v0, p0, Lcom/tencent/qimei/ar/a;->b:Lcom/tencent/qimei/ar/b;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->c()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ar/a;->a()Lcom/tencent/qimei/ar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/ar/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
