.class public final Lcom/tencent/protocol/tme/cs_head/CSHead;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AREA:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_CLIENT_VER:Ljava/lang/Integer;

.field public static final DEFAULT_COMMAND:Ljava/lang/Integer;

.field public static final DEFAULT_EXT:Lokio/ByteString;

.field public static final DEFAULT_HEAD_FLAG:Ljava/lang/Integer;

.field public static final DEFAULT_PARTITION:Ljava/lang/String; = ""

.field public static final DEFAULT_PLATID:Ljava/lang/String; = ""

.field public static final DEFAULT_REGIONID:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULT:Ljava/lang/Integer;

.field public static final DEFAULT_SEQ:Ljava/lang/Integer;

.field public static final DEFAULT_SUBCMD:Ljava/lang/Integer;

.field public static final DEFAULT_TME_LTOKEN:Lokio/ByteString;

.field public static final DEFAULT_TME_OPENID:Ljava/lang/String; = ""


# instance fields
.field public final area:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final channel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final client_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final client_ver:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final command:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final ext:Lokio/ByteString;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/tmes/Message$Datatype;->BYTES:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final head_flag:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final partition:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final platid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final regionid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final result:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final seq:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final subcmd:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final tme_ltoken:Lokio/ByteString;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/tmes/Message$Datatype;->BYTES:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final tme_openid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_COMMAND:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_SUBCMD:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_SEQ:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_CLIENT_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_HEAD_FLAG:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_CLIENT_VER:Ljava/lang/Integer;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v1, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_TME_LTOKEN:Lokio/ByteString;

    sput-object v1, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_EXT:Lokio/ByteString;

    sput-object v0, Lcom/tencent/protocol/tme/cs_head/CSHead;->DEFAULT_RESULT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->command:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->subcmd:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->seq:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_type:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->head_flag:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_ver:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_ltoken:Lokio/ByteString;

    iget-object v9, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->ext:Lokio/ByteString;

    iget-object v10, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->result:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->platid:Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->area:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->partition:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->channel:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_openid:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->regionid:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/tencent/protocol/tme/cs_head/CSHead;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;Lcom/tencent/protocol/tme/cs_head/CSHead$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/cs_head/CSHead;-><init>(Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_type:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_ver:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_ltoken:Lokio/ByteString;

    iput-object p8, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->ext:Lokio/ByteString;

    iput-object p9, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->result:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->platid:Ljava/lang/String;

    iput-object p11, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->area:Ljava/lang/String;

    iput-object p12, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->partition:Ljava/lang/String;

    iput-object p13, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->channel:Ljava/lang/String;

    iput-object p14, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_openid:Ljava/lang/String;

    iput-object p15, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->regionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/cs_head/CSHead;

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_ver:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_ver:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_ltoken:Lokio/ByteString;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_ltoken:Lokio/ByteString;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->ext:Lokio/ByteString;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->ext:Lokio/ByteString;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->result:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->platid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->platid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->area:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->area:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->partition:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->partition:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->channel:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_openid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_openid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->regionid:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->regionid:Ljava/lang/String;

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

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_ver:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_ltoken:Lokio/ByteString;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->ext:Lokio/ByteString;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->platid:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->area:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->partition:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->channel:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_openid:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/cs_head/CSHead;->regionid:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_f
    return v0
.end method
