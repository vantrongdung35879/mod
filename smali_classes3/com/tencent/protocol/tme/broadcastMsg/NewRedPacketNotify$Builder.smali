.class public final Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;",
        ">;"
    }
.end annotation


# instance fields
.field public deadline_button:Ljava/lang/String;

.field public entry_pic:Ljava/lang/String;

.field public first_package_delay:Ljava/lang/Integer;

.field public id:Ljava/lang/Integer;

.field public ready_popup_background:Ljava/lang/String;

.field public start_button:Ljava/lang/String;

.field public sub_packet_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
            ">;"
        }
    .end annotation
.end field

.field public taken_popup_background:Ljava/lang/String;

.field public timer:Ljava/lang/Integer;

.field public title:Lcom/tencent/protocol/tme/commonschema/MultiLang;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->id:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->entry_pic:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->ready_popup_background:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->deadline_button:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->start_button:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->taken_popup_background:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->timer:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->first_package_delay:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->sub_packet_group:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$1;)V

    return-object v0
.end method

.method public deadline_button(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->deadline_button:Ljava/lang/String;

    return-object p0
.end method

.method public entry_pic(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->entry_pic:Ljava/lang/String;

    return-object p0
.end method

.method public first_package_delay(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->first_package_delay:Ljava/lang/Integer;

    return-object p0
.end method

.method public id(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public ready_popup_background(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->ready_popup_background:Ljava/lang/String;

    return-object p0
.end method

.method public start_button(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->start_button:Ljava/lang/String;

    return-object p0
.end method

.method public sub_packet_group(Ljava/util/List;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
            ">;)",
            "Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/tmes/Message$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->sub_packet_group:Ljava/util/List;

    return-object p0
.end method

.method public taken_popup_background(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->taken_popup_background:Ljava/lang/String;

    return-object p0
.end method

.method public timer(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->timer:Ljava/lang/Integer;

    return-object p0
.end method

.method public title(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method
