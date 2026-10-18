.class public Lcom/tencent/tme/live/p0/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/p0/b$b;,
        Lcom/tencent/tme/live/p0/b$a;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "score_board"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "reward_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "question_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "web_enterance_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "real_time_data_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "h5_game_data_base_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "packet_enterance_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2
    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p0/b;->a(Lorg/json/JSONArray;Lcom/tencent/tme/live/p0/b$a;)V

    return-void
.end method

.method public static a(IJLcom/tencent/tme/live/p0/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/tencent/tme/live/p0/b$b<",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/m;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "getScheduleList"

    new-instance p1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda7;-><init>(Lcom/tencent/tme/live/p0/b$b;)V

    invoke-static {p0, v0, p1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_3

    if-eqz p2, :cond_3

    const-string p0, "data"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    const-string p1, "operation_msg"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 63
    new-instance v0, Lcom/tencent/tme/live/w0/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/h;-><init>()V

    const-string v1, "msg_content"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/h;->e:Ljava/lang/String;

    const-string v1, "msgid"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    const-string v1, "msg_type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/h;->d:I

    const-string v1, "duration"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/h;->a:I

    const-string v1, "roomid"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/h;->b:Ljava/lang/String;

    const-string v1, "start_time"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v1, "end_time"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 64
    iget p2, v0, Lcom/tencent/tme/live/w0/h;->d:I

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeChatRoom:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    const-string p2, "operationChatMsg"

    goto :goto_1

    :cond_1
    iget p2, v0, Lcom/tencent/tme/live/w0/h;->d:I

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeLive:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    const-string p2, "operationLiveMsg"

    .line 65
    :goto_1
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/p0/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/p0/b$a<",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/o;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda6;-><init>(Lcom/tencent/tme/live/p0/b$a;)V

    const-string p0, "getRooms"

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/p0/b$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getConfig:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TMEHttpRepos"

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_43

    .line 6
    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/tme/live/w0/d;

    invoke-direct {p1}, Lcom/tencent/tme/live/w0/d;-><init>()V

    .line 7
    sput-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    .line 8
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/tencent/tme/live/w0/d;->a:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/tencent/tme/live/w0/d;->b:Z

    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, ""

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    const-string v1, "roomid"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/d;->D:Ljava/lang/String;

    const-string v0, "config_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_42

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/tme/live/w0/d;->E:Ljava/lang/String;

    const-string p1, "enter_room_wording"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/tme/live/w0/d;->d:Ljava/lang/String;

    :cond_2
    const-string p1, "score_board"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v3, Lcom/tencent/tme/live/w0/n;

    invoke-direct {v3}, Lcom/tencent/tme/live/w0/n;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "switch"

    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v3, Lcom/tencent/tme/live/w0/n;->a:Z

    const-string p1, "title"

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/tme/live/w0/n;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "jump_url"

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/tme/live/w0/n;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iput-object p3, v3, Lcom/tencent/tme/live/w0/n;->c:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_1
    iput-object v3, v1, Lcom/tencent/tme/live/w0/d;->e:Lcom/tencent/tme/live/w0/n;

    :cond_4
    const-string p1, "hot_word_list"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const-string v3, ";;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, p1, v4

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, p2, :cond_6

    :try_start_3
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, p2

    new-instance v7, Lcom/tencent/tme/live/w0/g;

    invoke-direct {v7, v6, v5}, Lcom/tencent/tme/live/w0/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 12
    :cond_7
    :goto_4
    iput-object v1, p3, Lcom/tencent/tme/live/w0/d;->f:Ljava/util/List;

    :cond_8
    const-string p1, "user_duration_timer"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    const/16 v1, 0xa

    if-eqz p3, :cond_a

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    :cond_9
    const/16 p1, 0xa

    .line 14
    :goto_5
    iput p1, p3, Lcom/tencent/tme/live/w0/d;->h:I

    :cond_a
    const-string p1, "popup_report_interval"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    :cond_b
    const/16 p1, 0xa

    .line 16
    :goto_6
    iput p1, p3, Lcom/tencent/tme/live/w0/d;->i:I

    :cond_c
    const-string p1, "popup_cfg_update_interval"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 18
    :catch_5
    :cond_d
    iput v1, p3, Lcom/tencent/tme/live/w0/d;->j:I

    :cond_e
    const-string p1, "redpacket_timer_interval"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    const/16 v1, 0x3c

    if-eqz p3, :cond_10

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    :cond_f
    const/16 p1, 0x3c

    .line 20
    :goto_7
    iput p1, p3, Lcom/tencent/tme/live/w0/d;->k:I

    :cond_10
    const-string p1, "open_tab"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    :cond_11
    const/4 p1, 0x1

    .line 22
    :goto_8
    iput p1, p3, Lcom/tencent/tme/live/w0/d;->l:I

    :cond_12
    const-string p1, "chat_cd"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    :try_start_9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    :cond_13
    const/4 p1, 0x3

    .line 24
    :goto_9
    iput p1, p3, Lcom/tencent/tme/live/w0/d;->n:I

    :cond_14
    const-string p1, "max_message_count"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    :try_start_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9

    .line 26
    :catch_9
    :cond_15
    iput v1, p3, Lcom/tencent/tme/live/w0/d;->o:I

    :cond_16
    const-string p1, "android_notch_adapter_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    nop

    :cond_17
    const/4 p1, 0x1

    :goto_a
    if-ne p1, p2, :cond_18

    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    .line 28
    :goto_b
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->p:Z

    :cond_19
    const-string p1, "player_log_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    :catch_b
    nop

    :cond_1a
    const/4 p1, 0x0

    :goto_c
    if-ne p1, p2, :cond_1b

    const/4 p1, 0x1

    goto :goto_d

    :cond_1b
    const/4 p1, 0x0

    .line 30
    :goto_d
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->q:Z

    :cond_1c
    const-string p1, "log_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 31
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    :try_start_d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_e

    :catch_c
    nop

    :cond_1d
    const/4 p1, 0x0

    :goto_e
    if-ne p1, p2, :cond_1e

    const/4 p1, 0x1

    goto :goto_f

    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_f
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->r:Z

    :cond_1f
    const-string p1, "popup_window_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_10

    :catch_d
    nop

    :cond_20
    const/4 p1, 0x0

    :goto_10
    if-ne p1, p2, :cond_21

    const/4 p1, 0x1

    goto :goto_11

    :cond_21
    const/4 p1, 0x0

    .line 34
    :goto_11
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->s:Z

    :cond_22
    const-string p1, "danmu_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_25

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    :try_start_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_12

    :catch_e
    nop

    :cond_23
    const/4 p1, 0x0

    :goto_12
    if-ne p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_13

    :cond_24
    const/4 p1, 0x0

    .line 36
    :goto_13
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->t:Z

    :cond_25
    const-string p1, "chat_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    :try_start_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_14

    :catch_f
    nop

    :cond_26
    const/4 p1, 0x0

    :goto_14
    if-ne p1, p2, :cond_27

    const/4 p1, 0x1

    goto :goto_15

    :cond_27
    const/4 p1, 0x0

    .line 38
    :goto_15
    iput-boolean p1, p3, Lcom/tencent/tme/live/w0/d;->u:Z

    :cond_28
    const-string p1, "tv_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 39
    const-string p3, "tv_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    :try_start_11
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_16

    :catch_10
    nop

    :cond_29
    const/4 p3, 0x0

    :goto_16
    if-ne p3, p2, :cond_2a

    const/4 p3, 0x1

    goto :goto_17

    :cond_2a
    const/4 p3, 0x0

    .line 40
    :goto_17
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->v:Z

    :cond_2b
    const-string p1, "player_disabled"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 41
    const-string p3, "player_disabled"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    :try_start_12
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_18

    :catch_11
    nop

    :cond_2c
    const/4 p3, 0x0

    :goto_18
    if-ne p3, p2, :cond_2d

    const/4 p3, 0x1

    goto :goto_19

    :cond_2d
    const/4 p3, 0x0

    .line 42
    :goto_19
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->w:Z

    :cond_2e
    const-string p1, "reward_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 43
    const-string p3, "reward_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    :try_start_13
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_1a

    :catch_12
    nop

    :cond_2f
    const/4 p3, 0x0

    :goto_1a
    if-ne p3, p2, :cond_30

    const/4 p3, 0x1

    goto :goto_1b

    :cond_30
    const/4 p3, 0x0

    .line 44
    :goto_1b
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->x:Z

    :cond_31
    const-string p1, "question_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 45
    const-string p3, "question_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    :try_start_14
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_13

    goto :goto_1c

    :catch_13
    nop

    :cond_32
    const/4 p3, 0x0

    :goto_1c
    if-ne p3, p2, :cond_33

    const/4 p3, 0x1

    goto :goto_1d

    :cond_33
    const/4 p3, 0x0

    .line 46
    :goto_1d
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->y:Z

    :cond_34
    const-string p1, "web_enterance_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 47
    const-string p3, "web_enterance_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    :try_start_15
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_14

    goto :goto_1e

    :catch_14
    nop

    :cond_35
    const/4 p3, 0x0

    :goto_1e
    if-ne p3, p2, :cond_36

    const/4 p3, 0x1

    goto :goto_1f

    :cond_36
    const/4 p3, 0x0

    .line 48
    :goto_1f
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->z:Z

    :cond_37
    const-string p1, "real_time_data_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 49
    const-string p3, "real_time_data_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    :try_start_16
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_15

    goto :goto_20

    :catch_15
    nop

    :cond_38
    const/4 p3, 0x0

    :goto_20
    if-ne p3, p2, :cond_39

    const/4 p3, 0x1

    goto :goto_21

    :cond_39
    const/4 p3, 0x0

    .line 50
    :goto_21
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->B:Z

    :cond_3a
    const-string p1, "h5_game_data_base_url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    const-string p3, "h5_game_data_base_url"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/tme/live/w0/d;->c:Ljava/lang/String;

    :cond_3b
    const-string p1, "packet_enterance_switch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 51
    const-string p3, "packet_enterance_switch"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    :try_start_17
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_16

    goto :goto_22

    :catch_16
    nop

    :cond_3c
    const/4 p3, 0x0

    :goto_22
    if-ne p3, p2, :cond_3d

    const/4 p3, 0x1

    goto :goto_23

    :cond_3d
    const/4 p3, 0x0

    .line 52
    :goto_23
    iput-boolean p3, p1, Lcom/tencent/tme/live/w0/d;->A:Z

    :cond_3e
    const-string p1, "poptv_player_click"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    .line 53
    const-string p3, "poptv_player_click"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :try_start_18
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_17

    goto :goto_24

    :catch_17
    nop

    :cond_3f
    const/4 p3, 0x0

    :goto_24
    if-ne p3, p2, :cond_40

    goto :goto_25

    :cond_40
    const/4 p2, 0x0

    .line 54
    :goto_25
    iput-boolean p2, p1, Lcom/tencent/tme/live/w0/d;->C:Z

    :cond_41
    const-string p1, "tv_tab_list"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_42

    :try_start_19
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/w0/d;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_26
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v2, p1, :cond_42

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p3

    iget-object p3, p3, Lcom/tencent/tme/live/w0/d;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/tme/live/w0/p;->a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/p;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_42
    const-string p1, "GlobalConfig parse:"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/tme/live/w0/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    if-eqz p0, :cond_44

    .line 55
    invoke-interface {p0, p1}, Lcom/tencent/tme/live/p0/b$a;->a(Ljava/lang/Object;)V

    goto :goto_27

    :cond_43
    if-eqz p0, :cond_44

    invoke-interface {p0, v0}, Lcom/tencent/tme/live/p0/b$a;->a(Ljava/lang/Object;)V

    :cond_44
    :goto_27
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/p0/b$a;Ljava/lang/String;Lcom/tencent/tme/live/w0/d;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/tencent/tme/live/p0/b$a;->a(Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p0, "initConfigRefresh"

    invoke-static {p0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    iget-boolean p0, p2, Lcom/tencent/tme/live/w0/d;->s:Z

    if-eqz p0, :cond_2

    .line 56
    new-instance p0, Lcom/tencent/tme/live/p0/a;

    invoke-direct {p0}, Lcom/tencent/tme/live/p0/a;-><init>()V

    invoke-static {p0}, Lcom/tencent/tme/live/j1/b;->a(Lcom/tencent/tme/live/v0/g;)V

    .line 57
    :cond_2
    iget-boolean p0, p2, Lcom/tencent/tme/live/w0/d;->r:Z

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/tme/live/b1/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 59
    sput-boolean p0, Lcom/tencent/tme/live/t1/e;->b:Z

    sput-object v0, Lcom/tencent/tme/live/t1/e;->c:Ljava/lang/String;

    .line 60
    :cond_3
    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->a(Z)V

    .line 61
    iget-boolean p0, p2, Lcom/tencent/tme/live/w0/d;->r:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "gameInitJson:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/p0/b$b;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xc8

    move/from16 v5, p1

    if-ne v5, v3, :cond_f

    if-eqz v1, :cond_f

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "is_last_page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "day_list"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_e

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v7, Lcom/tencent/tme/live/w0/m;

    invoke-direct {v7}, Lcom/tencent/tme/live/w0/m;-><init>()V

    const-string v8, "date_timestamp"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/tme/live/w0/m;->a:J

    const-string v8, "season_list"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_a

    new-instance v11, Lcom/tencent/tme/live/w0/m$b;

    invoke-direct {v11}, Lcom/tencent/tme/live/w0/m$b;-><init>()V

    const-string v12, "season_id"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/tencent/tme/live/w0/m$b;->a:Ljava/lang/String;

    const-string v12, "season_info"

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/tencent/tme/live/w0/m$b;->b:Ljava/lang/String;

    const-string v12, "match_list"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v14, "stage_list"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v12, :cond_4

    .line 68
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v15, v4, :cond_3

    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 p1, v1

    if-eqz v4, :cond_2

    new-instance v1, Lcom/tencent/tme/live/w0/m$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/w0/m$a;-><init>()V

    move/from16 p3, v2

    const-string v2, "schedule_id"

    invoke-virtual {v4, v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tme/live/w0/m$a;->a:Ljava/lang/String;

    const-string v2, "teamA_info"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/tencent/tme/live/w0/m;->a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/m$d;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tme/live/w0/m$a;->b:Lcom/tencent/tme/live/w0/m$d;

    :cond_0
    const-string v2, "teamB_info"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/tencent/tme/live/w0/m;->a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/m$d;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tme/live/w0/m$a;->c:Lcom/tencent/tme/live/w0/m$d;

    :cond_1
    const-string v2, "teamA_score"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tme/live/w0/m$a;->d:I

    const-string v2, "teamB_score"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tme/live/w0/m$a;->e:I

    const-string v2, "match_time"

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/tencent/tme/live/w0/m$a;->f:J

    const-string v2, "status"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tme/live/w0/m$a;->g:I

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move/from16 p3, v2

    move/from16 v16, v5

    move-object/from16 v17, v6

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_2

    :cond_3
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    move-object/from16 v17, v6

    .line 69
    iput-object v14, v11, Lcom/tencent/tme/live/w0/m$b;->c:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    move-object/from16 v17, v6

    :goto_4
    if-eqz v10, :cond_9

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v5, Lcom/tencent/tme/live/w0/m$c;

    invoke-direct {v5}, Lcom/tencent/tme/live/w0/m$c;-><init>()V

    const-string v6, "stage_info"

    invoke-virtual {v4, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/tme/live/w0/m$c;->a:Ljava/lang/String;

    const-string v6, "schedule_id_list"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_5

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_5
    iput-object v6, v5, Lcom/tencent/tme/live/w0/m$c;->b:Ljava/util/List;

    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 71
    :cond_8
    iput-object v1, v11, Lcom/tencent/tme/live/w0/m$b;->d:Ljava/util/List;

    :cond_9
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    move-object/from16 v17, v6

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto/16 :goto_1

    :cond_b
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    .line 72
    iput-object v8, v7, Lcom/tencent/tme/live/w0/m;->b:Ljava/util/List;

    goto :goto_8

    :cond_c
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    :goto_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    move-object/from16 p1, v1

    move/from16 p3, v2

    move/from16 v16, v5

    :goto_9
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_e
    move/from16 p3, v2

    move/from16 v4, p3

    move-object v2, v3

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz v0, :cond_10

    .line 73
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/tencent/tme/live/p0/b$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/w0/d;)V
    .locals 0

    const-string p0, "enterLiveConfigRefresh"

    invoke-static {p0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/w0/o$a;Lcom/tencent/tme/live/p0/b$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/w0/o$a;",
            "Lcom/tencent/tme/live/p0/b$b<",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/o$b;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "vid"

    iget-object v2, p0, Lcom/tencent/tme/live/w0/o$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "getStreamInfo"

    new-instance v2, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda5;-><init>(Lcom/tencent/tme/live/w0/o$a;Lcom/tencent/tme/live/p0/b$b;)V

    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/w0/o$a;Lcom/tencent/tme/live/p0/b$b;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_0

    if-eqz p4, :cond_0

    const-string p2, "data"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Lcom/tencent/tme/live/w0/o$b;->a(Lcom/tencent/tme/live/w0/o$a;Lorg/json/JSONObject;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    aget-object p2, p0, p2

    check-cast p2, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    aget-object p0, p0, p3

    invoke-interface {p1, p2, p0}, Lcom/tencent/tme/live/p0/b$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "getOperationMsg"

    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tme/live/p0/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/p0/b$a<",
            "Lcom/tencent/tme/live/w0/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tme/live/w0/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/d;-><init>()V

    .line 3
    sput-object v0, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "enter_room_wording"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "score_board"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "hot_word_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "user_duration_timer"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "open_tab"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "tv_tab_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "chat_cd"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "android_notch_adapter_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "player_log_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "log_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "danmu_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "chat_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "tv_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "popup_window_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "player_disabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "max_message_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "reward_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "popup_report_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "redpacket_timer_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "popup_cfg_update_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "question_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "web_enterance_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "packet_enterance_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "real_time_data_switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "h5_game_data_base_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "poptv_player_click"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 5
    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/p0/b$a;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p0/b;->a(Lorg/json/JSONArray;Lcom/tencent/tme/live/p0/b$a;)V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;Lcom/tencent/tme/live/p0/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/tencent/tme/live/p0/b$a<",
            "Lcom/tencent/tme/live/w0/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "config_key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "roomid"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "adult_status"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    iget v1, v1, Lcom/tencent/tme/live/framework/common/b;->A:I

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "getConfig"

    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/p0/b$a;)V

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/tencent/tme/live/p0/b$a;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "hot_word_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "enter_room_wording"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2
    new-instance v1, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/tencent/tme/live/p0/b$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p0/b;->a(Lorg/json/JSONArray;Lcom/tencent/tme/live/p0/b$a;)V

    return-void
.end method

.method public static b(Lcom/tencent/tme/live/p0/b$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 10

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_4

    const-string p1, "data"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    const-string p2, "roomsets"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/tencent/tme/live/w0/o;

    invoke-direct {v2}, Lcom/tencent/tme/live/w0/o;-><init>()V

    const-string v3, "roomset_title"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/tme/live/w0/o;->a:Ljava/lang/String;

    const-string v3, "roomset_priority"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v3, "roomset_id"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "rooms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/tencent/tme/live/w0/o$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/w0/o$a;-><init>()V

    const-string v8, "room_title"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/tme/live/w0/o$a;->a:Ljava/lang/String;

    const-string v8, "room_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/tencent/tme/live/w0/o$a;->b:I

    const-string v8, "priority"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v8, "vid"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/tme/live/w0/o$a;->c:Ljava/lang/String;

    const-string v8, "seasonid"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "roomid"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    const-string v8, "member_cnt"

    invoke-virtual {v6, v8, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/tencent/tme/live/w0/o$a;->e:I

    const-string v8, "show_type"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/tencent/tme/live/w0/o$a;->f:I

    const-string v8, "image_url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/tencent/tme/live/w0/o$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iput-object v3, v2, Lcom/tencent/tme/live/w0/o;->b:Ljava/util/List;

    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz p0, :cond_5

    .line 6
    invoke-interface {p0, p2}, Lcom/tencent/tme/live/p0/b$a;->a(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/tencent/tme/live/w0/d;)V
    .locals 0

    const-string p0, "enterRoomConfigRefresh"

    invoke-static {p0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    return-void
.end method
