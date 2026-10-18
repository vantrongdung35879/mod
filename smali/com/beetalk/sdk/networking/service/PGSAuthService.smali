.class public final Lcom/beetalk/sdk/networking/service/PGSAuthService;
.super Ljava/lang/Object;
.source "PGSAuthService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPGSAuthService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PGSAuthService.kt\ncom/beetalk/sdk/networking/service/PGSAuthService\n*L\n1#1,60:1\n27#1:61\n19#1,13:62\n27#1:75\n19#1,13:76\n*S KotlinDebug\n*F\n+ 1 PGSAuthService.kt\ncom/beetalk/sdk/networking/service/PGSAuthService\n*L\n41#1:61\n41#1:62,13\n55#1:75\n55#1:76,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a2\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0008\u00a2\u0006\u0002\u0010\u0007\u001a\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0007\u001a\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "makePostRequest",
        "R",
        "url",
        "",
        "params",
        "",
        "",
        "(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;",
        "recallPGSSessionToken",
        "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
        "recallId",
        "uploadPGSSessionId",
        "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
        "accessToken",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final synthetic makePostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 19
    invoke-static/range {v1 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 28
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    sget-object p1, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const/4 v0, 0x4

    const-string v1, "R"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_1
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method

.method public static final recallPGSSessionToken(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
    .locals 13

    const-string v0, "recallId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "recall_id"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 38
    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 36
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 62
    sget-object p0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/oauth/user/recall"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 62
    invoke-static/range {v2 .. v12}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 71
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    return-object p0

    .line 72
    :cond_1
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method

.method public static final uploadPGSSessionId(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/SaveTokenResponse;
    .locals 12

    const-string v0, "accessToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recallId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "access_token"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 52
    const-string p0, "recall_id"

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 53
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "app_id"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 50
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 76
    sget-object p0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/oauth/user/store"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 76
    invoke-static/range {v1 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 85
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    sget-object p1, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-class v0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;

    return-object p0

    .line 86
    :cond_1
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method
