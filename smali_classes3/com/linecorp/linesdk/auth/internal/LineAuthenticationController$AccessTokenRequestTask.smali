.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;
.super Landroid/os/AsyncTask;
.source "LineAuthenticationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessTokenRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;",
        "Ljava/lang/Void;",
        "Lcom/linecorp/linesdk/auth/LineLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V

    return-void
.end method

.method private validateIdToken(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 261
    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$600(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->getOpenIdDiscoveryDocument()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    .line 270
    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    invoke-direct {v1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;-><init>()V

    .line 271
    invoke-virtual {v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->idToken(Lcom/linecorp/linesdk/LineIdToken;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->getIssuer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedIssuer(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedUserId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 274
    invoke-static {p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$500(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedChannelId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 275
    invoke-static {p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getOpenIdNonce()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedNonce(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->build()Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validate()V

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get OpenId Discovery Document.  Response Code: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Error Data: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 10

    const/4 v0, 0x0

    .line 198
    aget-object p1, p1, v0

    .line 199
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getRequestToken()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getSentRedirectUri()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 210
    invoke-static {v3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$600(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    move-result-object v3

    iget-object v4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 211
    invoke-static {v4}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$500(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->issueAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    .line 217
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->getScopes()Ljava/util/List;

    move-result-object v2

    .line 222
    sget-object v3, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$700(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getProfile(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 226
    invoke-static {v3}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linecorp/linesdk/LineProfile;

    .line 229
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object v4, v3

    .line 233
    :goto_0
    iget-object v5, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$800(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/AccessTokenCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V

    .line 235
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->getIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 238
    :try_start_0
    invoke-direct {p0, v0, v4}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->validateIdToken(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 244
    :cond_4
    :goto_1
    new-instance v4, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v4}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    iget-object v5, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    .line 245
    invoke-static {v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getOpenIdNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->nonce(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object v4

    .line 246
    invoke-virtual {v4, v3}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineProfile(Lcom/linecorp/linesdk/LineProfile;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineIdToken(Lcom/linecorp/linesdk/LineIdToken;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->friendshipStatusChanged(Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p1

    new-instance v0, Lcom/linecorp/linesdk/LineCredential;

    new-instance v9, Lcom/linecorp/linesdk/LineAccessToken;

    .line 251
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v5

    .line 253
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v9, v2}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    .line 249
    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineCredential(Lcom/linecorp/linesdk/LineCredential;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->build()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 205
    :cond_5
    :goto_2
    const-string p1, "Requested data is missing."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, [Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->doInBackground([Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentHandled()V

    .line 284
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$300(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->onPostExecute(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method
