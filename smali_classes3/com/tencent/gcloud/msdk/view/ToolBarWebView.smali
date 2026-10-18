.class public Lcom/tencent/gcloud/msdk/view/ToolBarWebView;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;,
        Lcom/tencent/gcloud/msdk/view/ToolBarWebView$WebViewXClient;,
        Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;
    }
.end annotation


# static fields
.field private static final REQUESTCODE_FILECHOOSER:I = 0x1

.field private static final WEBVIEW_BACKGROUND_COLOR_DEFAULT:I = -0x19000001

.field private static final WEBVIEW_BACKGROUND_COLOR_INVALID:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackUnclickableBtn:Landroid/widget/ImageButton;

.field private mComponentCallback:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mForwardUnclickableBtn:Landroid/widget/ImageButton;

.field private mLandMoreBtn:Landroid/widget/ImageButton;

.field private mLoadingView:Lcom/tencent/gcloud/msdk/view/LoadingView;

.field private mMoreBtn:Landroid/widget/ImageButton;

.field private mOpenBrowserBtn:Landroid/widget/ImageButton;

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mReturnAppBtn:Landroid/widget/ImageButton;

.field private mShareChannels:Ljava/lang/String;

.field private mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mToolBarListener:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

.field private mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

.field private mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

.field private mWebTitle:Landroid/widget/TextView;

.field private mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private mWindow:Landroid/view/Window;

