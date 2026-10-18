.class Lcom/twitter/sdk/android/core/identity/OAuthController$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/OAuthController;->newRequestTempTokenCallback()Lcom/twitter/sdk/android/core/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
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

    .line 82
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mhandleAuthError(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fputrequestToken(Lcom/twitter/sdk/android/core/identity/OAuthController;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V

    .line 86
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fgetoAuth1aService(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fgetrequestToken(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->getAuthorizeUrl(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$mdismissSpinner(Lcom/twitter/sdk/android/core/identity/OAuthController;)V

    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthController$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthController;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->-$$Nest$fgetcustomTabsManager(Lcom/twitter/sdk/android/core/identity/OAuthController;)Lcom/beetalk/sdk/helper/CustomTabsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->open(Ljava/lang/String;)V

    return-void
.end method
