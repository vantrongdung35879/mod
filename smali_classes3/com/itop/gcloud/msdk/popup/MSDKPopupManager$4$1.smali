.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/policy/OnPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$302(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Z)Z

    .line 211
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->CANCEL:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->SKIP:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {v0, v2, v1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 224
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    iget-object v2, v2, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    iget-object v2, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    const-string v3, "MSDKPopupFrequencyOnce"

    invoke-static {v0, v3, v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
