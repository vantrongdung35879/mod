.class public final Lcom/tencent/qimei/ax/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/WebView;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/tencent/qimei/ax/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ax/l;->b:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    .line 4
    new-instance p1, Lcom/tencent/qimei/ax/g;

    const-string/jumbo v0, "sys"

    invoke-direct {p1, v0}, Lcom/tencent/qimei/ax/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qimei/ax/l;->c:Lcom/tencent/qimei/ax/g;

    return-void
.end method

.method public static a(Lcom/tencent/qimei/ax/l;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 12
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ax/l;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, -0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 39
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ax/l;->c:Lcom/tencent/qimei/ax/g;

    const-string v2, "JSInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/qimei/ax/j;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ax/j;-><init>(Lcom/tencent/qimei/ax/l;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/ax/l;->a:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/tencent/qimei/ax/l;->b:Landroid/content/Context;

    .line 44
    sget-object v1, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/jsfile/tun-cos-1258344701.html"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    .line 48
    :cond_1
    sget-object p0, Lcom/tencent/qimei/ay/e;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/qimei/ax/l;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p0, Lcom/tencent/qimei/ax/a;->a:Ljava/lang/String;

    new-instance p0, Lcom/tencent/qimei/ax/i;

    invoke-direct {p0}, Lcom/tencent/qimei/ax/i;-><init>()V

    const-string v0, "javascript:new Fingerprint().getNative()"

    invoke-virtual {p1, v0, p0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
