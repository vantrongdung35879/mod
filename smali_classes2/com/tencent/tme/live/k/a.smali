.class public Lcom/tencent/tme/live/k/a;
.super Lcom/tencent/tme/live/k/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/k/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/k/e<",
        "Lcom/tencent/tme/live/k/a$a;",
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

    sget-object v0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->getValue()I

    move-result v0

    return v0
.end method

.method public a(Lcom/tencent/tme/live/w1/b;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/tencent/tme/live/k/a$a;

    .line 5
    :try_start_0
    const-string v0, "AuthProxy"

    const-string v1, "parsePbRspBuf result"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    const-class v1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iput-object p1, p2, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;
    .locals 7

    const-string v0, "AuthProxy"

    check-cast p1, Lcom/tencent/tme/live/k/a$a;

    .line 1
    new-instance p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;

    invoke-direct {p1}, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;-><init>()V

    :try_start_0
    sget v1, Lcom/tencent/tme/live/e/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_type:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->client_time:Ljava/lang/Integer;

    sget-object v1, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->game_openid:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->m:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->sdk_appid:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->q:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->platid:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->s:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->regionid:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->r:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->area:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->p:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->partition:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->channel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/auth/AuthTokenReq$Builder;->build()Lcom/tencent/protocol/tme/auth/AuthTokenReq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->toByteArray()[B

    move-result-object v3

    .line 2
    sget-object p1, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->getValue()I

    move-result v1

    .line 3
    sget-object p1, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/auth/auth_subcmd;->getValue()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object p1

    const-string v1, "convertParamToPbReqBuf success"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "convertParamToPbReqBuf   :  "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method public b()I
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/auth/auth_subcmd;->getValue()I

    move-result v0

    return v0
.end method
