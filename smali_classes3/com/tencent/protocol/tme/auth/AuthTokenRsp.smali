.class public final Lcom/tencent/protocol/tme/auth/AuthTokenRsp;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUTH_KEY:Lokio/ByteString;

.field public static final DEFAULT_ERRMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULT:Ljava/lang/Integer;

.field public static final DEFAULT_TME_LTOKEN:Lokio/ByteString;

.field public static final DEFAULT_TME_OPENID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN_EXPIRES:Ljava/lang/Integer;


# instance fields
.field public final auth_key:Lokio/ByteString;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->BYTES:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final errmsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final result:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final tme_ltoken:Lokio/ByteString;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->BYTES:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final tme_openid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final token_expires:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->DEFAULT_RESULT:Ljava/lang/Integer;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->DEFAULT_AUTH_KEY:Lokio/ByteString;

    sput-object v1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->DEFAULT_TME_LTOKEN:Lokio/ByteString;

    sput-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->DEFAULT_TOKEN_EXPIRES:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;)V
    .locals 7

    iget-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->errmsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_openid:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->auth_key:Lokio/ByteString;

    iget-object v5, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_ltoken:Lokio/ByteString;

    iget-object v6, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->token_expires:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;Lcom/tencent/protocol/tme/auth/AuthTokenRsp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;-><init>(Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->errmsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    iput-object p5, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    iput-object p6, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->errmsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->errmsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

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

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->errmsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_6
    return v0
.end method
