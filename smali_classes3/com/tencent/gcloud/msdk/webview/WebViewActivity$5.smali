.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$5;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 687
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$5;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->dismiss(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V

    return-void
.end method
