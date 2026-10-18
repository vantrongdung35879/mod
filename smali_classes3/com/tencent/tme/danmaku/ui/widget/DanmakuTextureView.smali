.class public Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/tencent/tme/live/m/l;
.implements Lcom/tencent/tme/live/m/m;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/tencent/tme/live/m/l$a;

.field public d:Lcom/tencent/tme/live/u/a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->b:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->e:Z

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->b:Z

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->e:Z

    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->d()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z

    return v0
.end method

.method public declared-synchronized b()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->isShown()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 3
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v2, v0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->b:Z

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/tme/live/m/j;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setWillNotDraw(Z)V

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1
    sput-boolean v1, Lcom/tencent/tme/live/m/j;->d:Z

    sput-boolean v1, Lcom/tencent/tme/live/m/j;->e:Z

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
    iput-object v1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->d:Lcom/tencent/tme/live/u/a;

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

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

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->c:Lcom/tencent/tme/live/m/l$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    invoke-super {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    invoke-super {p0}, Landroid/view/TextureView;->getWidth()I

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

    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/TextureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z

    return-void
.end method

.method public declared-synchronized onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->d:Lcom/tencent/tme/live/u/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/u/a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    iput-object p1, p0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuTextureView;->c:Lcom/tencent/tme/live/m/l$a;

    return-void
.end method
