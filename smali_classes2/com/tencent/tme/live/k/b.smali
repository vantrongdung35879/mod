.class public Lcom/tencent/tme/live/k/b;
.super Lcom/tencent/tme/live/k/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/k/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/k/e<",
        "Lcom/tencent/tme/live/k/b$a;",
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

    check-cast p2, Lcom/tencent/tme/live/k/b$a;

    .line 7
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    const-class v1, Lcom/tencent/protocol/tme/conn/LoginRsp;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/conn/LoginRsp;

    iput-object p1, p2, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    const-string p1, "ConnProxy"

    const-string v0, "ConnProxy \u89e3\u6790\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p2, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;
    .locals 6

    check-cast p1, Lcom/tencent/tme/live/k/b$a;

    .line 1
    new-instance v0, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;

    invoke-direct {v0}, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tme/live/k/b$a;->b:Lokio/ByteString;

    if-nez v1, :cond_0

    .line 2
    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    iput-object v1, v0, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;->tme_openid:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tme/live/k/b$a;->c:Lokio/ByteString;

    iput-object v1, v0, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;->tme_ltoken:Lokio/ByteString;

    iget p1, p1, Lcom/tencent/tme/live/k/b$a;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;->network_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/LoginReq$Builder;->build()Lcom/tencent/protocol/tme/conn/LoginReq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iget-object v5, p1, Lcom/tencent/tme/live/f/d;->c:[B

    .line 4
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->CMD_CONN:Lcom/tencent/protocol/tme/conn/conn_cmd_types;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->getValue()I

    move-result v0

    .line 5
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGIN:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object p1

    const-string v0, "payload-2-"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tme/live/w1/c;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnProxy"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()I
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGIN:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v0

    return v0
.end method
