.class Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-static {p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->access$000(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-static {p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->access$000(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
