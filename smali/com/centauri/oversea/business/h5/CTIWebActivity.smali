.class public Lcom/centauri/oversea/business/h5/CTIWebActivity;
.super Landroid/app/Activity;
.source "CTIWebActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CTIWebActivity"


# instance fields
.field private aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

.field private aidlListener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

.field private h5:Lcom/centauri/oversea/business/h5/url/IH5;

.field private mDebugUrl:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUrlIntercept:Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

.field private mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

.field private orderKey:I

.field private refreshContent:Landroid/widget/TextView;

.field private refreshLayout:Landroid/widget/RelativeLayout;

.field private uiManager:Lcom/centauri/oversea/comm/MUIManager;

.field private wvContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->orderKey:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h5:Lcom/centauri/oversea/business/h5/url/IH5;

    .line 41
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    .line 42
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mUrlIntercept:Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    .line 44
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->wvContainer:Landroid/widget/FrameLayout;

    .line 45
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshContent:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    .line 48
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mDebugUrl:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 133
    new-instance v0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlListener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h5:Lcom/centauri/oversea/business/h5/url/IH5;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/AIDLHandler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->callbackAndDestroy()V

    return-void
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mDebugUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getDebugModeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MWebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->wvContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mUrlIntercept:Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    return-object p0
.end method

.method private callbackAndDestroy()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h5:Lcom/centauri/oversea/business/h5/url/IH5;

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    iget v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->orderKey:I

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/url/IH5;->getRetCode()I

    move-result v0

    iget-object v3, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h5:Lcom/centauri/oversea/business/h5/url/IH5;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/h5/url/IH5;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/centauri/oversea/business/h5/AIDLHandler;->onResponse(IILjava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    iget v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->orderKey:I

    const/4 v2, -0x1

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/centauri/oversea/business/h5/AIDLHandler;->onResponse(IILjava/lang/String;)V

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->finish()V

    return-void
.end method

.method private getAidlParams()V
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    const-string v1, "LogEnable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 172
    const-string v2, "OrderKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->orderKey:I

    .line 173
    const-string v2, "PayChannel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string v3, "PayParams"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {p0, v3}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->webProcessInit(Ljava/lang/String;)V

    .line 178
    const-string v4, "debugUrl"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mDebugUrl:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setLogEnable(Z)V

    .line 182
    invoke-static {v2}, Lcom/centauri/oversea/business/h5/url/UrlFactory;->create(Ljava/lang/String;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h5:Lcom/centauri/oversea/business/h5/url/IH5;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v3}, Lcom/centauri/oversea/business/h5/url/IH5;->setJsResource(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mUrlIntercept:Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    invoke-virtual {v0, v3}, Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;->setJsResource(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getDebugModeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!!webview debug mode  isApkInDebug\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/centauri/oversea/comm/CTITools;->isApkInDebug(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTIWebActivity"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "!!!webview debug mode  debugUrl\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTITools;->isApkInDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "!!!webview debug mode  custom url is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private setListeners()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    new-instance v1, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebViewClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;)V

    .line 219
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    new-instance v1, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebChromeClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;)V

    .line 241
    const-string/jumbo v0, "unipay_id_h5_close"

    invoke-static {p0, v0}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/h5/CTIWebActivity$4;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$4;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string/jumbo p1, "unipay_abroad_layout_h5"

    invoke-static {p0, p1}, Lcom/centauri/oversea/comm/CTICommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->setContentView(I)V

    .line 56
    const-string/jumbo p1, "unipay_id_h5_refresh_layout"

    invoke-static {p0, p1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    .line 57
    const-string/jumbo p1, "unipay_id_h5_err_content"

    invoke-static {p0, p1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->refreshContent:Landroid/widget/TextView;

    .line 58
    const-string/jumbo p1, "unipay_id_h5_webview_container"

    invoke-static {p0, p1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->wvContainer:Landroid/widget/FrameLayout;

    .line 59
    const-string p1, "progressBar"

    invoke-static {p0, p1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    const-string p1, "CTIWebActivity"

    const-string v0, "onDestroy()"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 66
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->getCentuarimds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "buy"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/centauri/oversea/comm/CTITools;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :cond_0
    :goto_0
    const-string/jumbo p1, "webview_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 73
    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 74
    const-string p1, "process_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 76
    new-instance p1, Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    .line 77
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->wvContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance p1, Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    invoke-direct {p1}, Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mUrlIntercept:Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    .line 90
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setIntercept(Lcom/centauri/oversea/business/h5/webview/IIntercept;)V

    .line 92
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getAidlParams()V

    .line 93
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->setListeners()V

    .line 94
    new-instance p1, Lcom/centauri/oversea/comm/MUIManager;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/comm/MUIManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->uiManager:Lcom/centauri/oversea/comm/MUIManager;

    .line 97
    new-instance p1, Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/business/h5/AIDLHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    .line 98
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlListener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/AIDLHandler;->setAIDLListener(Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;)V

    .line 99
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->bindService()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 117
    const-string v0, "CTIWebActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->aidlHandler:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/AIDLHandler;->release()V

    .line 121
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->destroy()V

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->mWebView:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->goBack()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->callbackAndDestroy()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public webProcessInit(Ljava/lang/String;)V
    .locals 5

    .line 301
    const-string v0, "env"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTITools;->getJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "idc"

    invoke-static {p1, v1}, Lcom/centauri/oversea/comm/CTITools;->getJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, "offerId"

    invoke-static {p1, v2}, Lcom/centauri/oversea/comm/CTITools;->getJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    const-string v3, "openId"

    invoke-static {p1, v3}, Lcom/centauri/oversea/comm/CTITools;->getJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string/jumbo v4, "zoneId"

    invoke-static {p1, v4}, Lcom/centauri/oversea/comm/CTITools;->getJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setApplicationContext(Landroid/content/Context;)V

    .line 309
    new-instance v4, Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    invoke-direct {v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;-><init>()V

    .line 310
    invoke-virtual {v4, v0}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v3}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->build()Lcom/centauri/oversea/newapi/params/InitParams;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/comm/GlobalData;->init(Lcom/centauri/oversea/newapi/params/InitParams;)V

    return-void
.end method
