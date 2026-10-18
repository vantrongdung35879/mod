.class Lcom/tencent/mna/b$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AbsNetworkBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b;->g(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tencent/mna/b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iput-object p2, p0, Lcom/tencent/mna/b$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mna/b;->a(Landroid/content/Context;Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::NetworkBinding  checkAuxNetwork failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iget v0, v0, Lcom/tencent/mna/b;->a:I

    .line 8
    iget-object v1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {v1, p1}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/b;Ljava/lang/Object;)I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iget v2, v2, Lcom/tencent/mna/b;->a:I

    if-eq v2, v1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iput v1, v2, Lcom/tencent/mna/b;->a:I

    .line 12
    iget-object v2, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {v2, p1}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/b;Landroid/net/Network;)Landroid/net/Network;

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v3}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":::NetworkBinding preNetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iget v3, v3, Lcom/tencent/mna/b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", transportType:0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v3}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":::NetworkBinding rebindAll, preNetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newNetId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {v0, p1}, Lcom/tencent/mna/b;->b(Lcom/tencent/mna/b;Landroid/net/Network;)I

    .line 22
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    iget p1, p1, Lcom/tencent/mna/b;->a:I

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/tencent/mna/b$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v1}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":::NetworkBinding latch countDown exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mna/b;->a(Landroid/content/Context;Landroid/net/Network;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::NetworkBinding onLost checkAuxNetwork failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    const/4 v0, 0x0

    iput v0, p1, Lcom/tencent/mna/b;->a:I

    .line 9
    iget-object p1, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-static {p1}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/b;)I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mna/b$a;->b:Lcom/tencent/mna/b;

    invoke-interface {v0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::NetworkBinding prepareNetwork NetworkBinding onLost"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-void
.end method
