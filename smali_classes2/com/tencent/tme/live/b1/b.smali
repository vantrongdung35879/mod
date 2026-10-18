.class public Lcom/tencent/tme/live/b1/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/tencent/tme/live/b1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/b1/b;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/b1/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/b1/b;->a:Lcom/tencent/tme/live/b1/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/b1/b;

    invoke-direct {v1}, Lcom/tencent/tme/live/b1/b;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/b1/b;->a:Lcom/tencent/tme/live/b1/b;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/b1/b;->a:Lcom/tencent/tme/live/b1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "%s\uff1a%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 p2, 0x11

    invoke-virtual {v2, v1, v3, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public a()Lcom/tencent/tme/live/w0/a;
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/w0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/a;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    const/16 v1, -0x3d9a

    iput v1, v0, Lcom/tencent/tme/live/w0/a;->b:I

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Lcom/tencent/tme/live/w0/a;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/b;->c(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Z

    move-result v0

    new-instance v1, Lcom/tencent/tme/live/w0/a;

    invoke-direct {v1}, Lcom/tencent/tme/live/w0/a;-><init>()V

    const v2, -0x7e6d48

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v0

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2
    const-string v3, ""

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v2}, Lcom/tencent/tme/live/b1/d;->a(ILjava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tme/live/b1/d;->b(I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tme/live/w0/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/tencent/tme/live/w0/a;->d:Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/s2/g;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const p1, -0x1a0d01

    :goto_1
    iput p1, v1, Lcom/tencent/tme/live/w0/a;->b:I

    const/4 p1, -0x1

    iput p1, v1, Lcom/tencent/tme/live/w0/a;->e:I

    return-object v1
.end method

.method public declared-synchronized a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;Z)Lcom/tencent/tme/live/w0/a;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/tme/live/w0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/a;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeNormaL:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v3}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v3}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/b;->b(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Lcom/tencent/tme/live/w0/a;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Lcom/tencent/tme/live/w0/a;

    move-result-object p1

    :goto_0
    move-object v0, p1

    iput-boolean p2, v0, Lcom/tencent/tme/live/w0/a;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "getMsg error : "

    invoke-static {p2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string p2, "ChatUitl"

    invoke-static {p2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final b(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Lcom/tencent/tme/live/w0/a;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b1/b;->c(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Z

    move-result v0

    new-instance v1, Lcom/tencent/tme/live/w0/a;

    invoke-direct {v1}, Lcom/tencent/tme/live/w0/a;-><init>()V

    const v2, -0x483d35

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v0

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1
    const-string p1, ""

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v2}, Lcom/tencent/tme/live/b1/d;->a(ILjava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/b1/d;->b(I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/tme/live/w0/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iput-object p1, v1, Lcom/tencent/tme/live/w0/a;->d:Landroid/text/SpannableStringBuilder;

    const/16 p1, -0x3d9a

    iput p1, v1, Lcom/tencent/tme/live/w0/a;->b:I

    const/4 p1, -0x1

    iput p1, v1, Lcom/tencent/tme/live/w0/a;->e:I

    return-object v1
.end method

.method public final c(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)Z
    .locals 3

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 4
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
