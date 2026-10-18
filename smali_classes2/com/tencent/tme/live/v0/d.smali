.class public Lcom/tencent/tme/live/v0/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/j/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/common/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;)V
    .locals 3

    const-class v0, Lcom/tencent/tme/live/v0/k;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/v0/k;->c:Lcom/tencent/tme/live/v0/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/v0/k;

    invoke-direct {v1}, Lcom/tencent/tme/live/v0/k;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/v0/k;->c:Lcom/tencent/tme/live/v0/k;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/v0/k;->c:Lcom/tencent/tme/live/v0/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_ROOMCHAT:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v1, Lcom/tencent/tme/live/v0/k;->b:Lcom/tencent/tme/live/v0/k$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_UPDATE_ROOM_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 6
    :try_start_1
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/tencent/tme/live/w0/o$a;->a(Lcom/tencent/protocol/tme/broadcastMsg/RoomInfoUpdateNotify;)Lcom/tencent/tme/live/w0/o$a;

    move-result-object p1

    iget-object v0, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "updateRoomInfo"

    .line 7
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_UPDATE_MATCH_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 10
    :try_start_2
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;

    if-eqz p1, :cond_c

    const-string v0, "updateMatchInfo"

    .line 11
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_ROOM_USER_NUM_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 14
    :try_start_3
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;

    if-eqz p1, :cond_c

    const-string v0, "updateRoomOnlineNum"

    .line 15
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 17
    :cond_4
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_OPERATION_MESSAGE:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 18
    :try_start_4
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeChatRoom:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    const-string v0, "operationChatMsg"

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeLive:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_c

    const-string v0, "operationLiveMsg"

    :goto_0
    invoke-static {p1}, Lcom/tencent/tme/live/w0/h;->a(Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;)Lcom/tencent/tme/live/w0/h;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 21
    :cond_6
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_REALTIME_QUESTION_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 22
    :try_start_5
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    invoke-static {p1}, Lcom/tencent/tme/live/w0/k;->a(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;)Lcom/tencent/tme/live/w0/k;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "handleQuestionVoteMsg, questionBean is null"

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "questionVoteMsg"

    .line 23
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 25
    :cond_8
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_RED_PACKET_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 26
    :try_start_6
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->A:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;

    invoke-static {p1}, Lcom/tencent/tme/live/w0/j;->a(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;)Lcom/tencent/tme/live/w0/j;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "handleQuestionVoteMsg, questionBean is null"

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, "redPacketMsg"

    .line 27
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    :catch_5
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 29
    :cond_a
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_BATTLE_STATUS_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_c

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 30
    :try_start_7
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->B:Z

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v1, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;

    const-string v0, "gameDataTabChanged"

    invoke-static {p1}, Lcom/tencent/tme/live/w0/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;)Lcom/tencent/tme/live/w0/b;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_6
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
