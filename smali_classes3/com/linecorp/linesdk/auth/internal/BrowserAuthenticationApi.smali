.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    }
.end annotation


# static fields
.field private static final LENGTH_OAUTH_STATE:I = 0x10

.field private static final LENGTH_OPENID_NONCE:I = 0x10


# instance fields
.field private final authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-void
.end method

.method private static convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 272
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 16

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->getChallenge()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    .line 158
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-virtual/range {p3 .. p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/Scope;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "response_type"

    const-string v1, "code"

    const-string v2, "client_id"

    const-string/jumbo v4, "state"

    const-string v6, "code_challenge"

    const-string v8, "code_challenge_method"

    const-string v10, "redirect_uri"

    const-string v12, "sdk_ver"

    const-string v13, "5.8.1"

    const-string v14, "scope"

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "nonce"

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bot_prompt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    const-string v1, "/oauth2/v2.1/authorize/consent"

    invoke-static {v1, v0}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "loginChannelId"

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "returnUri"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual/range {p3 .. p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ui_locales"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getWebLoginPageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method createRedirectUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intent://result#Intent;package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";scheme=lineauth;end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->isChromeCustomTabSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v3, 0x106000b

    .line 215
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 217
    iget-object v3, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 218
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v1

    .line 224
    :goto_0
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->getLineAppVersion(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object v4

    const/4 v5, 0x1

    if-nez p3, :cond_1

    if-eqz v4, :cond_1

    .line 227
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 229
    const-string v4, "jp.naver.line.android"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, p1, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->resolveActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 232
    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, p3, v0, v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    .line 236
    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string v4, "https://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    if-ne p3, v5, :cond_2

    .line 245
    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    .line 246
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p2, p1, v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p2

    .line 249
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-static {p2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Landroid/os/Parcelable;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 250
    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, p2, v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    .line 242
    :cond_3
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Activity for LINE log-in is not found. uri="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAuthenticationResultFrom(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 3

    .line 283
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 285
    const-string p1, "Illegal redirection from external application."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getOAuthState()Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 294
    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v1, "friendship_status_changed"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 301
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsSuccess(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    goto :goto_1

    .line 303
    :cond_3
    const-string v0, "error"

    .line 304
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_description"

    .line 305
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsAuthenticationAgentError(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    :goto_1
    return-object p1

    .line 291
    :cond_4
    :goto_2
    const-string p1, "Illegal parameter value of \'state\'."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1
.end method

.method getRequest(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 108
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1, v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOAuthState(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/Scope;->OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 122
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0, v6}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOpenIdNonce(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createRedirectUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v0

    .line 126
    invoke-virtual/range {v1 .. v7}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 129
    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->isLineAppAuthenticationDisabled()Z

    move-result p2

    .line 128
    invoke-virtual {p0, p1, p3, p2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    .line 132
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getIntent()Landroid/content/Intent;

    move-result-object p3

    .line 133
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object p4

    .line 135
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->access$000(Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;)Z

    move-result p1

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-object p2
.end method

.method isChromeCustomTabSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method resolveActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 260
    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
