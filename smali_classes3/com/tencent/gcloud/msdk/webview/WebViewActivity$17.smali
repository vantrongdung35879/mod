.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->onSaveSuccess(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/io/File;)V
    .locals 0

    .line 1798
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1801
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;->val$file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1802
    const-string v0, "Send broadcast done"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method
