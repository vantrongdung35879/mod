.class public Lcom/tencent/tme/live/k/d;
.super Lcom/tencent/tme/live/k/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/k/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/k/e<",
        "Lcom/tencent/tme/live/k/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->CMD_CONN:Lcom/tencent/protocol/tme/conn/conn_cmd_types;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->getValue()I

    move-result v0

    return v0
.end method

.method public a(Lcom/tencent/tme/live/w1/b;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/tencent/tme/live/k/d$a;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    const-class v1, Lcom/tencent/protocol/tme/conn/LogoutRsp;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/conn/LogoutRsp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    const-string p1, "LogoutProxy \u89e3\u6790\u5931\u8d25"

    const/4 v0, 0x0

    const-string v1, "LogoutProxy"

    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;
    .locals 6

    check-cast p1, Lcom/tencent/tme/live/k/d$a;

    .line 1
    new-instance v0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;

    invoke-direct {v0}, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tme/live/k/d$a;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 3
    :cond_0
    iput-object v1, v0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_openid:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tme/live/k/d$a;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 4
    :goto_0
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->tme_ltoken:Lokio/ByteString;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/LogoutReq$Builder;->build()Lcom/tencent/protocol/tme/conn/LogoutReq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iget-object v5, p1, Lcom/tencent/tme/live/f/d;->c:[B

    .line 6
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->CMD_CONN:Lcom/tencent/protocol/tme/conn/conn_cmd_types;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->getValue()I

    move-result v0

    .line 7
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGOUT:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGOUT:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v0

    return v0
.end method
