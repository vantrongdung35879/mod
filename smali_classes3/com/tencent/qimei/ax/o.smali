.class public final Lcom/tencent/qimei/ax/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tencent/smtt/sdk/WebView;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/tencent/qimei/ax/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ax/o;->b:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    .line 4
    new-instance p1, Lcom/tencent/qimei/ax/g;

    const-string/jumbo v0, "x5"

    invoke-direct {p1, v0}, Lcom/tencent/qimei/ax/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qimei/ax/o;->c:Lcom/tencent/qimei/ax/g;

    return-void
.end method

.method public static a(Lcom/tencent/qimei/ax/o;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object p0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    sget-object v0, Lcom/tencent/qimei/ax/a;->a:Ljava/lang/String;

    const-string v0, "javascript:new Fingerprint().getNative()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method public static b(Lcom/tencent/qimei/ax/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ax/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->c:Lcom/tencent/qimei/ax/g;

    const-string/jumbo v1, "x5_sys"

    .line 5
    iput-object v1, v0, Lcom/tencent/qimei/ax/g;->b:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 24
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ax/o;->c:Lcom/tencent/qimei/ax/g;

    const-string v2, "JSInterface"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/qimei/ax/m;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ax/m;-><init>(Lcom/tencent/qimei/ax/o;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/ax/o;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object p0, p0, Lcom/tencent/qimei/ax/o;->b:Landroid/content/Context;

    .line 27
    sget-object v1, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/jsfile/tun-cos-1258344701.html"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    .line 31
    :cond_2
    sget-object p0, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
