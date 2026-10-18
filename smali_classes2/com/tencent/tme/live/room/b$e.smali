.class public Lcom/tencent/tme/live/room/b$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/room/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/b$e;->a:Lcom/tencent/tme/live/room/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/room/b$e;->a:Lcom/tencent/tme/live/room/b;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->n:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/tencent/tme/live/room/b;->o:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/tencent/tme/live/room/b$e;->a:Lcom/tencent/tme/live/room/b;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/b;->f()V

    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    goto/16 :goto_3

    .line 2
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/tme/live/room/b;->g()V

    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_2
    sget v3, Lcom/tencent/tme/live/biz/R$anim;->tme_video_bottom_in:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartTime(J)V

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    iget-object v3, v0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->s:Lcom/tencent/tme/live/room/b$h;

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Lcom/tencent/tme/live/room/b;->o:Z

    check-cast v1, Lcom/tencent/tme/live/r0/c$c;

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, v1, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 8
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    if-nez v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    sget v2, Lcom/tencent/tme/live/biz/R$anim;->tme_video_top_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartTime(J)V

    :goto_2
    if-eqz v2, :cond_5

    .line 13
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    :cond_5
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v3

    new-instance v0, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 15
    new-instance v5, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 16
    new-instance v0, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 17
    new-instance v6, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 18
    new-instance v0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 19
    new-instance v7, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v7, v0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 20
    new-instance v0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 21
    new-instance v8, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v8, v0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 22
    const-string v4, "EmojiEntryShow_fullscreen_aov"

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 23
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
