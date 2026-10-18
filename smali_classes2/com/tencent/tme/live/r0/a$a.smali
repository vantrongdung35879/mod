.class public Lcom/tencent/tme/live/r0/a$a;
.super Lcom/tencent/tme/live/c1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/r0/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/tme/live/r0/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/a;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    invoke-direct {p0, p2, p3}, Lcom/tencent/tme/live/c1/c;-><init>(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 3

    check-cast p3, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$layout;->tme_common_tab_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    sget p2, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    sget v1, Lcom/tencent/tme/live/biz/R$string;->chat_tab_unselected:I

    sget v2, Lcom/tencent/tme/live/biz/R$string;->chat_tab_selected:I

    invoke-virtual {p2, v1, v2, v0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(IIZ)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 5

    check-cast p2, Ljava/lang/String;

    .line 4
    sget p2, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 5
    iget-object v1, v1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_chat_tab_select_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 7
    iget-object v2, v2, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 9
    iget-object v2, v2, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v1, p3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 11
    iget v1, p2, Lcom/tencent/tme/live/r0/a;->m:I

    .line 12
    iput p3, p2, Lcom/tencent/tme/live/r0/a;->m:I

    .line 13
    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {p2, v2}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v3

    const-string v4, "updateReward"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget v2, p2, Lcom/tencent/tme/live/r0/a;->m:I

    if-eq v1, v2, :cond_2

    .line 17
    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/r0/a;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2}, Lcom/tencent/tme/live/r0/a;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v3

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TVUserChangeRightTab"

    invoke-virtual {v3, v2, v1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    :cond_2
    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_game_data:I

    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p2, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-eqz p2, :cond_5

    .line 19
    sget-object v1, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    iget-object v1, v1, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v3, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v1, v2, v3}, Lcom/tencent/tme/live/y0/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p2, Lcom/tencent/tme/live/chat/GameDataView;->a:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v1, :cond_5

    .line 20
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->c:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    iget-object v2, v2, Lcom/tencent/tme/live/w0/b;->b:Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/w0/b$a;

    iget-object v4, v3, Lcom/tencent/tme/live/w0/b$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/tme/live/w0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameDataView"

    invoke-static {v3, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/tencent/tme/live/chat/GameDataView;->a:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->load(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 22
    :cond_5
    iget-object p2, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    invoke-static {p2, p3, p1, v0}, Lcom/tencent/tme/live/r0/a;->a(Lcom/tencent/tme/live/r0/a;ILandroid/view/View;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    .line 23
    sget p2, Lcom/tencent/tme/live/biz/R$id;->tab_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    .line 24
    iget-object v0, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_chat_tab_unSelect_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/tencent/tme/live/r0/a$a;->d:Lcom/tencent/tme/live/r0/a;

    invoke-static {p2, p4, p1, p3}, Lcom/tencent/tme/live/r0/a;->a(Lcom/tencent/tme/live/r0/a;ILandroid/view/View;Z)V

    return-void
.end method

.method public c()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-object v0
.end method
