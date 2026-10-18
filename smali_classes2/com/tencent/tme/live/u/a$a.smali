.class public Lcom/tencent/tme/live/u/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/u/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/u/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/u/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/tencent/tme/live/m/l;->getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 3
    iget-object v0, p1, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    .line 4
    invoke-interface {v0}, Lcom/tencent/tme/live/m/l;->getXOff()F

    move-result v0

    .line 5
    iput v0, p1, Lcom/tencent/tme/live/u/a;->d:F

    .line 6
    iget-object p1, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 7
    iget-object v0, p1, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    .line 8
    invoke-interface {v0}, Lcom/tencent/tme/live/m/l;->getYOff()F

    move-result v0

    .line 9
    iput v0, p1, Lcom/tencent/tme/live/u/a;->e:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    .line 2
    invoke-interface {v0}, Lcom/tencent/tme/live/m/l;->getOnDanmakuClickListener()Lcom/tencent/tme/live/m/l$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    .line 4
    invoke-interface {v1}, Lcom/tencent/tme/live/m/l;->getXOff()F

    move-result v1

    .line 5
    iput v1, v0, Lcom/tencent/tme/live/u/a;->d:F

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    .line 7
    iget-object v1, v0, Lcom/tencent/tme/live/u/a;->b:Lcom/tencent/tme/live/m/l;

    .line 8
    invoke-interface {v1}, Lcom/tencent/tme/live/m/l;->getYOff()F

    move-result v1

    .line 9
    iput v1, v0, Lcom/tencent/tme/live/u/a;->e:F

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/tme/live/u/a;->a(Lcom/tencent/tme/live/u/a;FF)Lcom/tencent/tme/live/n/j;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/u/a;->a(Lcom/tencent/tme/live/u/a;Lcom/tencent/tme/live/n/j;Z)Z

    :cond_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/tme/live/u/a;->a(Lcom/tencent/tme/live/u/a;FF)Lcom/tencent/tme/live/n/j;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/u/a;->a(Lcom/tencent/tme/live/u/a;Lcom/tencent/tme/live/n/j;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/u/a$a;->a:Lcom/tencent/tme/live/u/a;

    invoke-static {p1}, Lcom/tencent/tme/live/u/a;->a(Lcom/tencent/tme/live/u/a;)Z

    move-result v1

    :cond_1
    return v1
.end method
