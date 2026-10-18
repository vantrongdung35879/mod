.class Lcom/tencent/mna/g2$a;
.super Ljava/lang/Object;
.source "NetworkQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/g2;->a(Lcom/tencent/mna/g2$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/g2$b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/g2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/mna/base/report/d;->QUERY_NETWORK:Lcom/tencent/mna/base/report/d;

    invoke-static {v1}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v1

    .line 3
    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "netssid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget-object v4, v4, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "queryNetType"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->b:I

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "signal"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->c:I

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "routerdelay"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->d:I

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string/jumbo v2, "terminals"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->e:I

    .line 8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "sendnum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->f:I

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "recvnum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->g:I

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "snd_drops"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->h:I

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "rcv_drops"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->i:I

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "snd_errs"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->j:I

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "rcv_errs"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->k:I

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "noportsnum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->l:I

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "inerrorsnum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->m:I

    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "rcvbuferrornum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->n:I

    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "sndbuferrornum"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->o:I

    .line 18
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "edgedelay"

    iget-object v3, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v3, v3, Lcom/tencent/mna/g2$b;->p:I

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v1

    const-string v2, "edgeip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget-object v0, v0, Lcom/tencent/mna/g2$b;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v0

    const-string v1, "mobileType"

    iget-object v2, p0, Lcom/tencent/mna/g2$a;->a:Lcom/tencent/mna/g2$b;

    iget v2, v2, Lcom/tencent/mna/g2$b;->r:I

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/tencent/mna/y2;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportQueryNetworkEvent failed, exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
