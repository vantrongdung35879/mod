.class public final Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;,
        Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASEPLATE_END:Ljava/lang/String; = ""

.field public static final DEFAULT_BASEPLATE_START:Ljava/lang/String; = ""

.field public static final DEFAULT_HOTWORD_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_MEME_ID:Ljava/lang/Integer;

.field public static final DEFAULT_MSG_COLOR:Ljava/lang/String; = ""

.field public static final DEFAULT_MSG_CONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_MSG_SEQ:Ljava/lang/Integer;

.field public static final DEFAULT_MSG_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_OPENID:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOMID:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_USER_FACEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_NICK:Ljava/lang/String; = ""


# instance fields
.field public final baseplate_end:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final baseplate_start:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final hotword_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final meme_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final msg_color:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final msg_content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final msg_seq:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final msg_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final openid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final roomid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final user_faceurl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final user_nick:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->DEFAULT_MSG_SEQ:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->DEFAULT_MSG_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->DEFAULT_MEME_ID:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;)V
    .locals 14

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->roomid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->openid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_nick:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_faceurl:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_seq:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_content:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_color:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_type:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_start:Ljava/lang/String;

    iget-object v10, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_end:Ljava/lang/String;

    iget-object v11, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->hotword_id:Ljava/lang/String;

    iget-object v12, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->timestamp:Ljava/lang/Integer;

    iget-object v13, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->meme_id:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_faceurl:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_seq:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_start:Ljava/lang/String;

    iput-object p10, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_end:Ljava/lang/String;

    iput-object p11, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    iput-object p12, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->timestamp:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_faceurl:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_faceurl:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_seq:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_seq:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_start:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_start:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_end:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_end:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->timestamp:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

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

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_faceurl:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_seq:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_start:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_end:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_d
    return v0
.end method
