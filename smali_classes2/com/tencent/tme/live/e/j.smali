.class public Lcom/tencent/tme/live/e/j;
.super Ljava/lang/Object;


# static fields
.field public static volatile j:Lcom/tencent/tme/live/e/j; = null

.field public static k:I = 0x2710


# instance fields
.field public final a:Lcom/tencent/tme/live/k/f;

.field public final b:Lcom/tencent/tme/live/k/f$a;

.field public final c:Lcom/tencent/tme/live/k/g;

.field public final d:Lcom/tencent/tme/live/k/g$a;

.field public final e:Lcom/tencent/tme/live/k/h;

.field public final f:Lcom/tencent/tme/live/k/h$a;

.field public g:I

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/e/j;->g:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/tme/live/e/j$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/j$c;-><init>(Lcom/tencent/tme/live/e/j;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/tme/live/k/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->a:Lcom/tencent/tme/live/k/f;

    new-instance v0, Lcom/tencent/tme/live/k/f$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/f$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    new-instance v0, Lcom/tencent/tme/live/k/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->e:Lcom/tencent/tme/live/k/h;

    new-instance v0, Lcom/tencent/tme/live/k/h$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/h$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    new-instance v0, Lcom/tencent/tme/live/k/g;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->c:Lcom/tencent/tme/live/k/g;

    new-instance v0, Lcom/tencent/tme/live/k/g$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/g$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/j;->d:Lcom/tencent/tme/live/k/g$a;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/e/j;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TME_NET_LINK]HelloRoomProxy... roomId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    iget-object v1, v1, Lcom/tencent/tme/live/k/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "j"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->e:Lcom/tencent/tme/live/k/h;

    new-instance v1, Lcom/tencent/tme/live/e/k;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e/k;-><init>(Lcom/tencent/tme/live/e/j;)V

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/e/j;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/e/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/e/j;

    invoke-direct {v1}, Lcom/tencent/tme/live/e/j;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/e/j;->j:Lcom/tencent/tme/live/e/j;
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
.method public a()V
    .locals 4

    const-string v0, "[TME_NET_LINK]ExitRoomProxy... roomId : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/e/j;->d:Lcom/tencent/tme/live/k/g$a;

    iget-object v1, v1, Lcom/tencent/tme/live/k/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "j"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tme/live/e/j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->c:Lcom/tencent/tme/live/k/g;

    new-instance v1, Lcom/tencent/tme/live/e/j$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e/j$b;-><init>(Lcom/tencent/tme/live/e/j;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e/j;->d:Lcom/tencent/tme/live/k/g$a;

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    iput-object p1, v0, Lcom/tencent/tme/live/k/f$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->f:Lcom/tencent/tme/live/k/h$a;

    iput-object p1, v0, Lcom/tencent/tme/live/k/h$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tme/live/e/j;->d:Lcom/tencent/tme/live/k/g$a;

    iput-object p1, v0, Lcom/tencent/tme/live/k/g$a;->a:Ljava/lang/String;

    .line 4
    const-string p1, "[TME_NET_LINK]EnterRoomProxy... roomId : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    iget-object v0, v0, Lcom/tencent/tme/live/k/f$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "j"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    iget-object p1, p1, Lcom/tencent/tme/live/k/f$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/e/j;->a:Lcom/tencent/tme/live/k/f;

    new-instance v0, Lcom/tencent/tme/live/e/j$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/j$a;-><init>(Lcom/tencent/tme/live/e/j;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/j;->b:Lcom/tencent/tme/live/k/f$a;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    return-void
.end method
