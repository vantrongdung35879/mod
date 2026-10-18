.class public Lcom/tencent/tme/live/framework/view/webview/TMEWebView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameCenterWebView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUrl:Ljava/lang/String;

.field private mRootUrl:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private needTransparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->needTransparent:Z

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->needTransparent:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->initTransparent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->needTransparent:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->initTransparent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->initWebView()V

    return-void
.end method

.method private initTransparent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/biz/R$styleable;->TmesWebView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TmesWebView_transparent:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->needTransparent:Z

    :cond_2
    return-void
.end method

.method private initWebView()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->needTransparent:Z

    if-eqz v1, :cond_1

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, -0xf4ebdd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$2;-><init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$3;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$3;-><init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$4;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$4;-><init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/tme/live/framework/view/webview/TMESJSReceiver;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/framework/view/webview/TMESJSReceiver;-><init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V

    const-string v2, "TMESJSReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    const-string v3, "databases"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    const-string v3, "geolocation"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tbs useragent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameCenterWebView"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/framework/view/webview/WebViewResourceHelper;->addChromeResourceIfNeeded(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "addChromeResourceIfNeeded : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    const-string v3, ""

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    iput-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "finish webview exception "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1
    const-string v2, "GameCenterWebView"

    invoke-static {v2, v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public goBack()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mCurrentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->load(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public load(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/b1/r;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mTitleView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mRootUrl:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mWebView:Landroid/webkit/WebView;

    if-nez p2, :cond_2

    const-string p1, "mWebView is null"

    const/4 p2, 0x0

    .line 1
    const-string v0, "GameCenterWebView"

    invoke-static {v0, p1, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_2
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setWetTitle(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;-><init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;Ljava/lang/String;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
