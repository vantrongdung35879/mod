.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showRemoteHtmlDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

.field final synthetic val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$finalUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    iput-object p3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$finalUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    iput-object p5, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    invoke-virtual {v0, v1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->setWindowType(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;)V

    .line 412
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$finalUri:Ljava/lang/String;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;

    invoke-direct {v2, p0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7$1;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadUrl(Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;)V

    .line 422
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    invoke-static {v0, v1, v2, v3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$400(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_1

    .line 425
    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v2, "showRemoteHtmlDialog, webLayout is null"

    invoke-interface {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 427
    :cond_1
    const-string v0, "MSDKPopupManager.showRemoteHtmlDialog error: webLayout is null"

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