.field private uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private webViewDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZZZZ)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    .line 642
    new-instance v1, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    .line 782
    new-instance v1, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;

    invoke-direct {v1, p0, v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mComponentCallback:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;

    .line 98
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    .line 99
    const-string p2, "ToolBar WebView start"

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    .line 103
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->x5forceSystemWebView(Z)V

    .line 104
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->init(Landroid/content/Context;)V

    .line 105
    sget p1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_webview_activity:I

    if-nez p1, :cond_0

    .line 107
    const-string p1, "WebViewResID.layout_webview_activity == 0x00"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->initView()V

    .line 111
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->initEvent()V

    .line 112
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p1, p3, p4}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->initX5WebViewSetting(Lcom/tencent/smtt/sdk/WebView;ZZ)V

    .line 113
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 114
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance p2, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$WebViewXClient;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$WebViewXClient;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 115
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-virtual {p1, p5}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->setTitleBarHideable(Z)V

    .line 116
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-virtual {p1, p5}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->setToolBarPortraitHideable(Z)V

    .line 117
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-virtual {p1, p6}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->setToolBarLandscapeHideable(Z)V

    .line 118
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mComponentCallback:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->showToolBar(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ShareView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarListener:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/WebView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->checkBackForwardBtnState()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->refreshUIAfterStop()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method static synthetic access$902(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method private checkBackForwardBtnState()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLandMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mReturnAppBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mOpenBrowserBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarListener:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ShareView;->setShareListener(Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;)V

    .line 443
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$3;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$3;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 462
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    .line 463
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_webview_activity:I

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 466
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebTitle:Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->titleBar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 469
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 470
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->refresh:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    .line 471
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->stop:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    .line 472
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    .line 473
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    .line 474
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forward:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    .line 475
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    .line 476
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->land_more:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLandMoreBtn:Landroid/widget/ImageButton;

    .line 478
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->return_app:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mReturnAppBtn:Landroid/widget/ImageButton;

    .line 480
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->openByBrowser:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mOpenBrowserBtn:Landroid/widget/ImageButton;

    .line 482
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->more:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mMoreBtn:Landroid/widget/ImageButton;

    .line 483
    new-instance v2, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v2, v0, v1, v3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/tencent/smtt/sdk/WebView;)V

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    .line 484
    new-instance v0, Lcom/tencent/gcloud/msdk/view/ShareView;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/gcloud/msdk/view/ShareView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

    .line 486
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->getLoadingBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 488
    new-instance v1, Lcom/tencent/gcloud/msdk/view/LoadingView;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/tencent/gcloud/msdk/view/LoadingView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLoadingView:Lcom/tencent/gcloud/msdk/view/LoadingView;

    .line 490
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->playout:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/view/LoadingView;->addViewToGroup(Landroid/view/ViewGroup;)V

    .line 491
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->start()V

    goto :goto_0

    .line 493
    :cond_0
    const-string v0, "no set loading background hex color"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->showToolBar(I)V

    return-void
.end method

.method private refreshUIAfterStop()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setConfigCallback(Landroid/view/WindowManager;)V
    .locals 4

    .line 414
    :try_start_0
    const-class v0, Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "mWebViewCore"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBrowserFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sConfigCallback"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mWindowManager"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setViewColor(Landroid/view/View;II)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showToolBar(I)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v1, p1, :cond_2

    const/4 p1, 0x0

    .line 503
    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->showTitleBar(Z)V

    .line 504
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLandMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 506
    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->showTitleBar(Z)V

    .line 507
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLandMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setConfigCallback(Landroid/view/WindowManager;)V

    .line 364
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 365
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 366
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 367
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 368
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 373
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarListener:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    if-eqz v1, :cond_2

    .line 375
    invoke-interface {v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;->onClose()V

    .line 378
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mComponentCallback:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 380
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->destroy()V

    .line 381
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mLoadingView:Lcom/tencent/gcloud/msdk/view/LoadingView;

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewImagePath()Ljava/lang/String;
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    const-string v0, ""

    return-object v0

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "webview_capture"

    const-string v4, "capture"

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->saveBitmapToLocal(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 306
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the path of capture image : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public goBack()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 278
    :cond_0
    const-string v0, "There is no back page"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    goto :goto_0

    .line 289
    :cond_0
    const-string v0, "There is no forward page"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 403
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string/jumbo p1, "url should not empty"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView load url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewActivity onActivityResult, requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 575
    :cond_1
    new-array p1, p2, [Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    .line 576
    :goto_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {p2, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 577
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_2

    .line 578
    :cond_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_6

    if-nez p3, :cond_3

    move-object p1, v1

    goto :goto_1

    .line 579
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 580
    :goto_1
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {p2, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 581
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_2

    :cond_4
    if-nez p2, :cond_6

    .line 588
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_5

    .line 589
    invoke-interface {p1, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 590
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    .line 592
    :cond_5
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_6

    .line 593
    invoke-interface {p1, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 594
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    :cond_6
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 518
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->back:I

    if-ne p1, v0, :cond_1

    .line 520
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->goBack()V

    goto :goto_0

    .line 525
    :cond_1
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forward:I

    if-ne p1, v0, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->goForward()V

    goto :goto_0

    .line 527
    :cond_2
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->refresh:I

    if-ne p1, v0, :cond_3

    .line 528
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    goto :goto_0

    .line 529
    :cond_3
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->stop:I

    if-ne p1, v0, :cond_4

    .line 530
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    goto :goto_0

    .line 531
    :cond_4
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->return_app:I

    if-ne p1, v0, :cond_5

    .line 532
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->close()V

    goto :goto_0

    .line 533
    :cond_5
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->more:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->land_more:I

    if-ne p1, v0, :cond_7

    .line 534
    :cond_6
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->show(Landroid/widget/FrameLayout;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set fullscreen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 216
    const-string p1, "fullscreen failed"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x400

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setToolBarEnable(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarView:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->setToolBarEnable(Z)V

    return-void
.end method

.method public setToolBarListener(Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;)V
    .locals 1

    .line 243
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mToolBarListener:Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    .line 244
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mShareView:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ShareView;->setShareListener(Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;)V

    return-void
.end method

.method public setWebViewBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    .line 341
    const-string p1, "background bitmap is null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setWebViewBackgroundColor(I)V

    .line 346
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 347
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 349
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    const-string p1, "mBitmapDrawable isnot null, set background"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWebViewBackgroundColor(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, -0x19000001

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setViewColor(Landroid/view/View;II)V

    return-void
.end method

.method public showWithActivity(Landroid/app/Activity;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show ToolBarWebView with Activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string p1, "already shown"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    .line 199
    const-string p1, "can not find content: android.R.id.content"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 205
    :cond_2
    const-string p1, "Tool Bar WebView already has parent!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showWithDialog(ZZ)V
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show with dialog\uff1acanPressedBack:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFullscreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string p1, "already shown"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    const v0, 0x1030011

    goto :goto_0

    :cond_1
    const v0, 0x1030010

    .line 137
    :goto_0
    new-instance v1, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    .line 157
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 159
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 163
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    .line 164
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 165
    invoke-static {p1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 166
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    .line 170
    invoke-virtual {p0, p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setFullscreen(Z)V

    .line 171
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$2;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$2;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 182
    const-string p1, "Dialog show"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method
