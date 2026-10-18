.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;
.super Ljava/lang/Object;
.source "MSDKPolicyActivity.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPermissionLayout()V
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

    .line 145
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmBtnClick()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MSDK_POLICY_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string v1, "MSDK_PERMISSION_CONFIRMED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    const-string v0, "initPermissionLayout - user click confirm button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 154
    const-string v0, "PermissionLayout-onConfirmBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requiredPermissions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method
