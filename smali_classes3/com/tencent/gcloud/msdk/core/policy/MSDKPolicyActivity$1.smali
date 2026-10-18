.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;
.super Ljava/lang/Object;
.source "MSDKPolicyActivity.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPolicyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmBtnClick()V
    .locals 4

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 109
    const-string v1, "initPolicyLayout - user click confirm button"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 110
    const-string v1, "PolicyLayout-onConfirmBtnClick"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 112
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MSDK_POLICY_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    const-string v2, "MSDK_POLICY_ALLOWED"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-boolean v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->isPermissionContentEmpty:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "permission content is empty, navigate to target activity"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->navigateTargetActivity()V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->setLayoutVisibility(I)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPermissionLayout()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    invoke-virtual {v0, v3}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setLayoutVisibility(I)V

    return-void
.end method

.method public onRejectBtnClick()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 99
    const-string v0, "initPolicyLayout - user click reject button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 100
    const-string v0, "PolicyLayout-onRejectBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->finish()V

    return-void
.end method
