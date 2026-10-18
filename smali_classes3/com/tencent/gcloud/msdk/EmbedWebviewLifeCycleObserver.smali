.class public Lcom/tencent/gcloud/msdk/EmbedWebviewLifeCycleObserver;
.super Ljava/lang/Object;
.source "EmbedWebviewLifeCycleObserver.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/interfaces/ILifeCycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 28
    const-string v0, "EmbedWebviewLifeCycleObserver onActivityResult"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    const-string v0, "EmbedWebviewLifeCycleObserver onDestroy"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 34
    const-string v0, "EmbedWebviewLifeCycleObserver onResume"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 45
    const-string v0, "EmbedWebviewLifeCycleObserver onStop"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->getInstance()Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onStop()V

    return-void
.end method
