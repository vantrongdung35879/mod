.class public Lcom/tencent/tme/live/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k/e$b;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/e;->a:Lcom/tencent/tme/live/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string p1, "HelloProxy success"

    const-string v0, "MinaConnectControl"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/e;->a:Lcom/tencent/tme/live/e/d;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->j:Lcom/tencent/tme/live/k/c$a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/k/c$a;->a:Lcom/tencent/protocol/tme/conn/HelloRsp;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/tme/live/l/a;->a(Ljava/lang/Integer;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/e/e;->a:Lcom/tencent/tme/live/e/d;

    iput p1, v1, Lcom/tencent/tme/live/e/d;->k:I

    :cond_0
    const-string p1, "[TME_NET_LINK]HelloProxy success mHelloInterval: "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/tme/live/e/e;->a:Lcom/tencent/tme/live/e/d;

    iget v1, v1, Lcom/tencent/tme/live/e/d;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TME_NET_LINK]HelloProxy onFail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string v0, "MinaConnectControl"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
