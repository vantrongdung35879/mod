.class public final Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ONLINE_NUM:Ljava/lang/Long;

.field public static final DEFAULT_REAL_ONLINE_NUM:Ljava/lang/Long;

.field public static final DEFAULT_ROOMID:Ljava/lang/String; = ""


# instance fields
.field public final online_num:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT64:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final real_online_num:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT64:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final roomid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->DEFAULT_ONLINE_NUM:Ljava/lang/Long;

    sput-object v0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->DEFAULT_REAL_ONLINE_NUM:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;)V
    .locals 3

    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;->roomid:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;->online_num:Ljava/lang/Long;

    iget-object v2, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;->real_online_num:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;-><init>(Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->roomid:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->online_num:Ljava/lang/Long;

    iput-object p3, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->real_online_num:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;

    iget-object v1, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->roomid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->roomid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->online_num:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->online_num:Ljava/lang/Long;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->real_online_num:Ljava/lang/Long;

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->real_online_num:Ljava/lang/Long;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->roomid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->online_num:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->real_online_num:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_3
    return v0
.end method
