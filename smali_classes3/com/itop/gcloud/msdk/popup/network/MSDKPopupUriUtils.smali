.class public Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;
.super Ljava/lang/Object;
.source "MSDKPopupUriUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;,
        Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;
    }
.end annotation


# static fields
.field private static REQUEST_KEY_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static REQUEST_KEY_DATA:Ljava/lang/String; = "data"

.field private static REQUEST_KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static REQUEST_KEY_GAME_ID:Ljava/lang/String; = "game_id"

.field private static REQUEST_KEY_GOPEN_ID:Ljava/lang/String; = "gopenid"

.field private static REQUEST_KEY_INSTALL_ID:Ljava/lang/String; = "install_id"

.field private static REQUEST_KEY_JWT_TOKEN:Ljava/lang/String; = "jwt_token"

.field private static REQUEST_KEY_OS:Ljava/lang/String; = "os"

.field private static REQUEST_KEY_POP_ID:Ljava/lang/String; = "pop_id"

.field private static REQUEST_KEY_SCENE:Ljava/lang/String; = "scene"

.field private static REQUEST_KEY_SIG:Ljava/lang/String; = "sig"

.field private static REQUEST_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static REQUEST_KEY_VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateUri(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;)Landroid/net/Uri;
    .locals 11

    .line 48
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameID:Ljava/lang/String;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->installID:Ljava/lang/String;

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->os:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->version:Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_GAME_ID:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    sget-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_INSTALL_ID:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const/4 v0, 0x3

    aput-object v1, v4, v0

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_OS:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v1, v4, v8

    const/4 v1, 0x5

    aput-object v2, v4, v1

    sget-object v2, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_VERSION:Ljava/lang/String;

    const/4 v9, 0x6

    aput-object v2, v4, v9

    const/4 v2, 0x7

    aput-object v3, v4, v2

    .line 48
    const-string v2, "%s=%s&%s=%s&%s=%d&%s=%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_0
    const-string/jumbo v9, "{}"

    .line 66
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v9, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameKey:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v6

    aput-object v2, v10, v5

    aput-object v3, v10, v7

    aput-object v9, v10, v0

    .line 63
    const-string v3, "%s?%s%s%s"

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/itop/gcloud/msdk/popup/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    .line 70
    iget-object v9, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 71
    const-string p0, "?"

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 72
    new-array p0, v8, [Ljava/lang/Object;

    aput-object v4, p0, v6

    aput-object v2, p0, v5

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_SIG:Ljava/lang/String;

    aput-object v1, p0, v7

    aput-object v3, p0, v0

    const-string v0, "%s&%s&%s=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 77
    :cond_2
    new-array p0, v8, [Ljava/lang/Object;

    aput-object v4, p0, v6

    aput-object v2, p0, v5

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_SIG:Ljava/lang/String;

    aput-object v1, p0, v7

    aput-object v3, p0, v0

    const-string v0, "%s?%s&%s=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v6

    aput-object p0, v1, v5

    aput-object v2, v1, v7

    sget-object p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_SIG:Ljava/lang/String;

    aput-object p0, v1, v0

    aput-object v3, v1, v8

    const-string p0, "%s%s?%s&%s=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 89
    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultUrlParams()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;
    .locals 3

    .line 93
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;-><init>()V

    .line 94
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v1

    .line 95
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gameID:Ljava/lang/String;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameID:Ljava/lang/String;

    .line 96
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->sdkKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameKey:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstallId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->installID:Ljava/lang/String;

    .line 98
    const-string v1, "1.0.0.454"

    iput-object v1, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static getInfo()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;
    .locals 4

    .line 103
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->getDefaultUrlParams()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriConstants;->HOST:Ljava/lang/String;

    iput-object v1, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    .line 105
    const-string v1, "/popup/get_info"

    iput-object v1, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->generateUri(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->GET:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;-><init>(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method public static queryCondition(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;
    .locals 5

    .line 111
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->getDefaultUrlParams()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    .line 116
    :try_start_0
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_CHANNEL_ID:Ljava/lang/String;

    iget v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->channelID:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_GOPEN_ID:Ljava/lang/String;

    iget-object v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gOpenID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_TOKEN:Ljava/lang/String;

    iget-object v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_POP_ID:Ljava/lang/String;

    iget v4, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_SCENE:Ljava/lang/String;

    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_JWT_TOKEN:Ljava/lang/String;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->jwtToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    const-string p0, ""

    .line 127
    :goto_0
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->generateUri(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->POST:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-direct {v1, v2, v0, p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;-><init>(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method public static reportData(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;
    .locals 5

    .line 132
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->getDefaultUrlParams()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    .line 137
    :try_start_0
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_CHANNEL_ID:Ljava/lang/String;

    iget v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->channelID:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_GOPEN_ID:Ljava/lang/String;

    iget-object v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gOpenID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_TOKEN:Ljava/lang/String;

    iget-object v4, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_POP_ID:Ljava/lang/String;

    iget v4, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_SCENE:Ljava/lang/String;

    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_JWT_TOKEN:Ljava/lang/String;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->jwtToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->REQUEST_KEY_DATA:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    const-string p0, ""

    .line 148
    :goto_0
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->generateUri(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;)Landroid/net/Uri;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->POST:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-direct {v0, v1, p1, p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;-><init>(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method
