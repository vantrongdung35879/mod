.class public Lcom/tencent/tme/live/danmu/DanmuView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/content/Context;

.field public d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

.field public e:Lcom/tencent/tme/live/o/d;

.field public f:Lcom/tencent/tme/live/q/a;

.field public g:Z

.field public final h:Lcom/tencent/tme/live/o/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/danmu/DanmuView;->g:Z

    new-instance v0, Lcom/tencent/tme/live/danmu/DanmuView$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/danmu/DanmuView$a;-><init>(Lcom/tencent/tme/live/danmu/DanmuView;)V

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuView;->h:Lcom/tencent/tme/live/o/b$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->g:Z

    new-instance p2, Lcom/tencent/tme/live/danmu/DanmuView$a;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/danmu/DanmuView$a;-><init>(Lcom/tencent/tme/live/danmu/DanmuView;)V

    iput-object p2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->h:Lcom/tencent/tme/live/o/b$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->c:Landroid/content/Context;

    new-instance v0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    invoke-direct {v0, p1}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    invoke-virtual {p0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xb3

    invoke-static {v3}, Lcom/tencent/tme/live/v0/l;->a(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6d

    mul-int/lit16 v3, v3, 0xff

    .line 1
    div-int/lit16 v3, v3, 0x16c

    .line 2
    iput v3, p0, Lcom/tencent/tme/live/danmu/DanmuView;->a:I

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/tencent/tme/live/v0/l;->c(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->b(I)I

    move-result p1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/tencent/tme/live/o/d;

    invoke-direct {v2}, Lcom/tencent/tme/live/o/d;-><init>()V

    .line 4
    iput-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/o/d;->a(Z)Lcom/tencent/tme/live/o/d;

    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    new-array v5, v1, [F

    const/high16 v6, 0x40a00000    # 5.0f

    aput v6, v5, v0

    .line 5
    iget-object v6, v2, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    check-cast v6, Lcom/tencent/tme/live/o/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v6, v6, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    iput-boolean v0, v6, Lcom/tencent/tme/live/o/a$a;->n:Z

    iput-boolean v1, v6, Lcom/tencent/tme/live/o/a$a;->p:Z

    iput-boolean v0, v6, Lcom/tencent/tme/live/o/a$a;->r:Z

    aget v7, v5, v0

    .line 7
    iget-object v8, v6, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iput v7, v6, Lcom/tencent/tme/live/o/a$a;->j:F

    .line 8
    sget-object v6, Lcom/tencent/tme/live/o/d$b;->i:Lcom/tencent/tme/live/o/d$b;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v0

    aput-object v5, v7, v1

    invoke-virtual {v2, v6, v7}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    .line 9
    iget-boolean v5, v2, Lcom/tencent/tme/live/o/d;->d:Z

    if-eqz v5, :cond_0

    iput-boolean v0, v2, Lcom/tencent/tme/live/o/d;->d:Z

    iget-object v5, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/h;->a()V

    sget-object v5, Lcom/tencent/tme/live/o/d$b;->m:Lcom/tencent/tme/live/o/d$b;

    new-array v6, v1, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v2, v5}, Lcom/tencent/tme/live/o/d;->a(F)Lcom/tencent/tme/live/o/d;

    move-result-object v2

    .line 11
    iget v5, v2, Lcom/tencent/tme/live/o/d;->a:F

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iput v6, v2, Lcom/tencent/tme/live/o/d;->a:F

    iget-object v5, v2, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/a;->a()V

    iget-object v5, v2, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    invoke-virtual {v5, v6}, Lcom/tencent/tme/live/n/a;->a(F)V

    iget-object v5, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/h;->b()V

    iget-object v5, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v5}, Lcom/tencent/tme/live/n/h;->c()V

    sget-object v5, Lcom/tencent/tme/live/o/d$b;->g:Lcom/tencent/tme/live/o/d$b;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-virtual {v2, v5, v7}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    new-instance v5, Lcom/tencent/tme/live/u0/a;

    invoke-direct {v5}, Lcom/tencent/tme/live/u0/a;-><init>()V

    iget-object v6, p0, Lcom/tencent/tme/live/danmu/DanmuView;->h:Lcom/tencent/tme/live/o/b$a;

    .line 13
    iput-object v6, v5, Lcom/tencent/tme/live/o/b;->a:Lcom/tencent/tme/live/o/b$a;

    .line 14
    iget-object v6, v2, Lcom/tencent/tme/live/o/d;->h:Lcom/tencent/tme/live/n/a;

    invoke-virtual {v6, v5}, Lcom/tencent/tme/live/n/a;->a(Lcom/tencent/tme/live/o/b;)V

    .line 15
    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/o/d;->a(Ljava/util/Map;)Lcom/tencent/tme/live/o/d;

    move-result-object v2

    .line 16
    iput-boolean v1, v2, Lcom/tencent/tme/live/o/d;->g:Z

    const-string v3, "1019_Filter"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/tme/live/o/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v3, v2, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    invoke-virtual {v3}, Lcom/tencent/tme/live/n/h;->a()V

    sget-object v3, Lcom/tencent/tme/live/o/d$b;->o:Lcom/tencent/tme/live/o/d$b;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Lcom/tencent/tme/live/o/d;->a(Lcom/tencent/tme/live/o/d$b;[Ljava/lang/Object;)V

    .line 17
    new-instance v2, Lcom/tencent/tme/live/u0/b;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/u0/b;-><init>(Lcom/tencent/tme/live/danmu/DanmuView;)V

    .line 18
    iput-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->f:Lcom/tencent/tme/live/q/a;

    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    new-instance v3, Lcom/tencent/tme/live/danmu/DanmuView$b;

    invoke-direct {v3, p0}, Lcom/tencent/tme/live/danmu/DanmuView$b;-><init>(Lcom/tencent/tme/live/danmu/DanmuView;)V

    invoke-virtual {v2, v3}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->setCallback(Lcom/tencent/tme/live/m/h$b;)V

    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    iget-object v3, p0, Lcom/tencent/tme/live/danmu/DanmuView;->f:Lcom/tencent/tme/live/q/a;

    iget-object v4, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    .line 19
    invoke-virtual {v2}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f()V

    iget-object v5, v2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    .line 20
    iput-object v4, v5, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    .line 21
    iput-object v3, v5, Lcom/tencent/tme/live/m/h;->i:Lcom/tencent/tme/live/q/a;

    .line 22
    iget-object v3, v3, Lcom/tencent/tme/live/q/a;->a:Lcom/tencent/tme/live/n/d;

    if-eqz v3, :cond_2

    .line 23
    iput-object v3, v5, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    .line 24
    :cond_2
    iget-object v2, v2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->a:Lcom/tencent/tme/live/m/h$b;

    .line 25
    iput-object v2, v5, Lcom/tencent/tme/live/m/h;->g:Lcom/tencent/tme/live/m/h$b;

    .line 26
    iput-boolean v0, v5, Lcom/tencent/tme/live/m/h;->f:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/tencent/tme/live/m/h$c;

    .line 27
    invoke-direct {v2, v5}, Lcom/tencent/tme/live/m/h$c;-><init>(Lcom/tencent/tme/live/m/h;)V

    .line 28
    iput-object v2, v5, Lcom/tencent/tme/live/m/h;->b:Lcom/tencent/tme/live/m/h$c;

    iget-object v2, v5, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    .line 30
    iput-boolean v0, v2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->i:Z

    .line 31
    iput-boolean v1, v2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuView;->setShowType(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x6d

    mul-int/lit16 p1, p1, 0xff

    .line 1
    div-int/lit16 p1, p1, 0x16c

    .line 2
    iput p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->a:I

    return-void
.end method

.method public setShowType(I)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v4, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/o/d;->a(Ljava/util/Map;)Lcom/tencent/tme/live/o/d;

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/o/d;->a(Z)Lcom/tencent/tme/live/o/d;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/o/d;->a(Ljava/util/Map;)Lcom/tencent/tme/live/o/d;

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/o/d;->a(Z)Lcom/tencent/tme/live/o/d;

    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/danmu/DanmuView;->g:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    :cond_0
    iput p1, p0, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    return-void
.end method
