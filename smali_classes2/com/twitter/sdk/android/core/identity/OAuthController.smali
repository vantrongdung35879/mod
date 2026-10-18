.class Lcom/twitter/sdk/android/core/identity/OAuthController;
.super Ljava/lang/Object;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;
    }
.end annotation


# static fields
.field private static final DEEPLINK_PARAM_DENIED:Ljava/lang/String; = "denied"


# instance fields
.field private final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final customTabsManager:Lcom/beetalk/sdk/helper/CustomTabsManager;

.field private final listener:Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;

.field private final oAuth1aService:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

.field private requestToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final spinner:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetauthConfig(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomTabsManager(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/beetalk/sdk/helper/CustomTabsManager;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->customTabsManager:Lcom/beetalk/sdk/helper/CustomTabsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->listener:Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoAuth1aService(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->oAuth1aService:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestToken(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->requestToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrequestToken(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->requestToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissSpinner(Lcom/twitter/sdk/android/core/identity/OAuthController;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->dismissSpinner()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthError(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthSuccess(Lcom/twitter/sdk/android/core/identity/OAuthController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelAuth(Lcom/twitter/sdk/android/core/identity/OAuthController;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleCancelAuth()V

    return-void
.end method

.method constructor <init>(Landroid/widget/ProgressBar;Lcom/beetalk/sdk/helper/CustomTabsManager;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->spinner:Landroid/widget/ProgressBar;

    .line 65
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->customTabsManager:Lcom/beetalk/sdk/helper/CustomTabsManager;

    .line 66
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 67
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->oAuth1aService:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 68
    iput-object p5, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->listener:Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;

    return-void
.end method

.method private buildCustomTabsListener()Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;
    .locals 1

    .line 108
    new-instance v0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/OAuthController$2;-><init>(Lcom/twitter/sdk/android/core/identity/OAuthController;)V

    return-object v0
.end method

.method private dismissSpinner()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private handleAuthError(Lcom/twitter/sdk/android/core/TwitterAuthException;)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method private handleAuthSuccess(Ljava/lang/String;)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "OAuth web view completed successfully"

    const-string v2, "Twitter"

    invoke-interface {v0, v2, v1}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 152
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v0, "Authorization failed, failed to parse deeplink uri"

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 156
    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->getQueryParams(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object p1

    .line 161
    const-string v0, "denied"

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleCancelAuth()V

    return-void

    .line 166
    :cond_1
    const-string v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 169
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Converting the request token to an access token."

    invoke-interface {v0, v2, v1}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->oAuth1aService:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->newRequestAccessTokenCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->requestToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->requestAccessToken(Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_2
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v0, "Failed to get authorization, bundle incomplete"

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method private handleCancelAuth()V
    .locals 2

    .line 181
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v1, "Authorization failed, request was canceled."

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method private newRequestAccessTokenCallback()Lcom/twitter/sdk/android/core/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/twitter/sdk/android/core/identity/OAuthController$3;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/OAuthController$3;-><init>(Lcom/twitter/sdk/android/core/identity/OAuthController;)V

    return-object v0
.end method

.method private newRequestTempTokenCallback()Lcom/twitter/sdk/android/core/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/OAuthController$1;-><init>(Lcom/twitter/sdk/android/core/identity/OAuthController;)V

    return-object v0
.end method


# virtual methods
.method protected handleAuthError(ILcom/twitter/sdk/android/core/TwitterAuthException;)V
    .locals 2

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v1, "auth_error"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object p2, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->listener:Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;

    invoke-interface {p2, p1, v0}, Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;->onComplete(ILandroid/content/Intent;)V

    return-void
.end method

.method startAuth()V
    .locals 3

    .line 73
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Obtaining request token to start the sign in flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->customTabsManager:Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->buildCustomTabsListener()Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->setListener(Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;)V

    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController;->oAuth1aService:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->newRequestTempTokenCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->requestTempToken(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method
