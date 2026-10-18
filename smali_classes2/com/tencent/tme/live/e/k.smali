.class public Lcom/tencent/tme/live/e/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k/e$b;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/k;->a:Lcom/tencent/tme/live/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    sget-object p1, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    iget-object p1, p0, Lcom/tencent/tme/live/e/k;->a:Lcom/tencent/tme/live/e/j;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/k/f$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "reqHello\u6210\u529f mRoomId = %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "j"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/k/h$a;->b:Lcom/tencent/protocol/tme/conn/Room_HelloRsp;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/k/h$a;->b:Lcom/tencent/protocol/tme/conn/Room_HelloRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/Room_HelloRsp;->hello_timespan:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    .line 8
    iget-object p1, p1, Lcom/tencent/tme/live/k/h$a;->b:Lcom/tencent/protocol/tme/conn/Room_HelloRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/Room_HelloRsp;->hello_timespan:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/tencent/tme/live/e/j;->k:I

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/e/k;->a:Lcom/tencent/tme/live/e/j;

    .line 9
    iput v1, p1, Lcom/tencent/tme/live/e/j;->g:I

    .line 10
    iget-object v0, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    sget v1, Lcom/tencent/tme/live/e/j;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reqHello\u5931\u8d25 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "j"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/k;->a:Lcom/tencent/tme/live/e/j;

    .line 1
    iget v0, p1, Lcom/tencent/tme/live/e/j;->g:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    sget v1, Lcom/tencent/tme/live/e/j;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object p1, p0, Lcom/tencent/tme/live/e/k;->a:Lcom/tencent/tme/live/e/j;

    .line 5
    iget v0, p1, Lcom/tencent/tme/live/e/j;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/tme/live/e/j;->g:I

    return-void
.end method
