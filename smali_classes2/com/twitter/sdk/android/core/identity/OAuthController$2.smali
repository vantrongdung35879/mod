.class Lcom/twitter/sdk/android/core/identity/OAuthController$2;
.super Ljava/lang/Object;
.source "OAuthController.java"

# interfaces
.implements Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/OAuthController;->buildCustomTabsListener()Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/OAuthController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mhandleCancelAuth(Lcom/twitter/sdk/android/core/identity/OAuthController;)V

    return-void
.end method

.method public onDeepLinkOpened(Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fgetoAuth1aService(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fgetauthConfig(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->buildCallbackUrl(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mhandleAuthSuccess(Lcom/twitter/sdk/android/core/identity/OAuthController;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v1, "Authorization failed, deep link mismatch."

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mhandleAuthError(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    :goto_0
    return-void
.end method

.method public onFailed(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$2;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mhandleAuthError(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method
