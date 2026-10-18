.class public final Lcom/tencent/beacon/base/net/a/e;
.super Ljava/lang/Object;
.source "SocketResponseConverter.java"

# interfaces
.implements Lcom/tencent/beacon/base/net/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/a/c<",
        "[B",
        "Lcom/tencent/beacon/pack/SocketResponsePackage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/tencent/beacon/pack/SocketResponsePackage;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/beacon/pack/SocketResponsePackage;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/SocketResponsePackage;-><init>()V

    .line 3
    new-instance v1, Lcom/tencent/beacon/pack/a;

    invoke-direct {v1, p1}, Lcom/tencent/beacon/pack/a;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/pack/SocketResponsePackage;->readFrom(Lcom/tencent/beacon/pack/a;)V

    .line 4
    iget-object p1, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->header:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/d;->c(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a/e;->a([B)Lcom/tencent/beacon/pack/SocketResponsePackage;

    move-result-object p1

    return-object p1
.end method
