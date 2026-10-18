.class public Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Lcom/tencent/tme/live/m/l;
.implements Lcom/tencent/tme/live/m/m;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lcom/tencent/tme/live/m/h$b;

.field public b:Landroid/view/SurfaceHolder;

.field public c:Landroid/os/HandlerThread;

.field public d:Lcom/tencent/tme/live/m/h;

.field public e:Z

.field public f:Z

.field public g:Lcom/tencent/tme/live/m/l$a;

.field public h:Lcom/tencent/tme/live/u/a;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->k:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->k:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->k:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    return v0
.end method

.method public b()J
    .locals 14

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Lcom/tencent/tme/live/m/h;->a(Landroid/graphics/Canvas;)Lcom/tencent/tme/live/r/a$b;

    move-result-object v6

    iget-boolean v7, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->i:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    .line 3
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "fps %.2f,time:%d s,cache:%d,miss:%d"

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->getCurrentTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v6, Lcom/tencent/tme/live/r/a$b;->r:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v6, Lcom/tencent/tme/live/r/a$b;->s:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object v10, v12, v9

    const/4 v9, 0x2

    aput-object v11, v12, v9

    const/4 v9, 0x3

    aput-object v6, v12, v9

    invoke-static {v7, v8, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    .line 5
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v1, v3

    .line 6
    :try_start_2
    iget-boolean v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_1

    :cond_4
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return-wide v1

    :goto_4
    :try_start_7
    iget-boolean v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    throw v1

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    return v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()F
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v3, v1, v0

    :cond_2
    return v3
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotCacheDrawing(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1
    sput-boolean v0, Lcom/tencent/tme/live/m/j;->d:Z

    sput-boolean v0, Lcom/tencent/tme/live/m/j;->e:Z

    .line 2
    const-class v0, Lcom/tencent/tme/live/u/a;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/tencent/tme/live/u/a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/u/a;-><init>(Lcom/tencent/tme/live/m/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->h:Lcom/tencent/tme/live/u/a;

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()V
    .locals 4

    const-string v0, "DFM Handler Thread #"

    iget-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-nez v1, :cond_4

    new-instance v1, Lcom/tencent/tme/live/m/h;

    iget v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->k:I

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x13

    goto :goto_0

    :cond_2
    const/4 v2, -0x8

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 2
    iget-boolean v2, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/tencent/tme/live/m/h;-><init>(Landroid/os/Looper;Lcom/tencent/tme/live/m/m;Z)V

    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getConfig()Lcom/tencent/tme/live/o/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/h;->a()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lcom/tencent/tme/live/n/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/m/h;->b()Lcom/tencent/tme/live/n/j;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->g:Lcom/tencent/tme/live/m/l$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYOff()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lcom/tencent/tme/live/m/h;->d:Z

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/SurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->h:Lcom/tencent/tme/live/u/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/u/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCallback(Lcom/tencent/tme/live/m/h$b;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->a:Lcom/tencent/tme/live/m/h$b;

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Lcom/tencent/tme/live/m/h;->g:Lcom/tencent/tme/live/m/h$b;

    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->k:I

    return-void
.end method

.method public setOnDanmakuClickListener(Lcom/tencent/tme/live/m/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->g:Lcom/tencent/tme/live/m/l$a;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/tencent/tme/live/m/h;->a(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->e:Z

    return-void
.end method
