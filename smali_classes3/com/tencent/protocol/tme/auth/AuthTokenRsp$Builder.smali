.class public final Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/auth/AuthTokenRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/auth/AuthTokenRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public auth_key:Lokio/ByteString;

.field public errmsg:Ljava/lang/String;

.field public result:Ljava/lang/Integer;

.field public tme_ltoken:Lokio/ByteString;

.field public tme_openid:Ljava/lang/String;

.field public token_expires:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/auth/AuthTokenRsp;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->errmsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->errmsg:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_openid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->auth_key:Lokio/ByteString;

    iget-object v0, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    iput-object v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_ltoken:Lokio/ByteString;

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->token_expires:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public auth_key(Lokio/ByteString;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->auth_key:Lokio/ByteString;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->build()Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/auth/AuthTokenRsp;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;-><init>(Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;Lcom/tencent/protocol/tme/auth/AuthTokenRsp$1;)V

    return-object v0
.end method

.method public errmsg(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->errmsg:Ljava/lang/String;

    return-object p0
.end method

.method public result(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->result:Ljava/lang/Integer;

    return-object p0
.end method

.method public tme_ltoken(Lokio/ByteString;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_ltoken:Lokio/ByteString;

    return-object p0
.end method

.method public tme_openid(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->tme_openid:Ljava/lang/String;

    return-object p0
.end method

.method public token_expires(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/auth/AuthTokenRsp$Builder;->token_expires:Ljava/lang/Integer;

    return-object p0
.end method
