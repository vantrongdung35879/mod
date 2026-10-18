.class public Lcom/centauri/oversea/business/h5/webview/MWebView;
.super Landroid/webkit/WebView;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;,
        Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;
    }
.end annotation


# static fields
.field private static final SP_CACHE_SAVE_TIME:Ljava/lang/String; = "cachetime"

.field public static final TAG:Ljava/lang/String; = "MWebView"


# instance fields
.field private APP_CACHE_PATH:Ljava/lang/String;

.field private _mainHandler:Landroid/os/Handler;

.field private _wccListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

.field private _wvcListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

.field private intercept:Lcom/centauri/oversea/business/h5/webview/IIntercept;

.field private isCache:I

.field private isFirstLoad:Z

.field private isIntercept:Z

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isIntercept:Z

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->intercept:Lcom/centauri/oversea/business/h5/webview/IIntercept;

    .line 41
    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wccListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    .line 42
    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wvcListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isFirstLoad:Z

    .line 46
    iput v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isCache:I

    .line 221
    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$4;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 276
    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$5;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$5;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 50
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isIntercept:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->intercept:Lcom/centauri/oversea/business/h5/webview/IIntercept;

    .line 41
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wccListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    .line 42
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wvcListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_mainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isFirstLoad:Z

    .line 46
    iput p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isCache:I

    .line 221
    new-instance p2, Lcom/centauri/oversea/business/h5/webview/MWebView$4;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$4;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 276
    new-instance p2, Lcom/centauri/oversea/business/h5/webview/MWebView$5;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$5;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 55
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$001(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$201(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method static synthetic access$300(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isFirstLoad:Z

    return p0
.end method

.method static synthetic access$302(Lcom/centauri/oversea/business/h5/webview/MWebView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isFirstLoad:Z

    return p1
.end method

.method static synthetic access$400(Lcom/centauri/oversea/business/h5/webview/MWebView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isCache:I

    return p0
.end method

.method static synthetic access$500(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->webviewReport()V

    return-void
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wccListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isIntercept:Z

    return p0
.end method

.method static synthetic access$800(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/IIntercept;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->intercept:Lcom/centauri/oversea/business/h5/webview/IIntercept;

    return-object p0
.end method

.method static synthetic access$900(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wvcListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isFirstLoad:Z

    .line 61
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v2, 0x64

    .line 65
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/MWebCache"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->APP_CACHE_PATH:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->isUseCache(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iput v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isCache:I

    .line 86
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 88
    :cond_0
    iput v2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isCache:I

    const/4 p1, -0x1

    .line 89
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 90
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setCacheTime(Landroid/content/Context;)V

    .line 93
    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 97
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 106
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/oversea/comm/CTITools;->isApkInDebug(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    const-string p1, "MWebView"

    const-string v1, "!!!WebContentsDebuggingEnabled == true  in debug mode"

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 116
    :cond_1
    :try_start_0
    const-string p1, "searchBoxJavaBridge_"

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 118
    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 119
    const-string p1, "accessibilityTraversal"

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private isUseCache(Landroid/content/Context;)Z
    .locals 5

    .line 136
    const-string v0, "cachetime"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTISPTools;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isUseCache CacheTime lastTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    sub-int/2addr v2, p1

    const/16 p1, 0xe10

    if-gt v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 202
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setCacheTime(Landroid/content/Context;)V
    .locals 4

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 128
    const-string v0, "cachetime"

    invoke-static {p1, v0, v1}, Lcom/centauri/oversea/comm/CTISPTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setCacheTime:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MWebView"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private webviewReport()V
    .locals 2

    .line 414
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/h5/webview/MWebView$6;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$6;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView$1;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/centauri/oversea/business/h5/webview/MWebView$2;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 178
    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$3;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$3;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntercept(Lcom/centauri/oversea/business/h5/webview/IIntercept;)V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isIntercept:Z

    .line 197
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->intercept:Lcom/centauri/oversea/business/h5/webview/IIntercept;

    return-void
.end method

.method public setInterceptFlag(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->isIntercept:Z

    return-void
.end method

.method public setWebChromeClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wccListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    return-void
.end method

.method public setWebViewClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->_wvcListener:Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;

    return-void
.end method
