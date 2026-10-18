.class public Lcom/tencent/tme/live/r0/h;
.super Lcom/tencent/tme/live/a1/a;


# instance fields
.field public f:Landroid/view/View;

.field public g:Landroid/widget/LinearLayout;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/p;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/tencent/tme/live/c1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/c<",
            "Lcom/tencent/tme/live/w0/p;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/tencent/tme/live/l2/b;

.field public k:I

.field public l:J

.field public m:Lcom/tencent/tme/live/w0/p;

.field public n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/a1/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/r0/h;->k:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/r0/h;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/h;->o:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/tme/live/r0/h;->f:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/h;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/h;->g:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "initConfigRefresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/h;->i()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->goBack()Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/a1/a;->d()V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/h;->j()V

    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "initConfigRefresh"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_back:I

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->main_icon_back:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    new-instance v1, Lcom/tencent/tme/live/r0/i;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/r0/i;-><init>(Lcom/tencent/tme/live/r0/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/tencent/tme/live/r0/h$a;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/tme/live/r0/h;->g:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/tme/live/r0/h$a;-><init>(Lcom/tencent/tme/live/r0/h;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/h;->i:Lcom/tencent/tme/live/c1/c;

    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/h;->i()V

    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/r0/h;->i:Lcom/tencent/tme/live/c1/c;

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget v1, v1, Lcom/tencent/tme/live/w0/d;->l:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tme/live/framework/common/b;->G:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/tencent/tme/live/r0/h;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/w0/p;

    iget v4, v4, Lcom/tencent/tme/live/w0/p;->a:I

    if-ne v4, v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    if-ltz v2, :cond_3

    iput v2, v0, Lcom/tencent/tme/live/c1/c;->c:I

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/r0/h;->i:Lcom/tencent/tme/live/c1/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/c1/c;->a()V

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/tme/live/r0/h;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/tme/live/r0/h;->l:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    iget-object v4, p0, Lcom/tencent/tme/live/r0/h;->m:Lcom/tencent/tme/live/w0/p;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/tencent/tme/live/w0/p;->a:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {v2, v3}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 2
    filled-new-array {v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVUserExitTab"

    invoke-virtual {v5, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
