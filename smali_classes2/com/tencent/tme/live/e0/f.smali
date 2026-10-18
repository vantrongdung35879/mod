.class public Lcom/tencent/tme/live/e0/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e0/l;

.field public final synthetic b:Lcom/tencent/tme/live/e0/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/e0/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    iput-object p2, p0, Lcom/tencent/tme/live/e0/f;->a:Lcom/tencent/tme/live/e0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->a:Lcom/tencent/tme/live/e0/e;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    iget-object v1, p0, Lcom/tencent/tme/live/e0/f;->a:Lcom/tencent/tme/live/e0/l;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/e0/l;->i:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Lcom/tencent/tme/live/y/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    .line 3
    invoke-virtual {v1}, Lcom/tencent/tme/live/e0/g;->a()V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->c:Ljava/util/concurrent/Executor;

    .line 6
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->b:Ljava/util/concurrent/Executor;

    .line 10
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/e0/f;->b:Lcom/tencent/tme/live/e0/g;

    .line 11
    iget-object v0, v0, Lcom/tencent/tme/live/e0/g;->b:Ljava/util/concurrent/Executor;

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/tencent/tme/live/e0/f;->a:Lcom/tencent/tme/live/e0/l;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
