.class public final Lcom/tencent/beacon/pack/RequestPacket;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "RequestPacket.java"


# static fields
.field static cache_context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_sBuffer:[B


# instance fields
.field public cPacketType:B

.field public context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iMessageType:I

.field public iRequestId:I

.field public iTimeout:I

.field public iVersion:S

.field public sBuffer:[B

.field public sFuncName:Ljava/lang/String;

.field public sServantName:Ljava/lang/String;

.field public status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput-short v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iVersion:S

    const/4 v0, 0x0

    .line 3
    iput-byte v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->cPacketType:B

    .line 4
    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iMessageType:I

    .line 5
    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iRequestId:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/tencent/beacon/pack/RequestPacket;->sServantName:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/tencent/beacon/pack/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iTimeout:I

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 4

    .line 1
    :try_start_0
    iget-short v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iVersion:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/beacon/pack/a;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iVersion:S

    .line 2
    iget-byte v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->cPacketType:B

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->cPacketType:B

    .line 3
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iMessageType:I

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iMessageType:I

    .line 4
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iRequestId:I

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iRequestId:I

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sServantName:Ljava/lang/String;

    const/4 v0, 0x6

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_sBuffer:[B

    if-nez v0, :cond_0

    .line 8
    new-array v0, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    sput-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_sBuffer:[B

    .line 9
    :cond_0
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_sBuffer:[B

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sBuffer:[B

    .line 10
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iTimeout:I

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iTimeout:I

    .line 11
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v0, :cond_1

    .line 12
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;

    .line 13
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;

    const/16 v3, 0x9

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->context:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;

    .line 17
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    sget-object v0, Lcom/tencent/beacon/pack/RequestPacket;->cache_context:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/beacon/pack/RequestPacket;->status:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 2

    .line 1
    iget-short v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iVersion:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(SI)V

    .line 2
    iget-byte v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->cPacketType:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(BI)V

    .line 3
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iMessageType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    .line 4
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iRequestId:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    .line 5
    iget-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sServantName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sFuncName:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->sBuffer:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a([BI)V

    .line 8
    iget v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->iTimeout:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->context:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    .line 10
    iget-object v0, p0, Lcom/tencent/beacon/pack/RequestPacket;->status:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    return-void
.end method
