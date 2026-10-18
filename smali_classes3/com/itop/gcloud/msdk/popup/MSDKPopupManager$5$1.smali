.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/richtext/OnRichTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->SKIP:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$500(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->SKIP:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {v0, v1, v3}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNegative()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v3, "cancel"

    invoke-static {v0, v1, v2, v3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$500(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {v0, v1, v3}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onPositive()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v3, "confirm"

    invoke-static {v0, v1, v2, v3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$500(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-interface {v0, v1, v3}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5$1;->this$1:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
