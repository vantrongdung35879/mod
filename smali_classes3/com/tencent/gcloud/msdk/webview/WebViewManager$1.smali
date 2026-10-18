.class Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewManager;->onShareCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalWebViewResult:Lcom/tencent/gcloud/msdk/api/MSDKRet;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewManager;Landroid/app/Activity;Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewManager;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;->val$finalWebViewResult:Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewManager$1;->val$finalWebViewResult:Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retCode:I

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->showToast(Landroid/content/Context;I)V

    return-void
.end method
