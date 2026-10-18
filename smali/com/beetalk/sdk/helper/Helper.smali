.class public Lcom/beetalk/sdk/helper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final META_APPLICATION_KEY:Ljava/lang/String; = "com.garena.sdk.applicationKey"

.field private static final META_APPLICATION_SOURCE_PROPERTY:Ljava/lang/String; = "com.garena.sdk.ApplicationSourceId"

.field private static final META_FACEBOOK_APPLICATION_ID:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field private static final META_GARENA_APPLICATION_ID:Ljava/lang/String; = "com.garena.sdk.applicationId"

.field private static final META_GARENA_APPLICATION_VARIANT:Ljava/lang/String; = "com.garena.sdk.applicationVariant"

.field private static final META_GOOGLE_CLIENT_ID:Ljava/lang/String; = "com.garena.sdk.google_client_id"

.field private static final META_GOOGLE_PLAY_GAMES_APP_ID:Ljava/lang/String; = "com.google.android.gms.games.APP_ID"

.field private static final META_GOOGLE_PLAY_GAMES_OAUTH_CLIENT_ID:Ljava/lang/String; = "com.garena.sdk.gms.games.OAUTH_CLIENT_ID"

.field private static final META_NOTIFICATION_LARGE_LOGO_PROPERTY:Ljava/lang/String; = "com.garena.sdk.push.large_logo"

.field private static final META_PUSH_APPLICATION_ID:Ljava/lang/String; = "com.garena.sdk.push.applicationId"

.field private static final META_TIKTOK_CLIENT_KEY:Ljava/lang/String; = "com.garena.sdk.tiktok_client_key"

.field private static final META_TWITTER_KEY:Ljava/lang/String; = "com.garena.sdk.twitter.key"

.field private static final META_TWITTER_SECRET:Ljava/lang/String; = "com.garena.sdk.twitter.secret"

.field private static source:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustInputResize(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 291
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 292
    new-instance p0, Lcom/beetalk/sdk/helper/Helper$1;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/Helper$1;-><init>(Landroid/view/View;)V

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 301
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void
.end method

.method public static convertErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    invoke-static {p0}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    .line 262
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    if-ne p0, v0, :cond_1

    .line 264
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    if-nez p0, :cond_0

    .line 275
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    .line 278
    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->convertErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static getGoogleClientId()Ljava/lang/String;
    .locals 3

    .line 108
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.google_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGooglePlayGamesClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 196
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.gms.games.OAUTH_CLIENT_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntegerAppId(Landroid/content/Context;)I
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.applicationId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 212
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 214
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 220
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public static getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    .line 78
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "App ID is less than or equal to 0."

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaDataAppVariant(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.applicationVariant"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaDataApplicationKey()Ljava/lang/String;
    .locals 3

    .line 103
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.applicationKey"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaDataSourceId(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 94
    sget-object v0, Lcom/beetalk/sdk/helper/Helper;->source:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.ApplicationSourceId"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/beetalk/sdk/helper/Helper;->source:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getMetadataFBAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.facebook.sdk.ApplicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationLargeLogo()Ljava/lang/String;
    .locals 2

    .line 206
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.push.large_logo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 158
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    return v0
.end method

.method public static getPushAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.push.applicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 174
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTikTokSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 201
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.tiktok_client_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeNow()I
    .locals 4

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getTwitterKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 179
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.twitter.key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 180
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getTwitterSecret(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 185
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.twitter.secret"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 186
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static hasGooglePlayGameAppId(Landroid/content/Context;)Z
    .locals 1

    .line 190
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.google.android.gms.games.APP_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 241
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isSupportGasBigImageShare(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    .line 228
    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result p0

    const/16 v1, 0x67

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportGasShare(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    .line 224
    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result p0

    const/16 v1, 0x3c

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .line 284
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openInExternalBrowser(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 252
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, -0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 233
    const-string v0, "android.intent.action.VIEW"

    .line 0
    const-string v1, "market://details?id="

    .line 233
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
