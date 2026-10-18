.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;
.super Ljava/lang/Object;
.source "MSDKPolicyBaseActivity.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->initPermissionSecondLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmBtnClick()V
    .locals 2

    .line 107
    const-string v0, "initPermissionSecondLayout - user click confirm button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->enableConfirmButton(Z)V

    .line 109
    const-string v0, "PermissionSecondLayout-onConfirmBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 111
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requestPermissions([Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    const-string v1, "msdk_permission_layout_second_request_permission_msg"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    iget-boolean v1, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isAllGranted:Z

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-static {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onQuitBtnClick()V
    .locals 1

    .line 87
    const-string v0, "initPermissionSecondLayout - user click quit button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 88
    const-string v0, "PermissionSecondLayout-onQuitBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->finish()V

    return-void
.end method

.method public onSettingBtnClick()V
    .locals 4

    .line 96
    const-string v0, "initPermissionSecondLayout - user click setting button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 97
    const-string v0, "PermissionSecondLayout-onSettingBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
