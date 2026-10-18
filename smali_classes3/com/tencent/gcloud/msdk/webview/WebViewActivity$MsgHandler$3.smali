.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

.field final synthetic val$so:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;I)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    iput p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;->val$so:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler$3;->val$so:I

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    return-void
.end method
