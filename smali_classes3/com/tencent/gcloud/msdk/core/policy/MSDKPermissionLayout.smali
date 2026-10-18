.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;
.super Landroid/widget/RelativeLayout;
.source "MSDKPermissionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

.field private permissionConfirmBtn:Landroid/widget/Button;

.field private permissionLayout:Landroid/widget/RelativeLayout;

.field private permissionTextView:Landroid/widget/TextView;


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

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->initPermissionLayout(Landroid/content/Context;)V

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

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->initPermissionLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

    return-object p0
.end method

.method private initPermissionLayout(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    const-string v0, "msdk_permission_layout"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionLayout:Landroid/widget/RelativeLayout;

    .line 49
    const-string v0, "msdk_permission_content_tv"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionTextView:Landroid/widget/TextView;

    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 54
    const-string v0, "msdk_permission_confirm_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionConfirmBtn:Landroid/widget/Button;

    .line 56
    new-instance v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

    .line 120
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionLayout:Landroid/widget/RelativeLayout;

    .line 121
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionTextView:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionConfirmBtn:Landroid/widget/Button;

    return-void
.end method

.method public setConfirmBtnVisible(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionConfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
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

    .line 73
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;

    return-void
.end method

.method public setPermissionContent(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->permissionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPermissionContentWithHtml(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "htmlContent"
        }
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 97
    invoke-static {p1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setPermissionContent(Ljava/lang/CharSequence;)V

    return-void
.end method
