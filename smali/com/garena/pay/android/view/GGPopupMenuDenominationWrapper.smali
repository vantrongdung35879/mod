.class public Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;
.super Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;
.source "GGPopupMenuDenominationWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V
    .locals 1

    .line 23
    sget v0, Lcom/garena/msdk/R$layout;->msdk_picker_denomination_item_view:I

    invoke-direct {p0, p1, p2, v0}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;-><init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;I)V

    return-void
.end method

.method private setInfo(Lcom/garena/pay/android/view/GGPopMenuDenominationItem;)V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    sget v1, Lcom/garena/msdk/R$id;->picker_item_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    sget v2, Lcom/garena/msdk/R$id;->picker_item_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 39
    iget-object v2, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    sget v3, Lcom/garena/msdk/R$id;->currency_amount_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    iget-object v3, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    sget v4, Lcom/garena/msdk/R$id;->currency_amount:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 41
    iget-object v4, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    sget v5, Lcom/garena/msdk/R$id;->promotionTextIcon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v5, 0x8

    .line 48
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->loadImage(Lcom/garena/pay/android/view/GGPopMenuItem;Landroid/widget/ImageView;)V

    .line 53
    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->subTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/garena/msdk/R$color;->picker_sub_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->btnText:Ljava/lang/String;

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->btnText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->keyCode:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->keyCode:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    new-instance p1, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;

    invoke-direct {p1, p0}, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;-><init>(Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;)V

    .line 80
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public setInfo(Lcom/garena/pay/android/view/GGPopMenuItem;)V
    .locals 1

    .line 28
    instance-of v0, p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->setInfo(Lcom/garena/pay/android/view/GGPopMenuDenominationItem;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->setInfo(Lcom/garena/pay/android/view/GGPopMenuItem;)V

    :goto_0
    return-void
.end method
