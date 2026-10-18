.class public Lcom/tencent/tme/live/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/w1/a;


# instance fields
.field public a:Lcom/tencent/tme/live/j/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/w1/b;)V
    .locals 4

    const-string v0, "NetBroadNotify"

    const-string v1, "pushNotify : "

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v2

    iget-object p1, p1, Lcom/tencent/tme/live/w1/b;->f:[B

    const-class v3, Lcom/tencent/protocol/tme/expressmsg/PushNotify;

    invoke-virtual {v2, p1, v3}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/expressmsg/PushNotify;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/PushNotify;->body:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v2

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    const-class v3, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;

    invoke-virtual {v2, v1, v3}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object v1

    check-cast v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expressMsg business_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    if-nez v3, :cond_3

    .line 1
    const-string v3, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 2
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_RELOGIN_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    invoke-virtual {v3}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tme/live/e/d;->a()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/tme/live/e/i;->a:Lcom/tencent/tme/live/j/b;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/tencent/tme/live/v0/d;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/v0/d;->a(Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "match error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(III)Z
    .locals 0

    sget-object p3, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->CMD_CONN:Lcom/tencent/protocol/tme/conn/conn_cmd_types;

    invoke-virtual {p3}, Lcom/tencent/protocol/tme/conn/conn_cmd_types;->getValue()I

    move-result p3

    if-ne p1, p3, :cond_0

    sget-object p1, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_PUSH:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {p1}, Lcom/tencent/protocol/tme/conn/conn_subcmd;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
