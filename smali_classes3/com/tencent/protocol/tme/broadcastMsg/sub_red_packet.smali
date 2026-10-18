.class public final Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GIFT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_GIFT_PIC:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_NUM:Ljava/lang/Integer;

.field public static final DEFAULT_POINTS:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final gift_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final gift_pic:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final points:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->DEFAULT_ID:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->DEFAULT_NUM:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->DEFAULT_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->DEFAULT_POINTS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;)V
    .locals 8

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->id:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->type:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_id:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->points:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v7, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_pic:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object p7, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_id:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

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

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_id:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_7
    return v0
.end method
