.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;
.super Landroid/widget/RelativeLayout;
.source "MSDKPermissionLayoutSecond.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

.field private permissionConfirmBtn:Landroid/widget/Button;

.field private permissionLayout:Landroid/widget/RelativeLayout;

.field private permissionQuitBtn:Landroid/widget/Button;

.field private permissionSettingBtn:Landroid/widget/Button;

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

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->initPermissionLayout(Landroid/content/Context;)V

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

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->initPermissionLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

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

    .line 54
    const-string v0, "msdk_permission_layout_second"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    .line 56
    const-string v0, "msdk_permission_second_content_tv"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionTextView:Landroid/widget/TextView;

    .line 58
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 61
    const-string v0, "msdk_permission_second_quit_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionQuitBtn:Landroid/widget/Button;

    .line 63
    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v0, "msdk_permission_second_setting_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionSettingBtn:Landroid/widget/Button;

    .line 76
    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$2;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v0, "msdk_permission_second_confirm_btn"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionConfirmBtn:Landroid/widget/Button;

    .line 89
    new-instance v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$3;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$3;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public enableConfirmButton(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionConfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

    .line 186
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    .line 187
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionTextView:Landroid/widget/TextView;

    .line 188
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionQuitBtn:Landroid/widget/Button;

    .line 189
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionSettingBtn:Landroid/widget/Button;

    .line 190
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionConfirmBtn:Landroid/widget/Button;

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

    .line 176
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionConfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 177
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

    .line 106
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->clickListener:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;

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

    .line 117
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
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

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 141
    invoke-static {p1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 145
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setPermissionContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setQuitBtnVisible(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionQuitBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSettingBtnVisible(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->permissionSettingBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
