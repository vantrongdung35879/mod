.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;
.super Landroid/widget/RelativeLayout;
.source "MSDKPolicyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

.field private mPolicyConfirmBtn:Landroid/widget/Button;

.field private mPolicyContentTV:Landroid/widget/TextView;

.field private mPolicyLayout:Landroid/widget/RelativeLayout;

.field private mPolicyRejectBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->initPolicyLayout(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->initPolicyLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

    return-object p0
.end method

.method private initPolicyLayout(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mContext:Landroid/app/Activity;

    .line 47
    const-string v0, "msdk_policy_layout"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    .line 49
    const-string v0, "msdk_policy_content_tv"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyContentTV:Landroid/widget/TextView;

    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyContentTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 54
    const-string v0, "msdk_policy_reject_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyRejectBtn:Landroid/widget/Button;

    .line 56
    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "msdk_policy_confirm_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyConfirmBtn:Landroid/widget/Button;

    .line 67
    new-instance v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mContext:Landroid/app/Activity;

    .line 102
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

    .line 103
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyContentTV:Landroid/widget/TextView;

    .line 105
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyRejectBtn:Landroid/widget/Button;

    .line 106
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyConfirmBtn:Landroid/widget/Button;

    return-void
.end method

.method public setLayoutVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

    return-void
.end method

.method public setPolicyContent(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->mPolicyContentTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPolicyContentWithHtml(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "htmlContent"
        }
    .end annotation

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 87
    invoke-static {p1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->setPolicyContent(Ljava/lang/CharSequence;)V

    return-void
.end method
