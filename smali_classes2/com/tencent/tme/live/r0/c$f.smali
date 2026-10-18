.class public Lcom/tencent/tme/live/r0/c$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmes/live/redpacket/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/r0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/c$f;->a:Lcom/tencent/tme/live/r0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c$f;->a:Lcom/tencent/tme/live/r0/c;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/s0/a;->a(Landroid/view/View;)V

    iget-object v0, v1, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c$f;->a:Lcom/tencent/tme/live/r0/c;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/tencent/tme/live/w2/b;->c:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c$f;->a:Lcom/tencent/tme/live/r0/c;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c$f;->a:Lcom/tencent/tme/live/r0/c;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
