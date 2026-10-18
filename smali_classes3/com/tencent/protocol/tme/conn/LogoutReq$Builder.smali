.class public final Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/conn/LogoutReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/conn/LogoutReq;",
        ">;"
    }
.end annotation


# instance fields
.field public tme_ltoken:Lokio/ByteString;

.field public tme_openid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/conn/LogoutReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/LogoutReq;->tme_openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_openid:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LogoutReq;->tme_ltoken:Lokio/ByteString;

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_ltoken:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->build()Lcom/tencent/protocol/tme/conn/LogoutReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/conn/LogoutReq;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/conn/LogoutReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/conn/LogoutReq;-><init>(Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;Lcom/tencent/protocol/tme/conn/LogoutReq$1;)V

    return-object v0
.end method

.method public tme_ltoken(Lokio/ByteString;)Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_ltoken:Lokio/ByteString;

    return-object p0
.end method

.method public tme_openid(Ljava/lang/String;)Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_openid:Ljava/lang/String;

    return-object p0
.end method
