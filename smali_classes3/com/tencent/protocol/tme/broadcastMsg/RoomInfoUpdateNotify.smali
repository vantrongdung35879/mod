.class public final Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ONLINE_NUM:Ljava/lang/Integer;

.field public static final DEFAULT_PRIORITY:Ljava/lang/Integer;

.field public static final DEFAULT_ROOMID:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOM_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_SEASON_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SHOW_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_UPDATE_TIMESTAMP:Ljava/lang/Long;

.field public static final DEFAULT_VID:Ljava/lang/String; = ""


# instance fields
.field public final image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public final online_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final priority:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final room_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final roomid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final season_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final show_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final update_timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT64:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->DEFAULT_ROOM_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->DEFAULT_PRIORITY:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->DEFAULT_ONLINE_NUM:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->DEFAULT_UPDATE_TIMESTAMP:Ljava/lang/Long;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->DEFAULT_SHOW_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;)V
    .locals 11

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->roomid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v4, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->vid:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->priority:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->season_id:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->online_num:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->update_timestamp:Ljava/lang/Long;

    iget-object v9, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v10, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->show_type:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->season_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    iput-object p9, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object p10, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->season_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->season_id:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

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

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->season_id:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_a
    return v0
.end method
