.class public Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;
.super Ljava/net/SocketAddress;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d36303337353033L


# instance fields
.field private final port:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    iput p1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget p1, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->compareTo(Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;

    iget v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget p1, p1, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ltz v0, :cond_0

    const-string v0, "vm:server:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "vm:client:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/net/mina/transport/vmpipe/VmPipeAddress;->port:I

    neg-int v1, v1

    goto :goto_0
.end method
