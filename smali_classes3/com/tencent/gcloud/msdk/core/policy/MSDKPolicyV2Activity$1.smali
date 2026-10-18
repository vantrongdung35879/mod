.class Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;
.super Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;
.source "MSDKPolicyV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->initPopupCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 110
    const-string v0, "initPolicyLayout - user click reject button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 111
    const-string v0, "PolicyLayout-onRejectBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;)V

    const/4 v0, 0x1

    .line 97
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 100
    const-string v0, "initPermissionLayout - user click confirm button"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 101
    const-string v0, "PermissionLayout-onConfirmBtnClick"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requiredPermissions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;->this$0:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method
