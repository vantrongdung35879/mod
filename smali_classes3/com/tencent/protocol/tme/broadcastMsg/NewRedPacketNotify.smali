.class public final Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DEADLINE_BUTTON:Ljava/lang/String; = ""

.field public static final DEFAULT_ENTRY_PIC:Ljava/lang/String; = ""

.field public static final DEFAULT_FIRST_PACKAGE_DELAY:Ljava/lang/Integer;

.field public static final DEFAULT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_READY_POPUP_BACKGROUND:Ljava/lang/String; = ""

.field public static final DEFAULT_START_BUTTON:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_PACKET_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TAKEN_POPUP_BACKGROUND:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMER:Ljava/lang/Integer;


# instance fields
.field public final deadline_button:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final entry_pic:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final first_package_delay:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final ready_popup_background:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final start_button:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final sub_packet_group:Ljava/util/List;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        label = .enum Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
            ">;"
        }
    .end annotation
.end field

.field public final taken_popup_background:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final timer:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final title:Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->DEFAULT_ID:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->DEFAULT_TIMER:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->DEFAULT_FIRST_PACKAGE_DELAY:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->DEFAULT_SUB_PACKET_GROUP:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;)V
    .locals 11

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->id:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->entry_pic:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->ready_popup_background:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->deadline_button:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->start_button:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->taken_popup_background:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v8, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->timer:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->first_package_delay:Ljava/lang/Integer;

    iget-object v10, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;->sub_packet_group:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/protocol/tme/commonschema/MultiLang;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object p8, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    invoke-static {p10}, Lcom/squareup/tmes/Message;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/squareup/tmes/Message;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    iget-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_9
    const/4 v1, 0x1

    :goto_8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_a
    return v0
.end method
