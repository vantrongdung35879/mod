.class Lcom/tencent/beacon/base/net/call/i;
.super Ljava/lang/Object;
.source "JceCall.java"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/call/j;->b(Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Lcom/tencent/beacon/base/net/call/j;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/base/net/call/j;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/i;->b:Lcom/tencent/beacon/base/net/call/j;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "raw response size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BeaconNet]"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/i;->b:Lcom/tencent/beacon/base/net/call/j;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/call/j;->a(Lcom/tencent/beacon/base/net/call/j;)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->c()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->e:Lcom/tencent/beacon/base/net/a/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/b;->b()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/tencent/beacon/base/net/NetException;

    const-string v0, "ResponsePackageV2 == null"

    invoke-direct {p1, v0}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->c()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->d:Lcom/tencent/beacon/base/net/a/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/a;->b()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;

    if-eqz p1, :cond_6

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/tencent/beacon/pack/ResponsePackage;

    .line 9
    iget v1, v0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/i;->b:Lcom/tencent/beacon/base/net/call/j;

    invoke-static {v2}, Lcom/tencent/beacon/base/net/call/j;->a(Lcom/tencent/beacon/base/net/call/j;)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getResponseCmd()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 10
    iget-byte v1, v0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    if-nez v1, :cond_4

    .line 11
    iget-object v0, v0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    if-eqz v0, :cond_3

    .line 12
    array-length v1, v0

    if-lez v1, :cond_3

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/i;->b:Lcom/tencent/beacon/base/net/call/j;

    invoke-static {v1}, Lcom/tencent/beacon/base/net/call/j;->b(Lcom/tencent/beacon/base/net/call/j;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    iget-object p1, p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tencent/beacon/base/net/b/d;->a(JJLjava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/Callback;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 16
    :cond_3
    new-instance p1, Lcom/tencent/beacon/base/net/NetException;

    const-string v0, "responsePackage.buffer == null"

    invoke-direct {p1, v0}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lcom/tencent/beacon/base/net/NetException;

    const-string v0, "responsePackage.result != OK(0)"

    invoke-direct {p1, v0}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Lcom/tencent/beacon/base/net/NetException;

    const-string v0, "responsePackage.cmd != requestEntity.responseCmd"

    invoke-direct {p1, v0}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Lcom/tencent/beacon/base/net/NetException;

    const-string v0, "responsePackage == null"

    invoke-direct {p1, v0}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/i;->a:Lcom/tencent/beacon/base/net/call/Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/call/i;->a([B)V

    return-void
.end method
