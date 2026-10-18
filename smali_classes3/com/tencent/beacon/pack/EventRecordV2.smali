.class public final Lcom/tencent/beacon/pack/EventRecordV2;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "EventRecordV2.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_byteValue:[B

.field static cache_mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_valueType:I


# instance fields
.field public apn:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public byteValue:[B

.field public eventCode:Ljava/lang/String;

.field public eventResult:Z

.field public eventTime:J

.field public eventType:I

.field public mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reserved:Ljava/lang/String;

.field public srcIp:Ljava/lang/String;

.field public valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/EventRecordV2;->cache_mapValue:Ljava/util/Map;

    .line 4
    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/beacon/pack/EventRecordV2;->cache_byteValue:[B

    const/4 v1, 0x0

    .line 6
    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    .line 8
    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    .line 11
    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    .line 12
    iput-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v2

    iput v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    .line 6
    sget-object v2, Lcom/tencent/beacon/pack/EventRecordV2;->cache_mapValue:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    .line 7
    sget-object v2, Lcom/tencent/beacon/pack/EventRecordV2;->cache_byteValue:[B

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3, v0}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    .line 8
    iget-wide v2, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v4, 0x7

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/tencent/beacon/pack/a;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    .line 9
    iget-boolean v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(ZIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    .line 10
    iget v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->apn:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->srcIp:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventCode:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    .line 8
    iget v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->valueType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->mapValue:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->byteValue:[B

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a([BI)V

    .line 13
    :cond_4
    iget-wide v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventTime:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/b;->a(JI)V

    .line 14
    iget-boolean v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventResult:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(ZI)V

    .line 15
    iget v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->eventType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(II)V

    .line 16
    iget-object v0, p0, Lcom/tencent/beacon/pack/EventRecordV2;->reserved:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method
