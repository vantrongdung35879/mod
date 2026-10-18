.class Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;
.super Landroid/webkit/WebViewClient;
.source "MSDKWebLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->initWebView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 269
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 271
    invoke-static {p3}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result v0

    .line 272
    invoke-static {p3}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 270
    const-string p3, ""

    .line 278
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    .line 276
    const-string p2, "onReceivedError, requestUrl = %s, error = [code: %, desc: %s]"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p2, p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$400(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 286
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p2, p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$400(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 232
    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/utils/CommonUtils;->isSystemScheme(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$300(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    :cond_0
    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x30000000

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 245
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$300(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading, error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MSDKWebDialog"

    invoke-static {p2, p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
