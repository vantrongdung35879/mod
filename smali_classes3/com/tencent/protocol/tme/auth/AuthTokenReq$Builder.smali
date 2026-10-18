.class public final Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/auth/AuthTokenReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/auth/AuthTokenReq;",
        ">;"
    }
.end annotation


# instance fields
.field public area:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public client_time:Ljava/lang/Integer;

.field public client_type:Ljava/lang/Integer;

.field public game_openid:Ljava/lang/String;

.field public partition:Ljava/lang/String;

.field public platid:Ljava/lang/String;

.field public regionid:Ljava/lang/String;

.field public sdk_appid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->client_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_time:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->game_openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->game_openid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->sdk_appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->sdk_appid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->platid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->platid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->area:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->partition:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->partition:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->channel:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq;->regionid:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->regionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public area(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->area:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->build()Lcom/tencent/protocol/tme/auth/AuthTokenReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/auth/AuthTokenReq;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/auth/AuthTokenReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/auth/AuthTokenReq;-><init>(Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;Lcom/tencent/protocol/tme/auth/AuthTokenReq$1;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public client_time(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public client_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public game_openid(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->game_openid:Ljava/lang/String;

    return-object p0
.end method

.method public partition(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->partition:Ljava/lang/String;

    return-object p0
.end method

.method public platid(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->platid:Ljava/lang/String;

    return-object p0
.end method

.method public regionid(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->regionid:Ljava/lang/String;

    return-object p0
.end method

.method public sdk_appid(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->sdk_appid:Ljava/lang/String;

    return-object p0
.end method
