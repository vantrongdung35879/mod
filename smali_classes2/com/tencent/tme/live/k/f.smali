.class public Lcom/tencent/tme/live/k/f;
.super Lcom/tencent/tme/live/k/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/k/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/k/e<",
        "Lcom/tencent/tme/live/k/f$a;",
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

    check-cast p2, Lcom/tencent/tme/live/k/f$a;

    .line 5
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    const-class v1, Lcom/tencent/protocol/tme/conn/Room_EnterRsp;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/conn/Room_EnterRsp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;
    .locals 6

    check-cast p1, Lcom/tencent/tme/live/k/f$a;

    .line 1
    new-instance v0, Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;

    invoke-direct {v0}, Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;-><init>()V

    iget-object p1, p1, Lcom/tencent/tme/live/k/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;->roomid(Ljava/lang/String;)Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;

    sget-object p1, Lcom/tencent/tme/live/e/a;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;->nick_name(Ljava/lang/String;)Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/Room_EnterReq$Builder;->build()Lcom/tencent/protocol/tme/conn/Room_EnterReq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iget-object v5, p1, Lcom/tencent/tme/live/f/d;->c:[B

    .line 2
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->CMD_CONN:Lcom/tencent/protocol/tme/conn/conn_cmd_types;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->getValue()I

    move-result v0

    .line 3
    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_ROOM_ENTER:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_ROOM_ENTER:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result v0

    return v0
.end method
