.class public Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;
.super Landroid/view/View;

# interfaces
.implements Lcom/tencent/tme/live/m/l;
.implements Lcom/tencent/tme/live/m/m;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/tencent/tme/live/m/l$a;

.field public d:Lcom/tencent/tme/live/u/a;

.field public e:Z

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Z

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->b:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->g:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->b:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->g:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    iput p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->d()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->a:Z

    return v0
.end method

.method public b()J
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->b:Z

    return v0
.end method

.method public clear()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->i:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->j:Z

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e()V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->j:Z

    .line 5
    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->i:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    const/4 v1, 0x1

    .line 1
    sput-boolean v1, Lcom/tencent/tme/live/m/j;->d:Z

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
    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->d:Lcom/tencent/tme/live/u/a;

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->g:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfig()Lcom/tencent/tme/live/o/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lcom/tencent/tme/live/n/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->c:Lcom/tencent/tme/live/m/l$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getWidth()I

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

.method public isHardwareAccelerated()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;)V

    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->j:Z

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->h:Z

    .line 1
    iget-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->g:Z

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->a:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->d:Lcom/tencent/tme/live/u/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/u/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCallback(Lcom/tencent/tme/live/m/h$b;)V
    .locals 0

    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    return-void
.end method

.method public setOnDanmakuClickListener(Lcom/tencent/tme/live/m/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuView;->c:Lcom/tencent/tme/live/m/l$a;

    return-void
.end method
