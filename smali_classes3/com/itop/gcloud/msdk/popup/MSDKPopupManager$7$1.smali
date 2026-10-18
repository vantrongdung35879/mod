.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    invoke-static {v0, v1, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$500(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    iget-object p1, p1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
