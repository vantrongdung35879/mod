.class public Lcom/tencent/tme/live/v0/k$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/v0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/b1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/b1/h<",
            "Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/tencent/tme/live/b1/h;

    const/16 v0, 0x64

    const/16 v1, 0x32

    invoke-direct {p1, v0, v1}, Lcom/tencent/tme/live/b1/h;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->u:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v0

    const-class v4, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    invoke-virtual {v0, p1, v4}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/b1/h;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "handleChatMsg exception  %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "NetBroadHandler"

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    monitor-enter v0

    .line 4
    :try_start_1
    iget-object v1, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    monitor-enter v0

    .line 6
    :try_start_2
    iget-object v1, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    const/16 v0, 0x3c

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    monitor-enter v4

    .line 8
    :try_start_3
    iget-object v5, v4, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 9
    check-cast v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    if-eqz v5, :cond_5

    iget-object v4, v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    invoke-static {v6}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/tencent/tme/live/b1/d;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/b1/b;->b()Lcom/tencent/tme/live/b1/b;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/tencent/tme/live/b1/b;->a(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;Z)Lcom/tencent/tme/live/w0/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    .line 10
    :cond_6
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v0

    const-string v2, "receiverChatMsg"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-wide/16 v0, 0x1f4

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_7
    const/4 p1, 0x3

    if-ne v0, p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/tencent/tme/live/v0/k$a;->a:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {p1}, Lcom/tencent/tme/live/b1/h;->a()V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_8
    :goto_2
    return-void
.end method
