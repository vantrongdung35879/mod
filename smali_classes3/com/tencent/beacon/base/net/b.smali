.class Lcom/tencent/beacon/base/net/b;
.super Ljava/lang/Object;
.source "BeaconNet.java"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/e;Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "Lcom/tencent/beacon/base/net/BResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/e;

.field final synthetic b:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic c:Lcom/tencent/beacon/base/net/c;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/base/net/c;Lcom/tencent/beacon/base/net/call/e;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b;->c:Lcom/tencent/beacon/base/net/c;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/b;->a:Lcom/tencent/beacon/base/net/call/e;

    iput-object p3, p0, Lcom/tencent/beacon/base/net/b;->b:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/BResponse;)V
    .locals 6

    const-string v0, "httpRequest: "

    const-string v1, "[BeaconNet]"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b;->a:Lcom/tencent/beacon/base/net/call/e;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, " request success!"

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b;->b:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b;->c:Lcom/tencent/beacon/base/net/c;

    invoke-static {p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 4
    new-instance p1, Lcom/tencent/beacon/base/net/d;

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b;->a:Lcom/tencent/beacon/base/net/call/e;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v2, "453"

    const/16 v3, 0xc8

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpRequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BeaconNet]"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b;->c:Lcom/tencent/beacon/base/net/c;

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/d;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b;->b:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b;->c:Lcom/tencent/beacon/base/net/c;

    invoke-static {p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/c;)V

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
    check-cast p1, Lcom/tencent/beacon/base/net/BResponse;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b;->a(Lcom/tencent/beacon/base/net/BResponse;)V

    return-void
.end method
