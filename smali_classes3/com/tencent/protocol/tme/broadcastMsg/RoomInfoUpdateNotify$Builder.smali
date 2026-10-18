.class public final Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;",
        ">;"
    }
.end annotation


# instance fields
.field public image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public online_num:Ljava/lang/Integer;

.field public priority:Ljava/lang/Integer;

.field public room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public room_type:Ljava/lang/Integer;

.field public roomid:Ljava/lang/String;

.field public season_id:Ljava/lang/String;

.field public show_type:Ljava/lang/Integer;

.field public update_timestamp:Ljava/lang/Long;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->roomid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->roomid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->vid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->priority:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->season_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->season_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->online_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->online_num:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->update_timestamp:Ljava/lang/Long;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;->show_type:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->show_type:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$1;)V

    return-object v0
.end method

.method public image_url(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->image_url:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public online_num(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->online_num:Ljava/lang/Integer;

    return-object p0
.end method

.method public priority(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public room_title(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public room_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->room_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public roomid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->roomid:Ljava/lang/String;

    return-object p0
.end method

.method public season_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->season_id:Ljava/lang/String;

    return-object p0
.end method

.method public show_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->show_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public update_timestamp(Ljava/lang/Long;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->update_timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify$Builder;->vid:Ljava/lang/String;

    return-object p0
.end method
