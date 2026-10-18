.class public Lcom/tencent/tme/live/r0/h$a;
.super Lcom/tencent/tme/live/c1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/r0/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/c<",
        "Lcom/tencent/tme/live/w0/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/tme/live/r0/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/h;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    invoke-direct {p0, p2, p3}, Lcom/tencent/tme/live/c1/c;-><init>(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 5

    check-cast p3, Lcom/tencent/tme/live/w0/p;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_titlebar_tab_item:I

    iget-object v1, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/r0/h;->g:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tab_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    sget v2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p3, Lcom/tencent/tme/live/w0/p;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->main_tab_competition_unselected:I

    sget v4, Lcom/tencent/tme/live/biz/R$string;->main_tab_competition_selected:I

    invoke-virtual {v0, v3, v4, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(IIZ)V

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lcom/tencent/tme/live/w0/p;->f:Ljava/lang/String;

    iget-object v4, p3, Lcom/tencent/tme/live/w0/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p3, Lcom/tencent/tme/live/w0/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p3, Lcom/tencent/tme/live/w0/p;->a:I

    if-ne v0, v3, :cond_2

    sget v0, Lcom/tencent/tme/live/biz/R$string;->main_tab_tv_icon_unselected:I

    sget v4, Lcom/tencent/tme/live/biz/R$string;->main_tab_tv_icon_selected:I

    invoke-virtual {v1, v0, v4, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(IIZ)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    goto :goto_1

    :cond_3
    iget-object v0, p3, Lcom/tencent/tme/live/w0/p;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/tencent/tme/live/w0/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p3, Lcom/tencent/tme/live/w0/p;->b:Ljava/lang/String;

    iget v0, p3, Lcom/tencent/tme/live/w0/p;->a:I

    if-ne v0, v3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    .line 6
    iget-object p2, p2, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_match:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 6

    check-cast p2, Lcom/tencent/tme/live/w0/p;

    .line 8
    sget v0, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tab_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_tab_select_txt_color:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    .line 9
    iget v0, p1, Lcom/tencent/tme/live/r0/h;->k:I

    iget-object v2, p1, Lcom/tencent/tme/live/r0/h;->m:Lcom/tencent/tme/live/w0/p;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/tencent/tme/live/w0/p;->a:I

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/tencent/tme/live/w0/p;->a:I

    :cond_1
    if-eq v2, v0, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v3, p1, Lcom/tencent/tme/live/r0/h;->o:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "TVUserChangeTab"

    invoke-virtual {v3, v2, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/r0/h;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/tme/live/r0/h;->o:Z

    .line 10
    iget-object p1, p0, Lcom/tencent/tme/live/r0/h$a;->d:Lcom/tencent/tme/live/r0/h;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/tme/live/r0/h;->l:J

    iput-object p2, p1, Lcom/tencent/tme/live/r0/h;->m:Lcom/tencent/tme/live/w0/p;

    iget v2, p1, Lcom/tencent/tme/live/r0/h;->k:I

    if-ne v2, p3, :cond_3

    goto/16 :goto_2

    :cond_3
    iput p3, p1, Lcom/tencent/tme/live/r0/h;->k:I

    iget p3, p2, Lcom/tencent/tme/live/w0/p;->a:I

    if-ne p3, v1, :cond_4

    .line 13
    iget-object p2, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz p2, :cond_8

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$id;->content:I

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/w2/b;->a(Z)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->g()V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p2, p2, Lcom/tencent/tme/live/w0/p;->c:Ljava/lang/String;

    .line 17
    iget-object p3, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-nez p3, :cond_7

    new-instance p3, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    .line 18
    iget-object v1, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 19
    invoke-direct {p3, v1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;-><init>(Landroid/content/Context;)V

    iput-object p3, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    .line 20
    iget-object p3, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 21
    sget v1, Lcom/tencent/tme/live/biz/R$id;->activity_root:I

    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p1, Lcom/tencent/tme/live/r0/h;->j:Lcom/tencent/tme/live/l2/b;

    if-eqz v2, :cond_6

    .line 22
    iget-boolean v3, v2, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v3, :cond_6

    .line 23
    iget v2, v2, Lcom/tencent/tme/live/l2/b;->a:I

    .line 24
    iget-object v3, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-nez v3, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    iget-object v4, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v5, 0x40000000    # 2.0f

    .line 26
    invoke-static {v4, v5}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 27
    :cond_6
    :goto_1
    sget v2, Lcom/tencent/tme/live/biz/R$id;->titlebar:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-virtual {p3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object p3, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->load(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$id;->content:I

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/w2/b;->a(Z)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->e()V

    :cond_8
    :goto_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 0

    check-cast p2, Lcom/tencent/tme/live/w0/p;

    .line 30
    sget p2, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->tab_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/tencent/tme/live/biz/R$color;->tme_tab_unSelect_txt_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
