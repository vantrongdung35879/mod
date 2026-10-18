.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;
.super Ljava/lang/Object;
.source "MSDKPolicyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->initPolicyLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    const-string p1, "PolicyLayout - Confirm Button Click"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;)Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;->onConfirmBtnClick()V

    :cond_0
    return-void
.end method
