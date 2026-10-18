.class public abstract Lcom/tencent/tme/live/c1/c;
.super Lcom/tencent/tme/live/c1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/tme/live/c1/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/c1/b;-><init>(Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/c1/c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/tme/live/c1/b;->a(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tme/live/c1/c;->c:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2, v1, v0}, Lcom/tencent/tme/live/c1/c;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, v1, v0, v0}, Lcom/tencent/tme/live/c1/c;->a(Landroid/view/View;Ljava/lang/Object;II)V

    :goto_1
    new-instance v1, Lcom/tencent/tme/live/c1/c$a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tme/live/c1/c$a;-><init>(Lcom/tencent/tme/live/c1/c;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/c1/c;->c()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/tencent/tme/live/c1/c;->c:I

    if-eq p1, v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, p1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0, v1, v0, p1}, Lcom/tencent/tme/live/c1/c;->a(Landroid/view/View;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/tencent/tme/live/c1/b;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/tencent/tme/live/c1/c;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/tencent/tme/live/c1/c;->c:I

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/tencent/tme/live/c1/c;->a(Landroid/view/View;Ljava/lang/Object;II)V

    :cond_2
    iput p1, p0, Lcom/tencent/tme/live/c1/c;->c:I

    :cond_3
    return-void
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;II)V"
        }
    .end annotation
.end method

.method public c()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
