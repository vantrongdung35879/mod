.class public Lcom/beetalk/sdk/EmailAuthActivity;
.super Landroid/app/Activity;
.source "EmailAuthActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final REQUEST_INFO_INTENT_KEY:Ljava/lang/String; = "email_request_info"

.field protected static final RESULT_INTENT_KEY:Ljava/lang/String; = "email_auth_result"


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field private redirectUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetredirectUrl(Lcom/beetalk/sdk/EmailAuthActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->redirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAuthCancelled(Lcom/beetalk/sdk/EmailAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->onAuthCancelled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthFailed(Lcom/beetalk/sdk/EmailAuthActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->onAuthFailed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAuthSuccess(Lcom/beetalk/sdk/EmailAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->onAuthSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monResult(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAuthCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/EmailAuthActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    return-void
.end method

.method private onAuthFailed(I)V
    .locals 2

    const/4 v0, 0x0

    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAuthFailed-failed"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity$3;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

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

    .line 151
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onAuthSuccess-user code %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/EmailAuthActivity;->requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity$2;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->retrieveSessionByRequestCode(ILcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    const-string v1, "email_auth_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-object p1, p1, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 203
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/EmailAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    return-void
.end method

.method private requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->redirectUrl:Ljava/lang/String;

    .line 167
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    move-object v0, p1

    .line 164
    invoke-static/range {v0 .. v5}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-beetalk-sdk-EmailAuthActivity(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-beetalk-sdk-EmailAuthActivity(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-beetalk-sdk-EmailAuthActivity(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "gop"

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/garena/msdk/R$layout;->msdk_email_auth_activity:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->setContentView(I)V

    .line 48
    sget p1, Lcom/garena/msdk/R$id;->tv_back:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p1, Lcom/garena/msdk/R$id;->tv_close:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget p1, Lcom/garena/msdk/R$id;->wv_email_auth:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 54
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 55
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 57
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 59
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 60
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 61
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    sget p1, Lcom/garena/msdk/R$string;->beetalk_sdk_label_email_login:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->setTitle(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/EmailAuthActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/EmailAuthActivity$1;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "email_request_info"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    .line 112
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://auth/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity;->redirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v3, "app_id"

    invoke-direct {v2, v3, p1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcom/beetalk/sdk/EmailAuthActivity;->redirectUrl:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "locale"

    invoke-static {v1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-direct {p1, v2, v1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEmailLoginContent()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$EMAIL_LOGIN_CONTENT;->NULL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "content"

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEmailLoginContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->requestExchangeNoGrant(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "create_grant"

    const-string v2, "false"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "grant"

    const-string/jumbo v2, "true"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getLoginScenario()Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_scenario"

    invoke-direct {p1, v2, v1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :try_start_1
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEmailOAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/StringUtils;->httpParamsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/EmailAuthActivity$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/EmailAuthActivity;)V

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->loadUrlWithAutoSwitch(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 145
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 115
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 116
    invoke-virtual {p0}, Lcom/beetalk/sdk/EmailAuthActivity;->finish()V

    return-void
.end method
