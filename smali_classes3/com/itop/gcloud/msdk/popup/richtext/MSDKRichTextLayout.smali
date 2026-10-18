.class public Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;
.super Ljava/lang/Object;
.source "MSDKRichTextLayout.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;


# instance fields
.field private cancelBt:Landroid/widget/Button;

.field private closeTv:Landroid/widget/ImageView;

.field private confirmBt:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

.field private richTextCallback:Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "msdkpopup_dialog_richtext_layout"

    .line 30
    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    .line 35
    const-string v1, "msdkpopup_richtext_dialog_html_view"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    .line 36
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_richtext_dialog_confirm"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->confirmBt:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_richtext_dialog_cancel"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->cancelBt:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_richtext_dialog_close"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->closeTv:Landroid/widget/ImageView;

    .line 40
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->confirmBt:Landroid/widget/Button;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$1;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->cancelBt:Landroid/widget/Button;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$2;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$2;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->closeTv:Landroid/widget/ImageView;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$3;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$3;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->resetButtonsVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->richTextCallback:Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;

    return-object p0
.end method

.method private resetButtonsVisibility()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->confirmBt:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->cancelBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->closeTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public removeFromParent()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 94
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->setHTML(Ljava/lang/String;)V

    return-void
.end method

.method public setRichTextCallback(Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->richTextCallback:Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;

    return-void
.end method

.method public setStyle(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;Ljava/lang/String;)V
    .locals 5

    .line 111
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->resetButtonsVisibility()V

    .line 112
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$WindowType:[I

    invoke-virtual {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyleUtils;->getButtons(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;

    .line 119
    sget-object v3, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    iget-object v4, p2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v4}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->cancelBt:Landroid/widget/Button;

    iget-object p2, p2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->cancelBt:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->confirmBt:Landroid/widget/Button;

    iget-object p2, p2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->confirmBt:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;->closeTv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
