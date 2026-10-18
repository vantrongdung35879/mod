.class public Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;
.super Ljava/lang/Object;
.source "MSDKPolicyLayout.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;


# instance fields
.field private cancelBt:Landroid/widget/Button;

.field private confirmBt:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

.field private policyCallback:Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "msdkpopup_dialog_policy_layout"

    .line 27
    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

    .line 30
    const-string v1, "msdkpopup_policy_dialog_html_view"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    .line 31
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_policy_dialog_confirm"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->confirmBt:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_policy_dialog_cancel"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->cancelBt:Landroid/widget/Button;

    .line 34
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->confirmBt:Landroid/widget/Button;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$1;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$1;-><init>(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->cancelBt:Landroid/widget/Button;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$2;-><init>(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->resetButtonsVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->policyCallback:Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;

    return-object p0
.end method

.method private resetButtonsVisibility()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->confirmBt:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->cancelBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

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

    .line 78
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 80
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setButtonStyle(Ljava/lang/String;)V
    .locals 4

    .line 97
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->resetButtonsVisibility()V

    .line 98
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyleUtils;->getButtons(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;

    .line 100
    sget-object v1, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$3;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->cancelBt:Landroid/widget/Button;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->cancelBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->confirmBt:Landroid/widget/Button;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->confirmBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->htmlView:Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKHtmlView;->setHTML(Ljava/lang/String;)V

    return-void
.end method

.method public setPolicyCallback(Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;->policyCallback:Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;

    return-void
.end method
