.class public Lcom/tencent/tme/live/chat/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/chat/h$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/tme/live/chat/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xca

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_6

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_emoj_input_failed:I

    goto :goto_3

    :cond_3
    :goto_0
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_msg_error_3:I

    goto :goto_3

    :cond_4
    :goto_1
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_msg_error_2:I

    goto :goto_3

    :cond_5
    :goto_2
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_msg_error_1:I

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    const-string p0, ""

    :goto_4
    return-object p0
.end method

.method public static a(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/tencent/tme/live/chat/h$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/tme/live/w0/d;->u:Z

    if-nez v1, :cond_1

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/tencent/tme/live/w0/q;

    invoke-direct {p2, p0, p1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p0

    const-string p1, "showTipOnVideoCenter"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "roomid"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_nick"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "msg_content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "msg_seq"

    sget-object v3, Lcom/tencent/tme/live/chat/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "msg_type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "msg_color"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "adult_status"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/framework/common/b;->A:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "game_level"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/framework/common/b;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "meme_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/tme/live/chat/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string v0, "roomChat"

    new-instance v2, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const/16 p5, 0xc8

    if-ne p4, p5, :cond_3

    if-eqz p6, :cond_3

    const-string p4, "result"

    invoke-virtual {p6, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p0, p4}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p5

    const/16 p6, 0xcc

    if-ne p4, p6, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object p6

    invoke-virtual {p6}, Lcom/tencent/tme/live/b1/d;->b()V

    :cond_0
    if-nez p4, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/tme/live/b1/d;->c(I)Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;

    invoke-direct {p0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object p4

    iget-object p4, p4, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->roomid:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object p4

    iget-object p4, p4, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_nick:Ljava/lang/String;

    const-string p4, ""

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_content:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_type:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->hotword_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->meme_id:Ljava/lang/Integer;

    invoke-static {}, Lcom/tencent/tme/live/b1/b;->b()Lcom/tencent/tme/live/b1/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;Z)Lcom/tencent/tme/live/w0/a;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p0, "receiverChatMsg"

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/tencent/tme/live/w0/q;

    invoke-direct {p1, p0, p5}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "showTipOnVideoCenter"

    .line 3
    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 4
    invoke-interface {p3, p5}, Lcom/tencent/tme/live/chat/h$a;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lcom/tencent/tme/live/chat/h$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->u:Z

    if-nez v0, :cond_1

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/tencent/tme/live/w0/q;

    invoke-direct {p2, p0, p1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p0

    const-string p1, "showTipOnVideoCenter"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomid"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_nick"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg_content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg_seq"

    sget-object v2, Lcom/tencent/tme/live/chat/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg_color"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adult_status"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/framework/common/b;->A:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "game_level"

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/framework/common/b;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    const-string v1, "hotword_id"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lcom/tencent/tme/live/chat/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string v1, "roomChat"

    new-instance v8, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;)V

    invoke-static {v1, v0, v8}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const/16 p6, 0xc8

    if-ne p5, p6, :cond_2

    if-eqz p7, :cond_2

    const-string p5, "result"

    invoke-virtual {p7, p5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {p0, p5}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p6

    if-nez p5, :cond_0

    new-instance p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;

    invoke-direct {p0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object p5

    iget-object p5, p5, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->roomid:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object p5

    iget-object p5, p5, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_nick:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_content:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_type:Ljava/lang/Integer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->hotword_id:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->meme_id:Ljava/lang/Integer;

    invoke-static {}, Lcom/tencent/tme/live/b1/b;->b()Lcom/tencent/tme/live/b1/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;Z)Lcom/tencent/tme/live/w0/a;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p0, "receiverChatMsg"

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/tencent/tme/live/w0/q;

    invoke-direct {p1, p0, p6}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "showTipOnVideoCenter"

    .line 1
    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2
    invoke-interface {p4, p6}, Lcom/tencent/tme/live/chat/h$a;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
