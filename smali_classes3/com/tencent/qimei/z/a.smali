.class public final Lcom/tencent/qimei/z/a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/z/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/z/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    .line 2
    iget-boolean p1, p1, Lcom/tencent/qimei/z/b;->d:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/tencent/qimei/z/b;->d:Z

    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QM"

    const-string v1, "current network switched to the available state"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    .line 7
    iget-object p1, p1, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/z/c;

    .line 9
    invoke-interface {v0}, Lcom/tencent/qimei/z/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/tencent/qimei/z/b;->d:Z

    .line 3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "QM"

    const-string v1, "current network lost"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/qimei/z/a;->a:Lcom/tencent/qimei/z/b;

    .line 5
    iget-object p1, p1, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/z/c;

    .line 7
    invoke-interface {v0}, Lcom/tencent/qimei/z/c;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method
