.class public Lcom/tencent/tme/live/w2/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w2/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/tme/live/w2/c;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/tme/live/w2/b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 9
    iget v2, v1, Lcom/tencent/tme/live/w2/b;->d:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;
    .locals 3

    .line 1
    iput p1, p2, Lcom/tencent/tme/live/w2/b;->d:I

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/w2/c;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3
    iput-object p1, p2, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/tencent/tme/live/w2/c;->b:Landroid/app/Activity;

    .line 5
    iput-object p1, p2, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 6
    invoke-virtual {p2}, Lcom/tencent/tme/live/w2/b;->b()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/w2/b;->b()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p2, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    goto :goto_1

    :cond_0
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/w2/b;->b()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p2, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ContainView must extends ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p2, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/w2/b;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/w2/b;->h()V

    .line 8
    iget-object p1, p0, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
