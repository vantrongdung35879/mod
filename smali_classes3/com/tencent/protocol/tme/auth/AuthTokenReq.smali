.class public final Lcom/tencent/protocol/tme/auth/AuthTokenReq;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AREA:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_CLIENT_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_GAME_OPENID:Ljava/lang/String; = ""

.field public static final DEFAULT_PARTITION:Ljava/lang/String; = ""

.field public static final DEFAULT_PLATID:Ljava/lang/String; = ""

.field public static final DEFAULT_REGIONID:Ljava/lang/String; = ""

.field public static final DEFAULT_SDK_APPID:Ljava/lang/String; = ""


# instance fields
.field public final area:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final channel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final client_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final client_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final game_openid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final partition:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final platid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final regionid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final sdk_appid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->DEFAULT_CLIENT_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->DEFAULT_CLIENT_TIME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;)V
    .locals 10

    iget-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->game_openid:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->sdk_appid:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->platid:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->area:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->partition:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->channel:Ljava/lang/String;

    iget-object v9, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->regionid:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/tencent/protocol/tme/auth/AuthTokenReq;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;Lcom/tencent/protocol/tme/auth/AuthTokenReq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/auth/AuthTokenReq;-><init>(Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_type:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_time:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->game_openid:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->sdk_appid:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->platid:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->area:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->partition:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->channel:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->regionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_time:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->game_openid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->game_openid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->sdk_appid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->sdk_appid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->platid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->platid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->area:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->area:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->partition:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->partition:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->channel:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->regionid:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->regionid:Ljava/lang/String;

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

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_type:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_time:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->game_openid:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->sdk_appid:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->platid:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->area:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->partition:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->channel:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->regionid:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_9
    return v0
.end method
