.class public Lcom/beetalk/sdk/GarenaAuthActivity;
.super Landroid/app/Activity;
.source "GarenaAuthActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final REQUEST_INFO_INTENT_KEY:Ljava/lang/String; = "garena_request_info"

.field protected static final RESULT_INTENT_KEY:Ljava/lang/String; = "garena_auth_result"


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field private redirectUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetredirectUrl(Lcom/beetalk/sdk/GarenaAuthActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAuthCancelled(Lcom/beetalk/sdk/GarenaAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthCancelled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthFailed(Lcom/beetalk/sdk/GarenaAuthActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthFailed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthSuccess(Lcom/beetalk/sdk/GarenaAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monResult(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAuthCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method

.method private onAuthFailed(I)V
    .locals 2

    const/4 v0, 0x0

    .line 217
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAuthFailed-failed"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity$4;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onAuthSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 189
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onAuthSuccess-user code %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity$3;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    const-string v1, "garena_auth_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 239
    iget-object p1, p1, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 240
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method

.method private requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    .line 204
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {p1, v0, v1, v2, p2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-beetalk-sdk-GarenaAuthActivity(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "gop"

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 72
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 73
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 74
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 76
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 80
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    sget p1, Lcom/garena/msdk/R$string;->beetalk_sdk_label_garena_login:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setTitle(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setContentView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$1;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$2;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "garena_request_info"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    .line 151
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://auth/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "create_grant"

    const-string v2, "false"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "grant"

    const-string/jumbo v2, "true"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_scenario"

    invoke-direct {p1, v2, v1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    .line 172
    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "locale"

    invoke-static {p1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :try_start_1
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGarenaOAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/StringUtils;->httpParamsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->loadUrlWithAutoSwitch(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 184
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 154
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 155
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method
