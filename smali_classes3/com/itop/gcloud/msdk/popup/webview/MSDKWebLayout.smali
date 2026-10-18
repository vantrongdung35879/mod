.class public Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;
.super Ljava/lang/Object;
.source "MSDKWebLayout.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MSDKWebDialog"


# instance fields
.field private backTv:Landroid/widget/ImageView;

.field private closeTv:Landroid/widget/ImageView;

.field private contentView:Landroid/view/View;

.field private htmlAsset:Ljava/lang/String;

.field private htmlContent:Ljava/lang/String;

.field private htmlFile:Ljava/io/File;

.field private htmlUrl:Ljava/lang/String;

.field private loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

.field private msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

.field private refreshBt:Landroid/widget/ImageView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "msdkpopup_dialog_webview_layout"

    .line 67
    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    .line 72
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->initWebView(Landroid/app/Activity;)V

    .line 73
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_webview_dialog_container"

    .line 75
    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 78
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_webview_dialog_close"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->closeTv:Landroid/widget/ImageView;

    .line 82
    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$1;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$1;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_webview_dialog_back"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->backTv:Landroid/widget/ImageView;

    .line 92
    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    const-string v1, "msdkpopup_webview_dialog_refresh"

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->refreshBt:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->resetButtonsVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->refreshBt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->load()V

    return-void
.end method

.method static synthetic access$300(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Landroid/webkit/WebView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->dealWithWebError(Landroid/webkit/WebView;)V

    return-void
.end method

.method private dealWithWebError(Landroid/webkit/WebView;)V
    .locals 2

    .line 349
    const-string v0, "MSDKWebDialog"

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_1
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->refreshBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private destroyWebView()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 404
    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const-string/jumbo v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 406
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method private initViewSetting()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 372
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 380
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v3, 0x2

    .line 384
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 388
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 396
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/16 v1, 0x19

    .line 399
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method private initWebView(Landroid/app/Activity;)V
    .locals 2

    .line 225
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    .line 226
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->initViewSetting()V

    .line 229
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$4;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 291
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$5;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 331
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$6;

    invoke-direct {v1, p0, p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$6;-><init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 344
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    const-string v0, "__wxOpenSdk"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private load()V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 198
    sget-object v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$7;->$SwitchMap$com$itop$gcloud$msdk$popup$webview$MSDKWebLayout$LoadType:[I

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlContent:Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlAsset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlAsset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private resetButtonsVisibility()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->closeTv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->backTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->refreshBt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public loadFromAssets(Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;)V
    .locals 0

    .line 176
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    .line 177
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlAsset:Ljava/lang/String;

    .line 178
    sget-object p1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_ASSET:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 179
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->load()V

    return-void
.end method

.method public loadHtml(Ljava/io/File;Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;)V
    .locals 0

    .line 183
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    .line 184
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlFile:Ljava/io/File;

    .line 185
    sget-object p1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_FILE:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 186
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->load()V

    return-void
.end method

.method public loadHtml(Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;)V
    .locals 0

    .line 190
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    .line 191
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlContent:Ljava/lang/String;

    .line 192
    sget-object p1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_CONTENT:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 193
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->load()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;)V
    .locals 0

    .line 169
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    .line 170
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->htmlUrl:Ljava/lang/String;

    .line 171
    sget-object p1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_URL:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->loadType:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 172
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->load()V

    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    if-eqz v0, :cond_0

    .line 444
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    const-string v1, "action"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;->onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 417
    const-string v1, "action"

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;->onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGetWording()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 456
    const-string v0, ""

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    if-eqz v0, :cond_0

    .line 430
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    const-string v1, "action"

    const-string v2, "reject"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->msdkJsCall:Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;->onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 435
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public removeFromParent()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 149
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setWindowType(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->resetButtonsVisibility()V

    .line 157
    sget-object v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$7;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$WindowType:[I

    invoke-virtual {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->backTv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->closeTv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
