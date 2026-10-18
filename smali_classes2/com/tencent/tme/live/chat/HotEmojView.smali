.class public Lcom/tencent/tme/live/chat/HotEmojView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/chat/HotEmojView$c;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/c1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/a<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

.field public d:Landroid/widget/GridView;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:J

.field public h:Lcom/tencent/tme/live/chat/HotEmojView$c;

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->g:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/tme/live/chat/HotEmojView;->i:I

    iput-wide v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->j:J

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->g:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/tencent/tme/live/chat/HotEmojView;->i:I

    iput-wide v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->j:J

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->h:Lcom/tencent/tme/live/chat/HotEmojView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/chat/HotEmojView$c;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance p1, Lcom/tencent/tme/live/chat/HotEmojView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/chat/HotEmojView$a;-><init>(Lcom/tencent/tme/live/chat/HotEmojView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_chat_hotemoj_list:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->c:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->grid_emoj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->d:Landroid/widget/GridView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->e:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->e:Landroid/view/View;

    new-instance v0, Lcom/tencent/tme/live/chat/HotEmojView$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/chat/HotEmojView$b;-><init>(Lcom/tencent/tme/live/chat/HotEmojView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    new-instance p1, Lcom/tencent/tme/live/chat/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$layout;->tme_item_hotemoj_view:I

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/tencent/tme/live/chat/e;-><init>(Lcom/tencent/tme/live/chat/HotEmojView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->a:Lcom/tencent/tme/live/c1/a;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->d:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->a:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->f:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->empty_emoj_list:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->a:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/chat/HotEmojView;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->g:J

    sget-boolean p1, Lcom/tencent/tme/live/v0/f;->g:Z

    .line 2
    const-string v0, "zq1234"

    const-string v1, "reportEmojLoadEmptyExposure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance v0, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 3
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 4
    new-instance v0, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 5
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 6
    new-instance v0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 7
    iput p1, v0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 8
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 9
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 10
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 11
    const-string v3, "EmojiPanelLoadingResult_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotEmojView;->h:Lcom/tencent/tme/live/chat/HotEmojView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/chat/HotEmojView$c;->b()V

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/tme/live/t0/b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/t0/b;-><init>(Lcom/tencent/tme/live/chat/HotEmojView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/chat/HotEmojView;->a(Ljava/util/List;)V

    sget-boolean v0, Lcom/tencent/tme/live/v0/f;->g:Z

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 6
    new-instance v3, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v3, v2}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 7
    new-instance v2, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 8
    new-instance v4, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v4, v2}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 9
    new-instance v2, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 10
    iput v0, v2, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 11
    new-instance v5, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v5, v2}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 12
    new-instance v0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 13
    new-instance v6, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 14
    const-string v2, "EmojiPanelShow_aov"

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 15
    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/b1/d;->b()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/tencent/tme/live/chat/HotEmojView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->h:Lcom/tencent/tme/live/chat/HotEmojView$c;

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotEmojView;->c:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
