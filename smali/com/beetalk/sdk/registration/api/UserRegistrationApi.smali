.class public final Lcom/beetalk/sdk/registration/api/UserRegistrationApi;
.super Ljava/lang/Object;
.source "UserRegistrationApi.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserRegistrationApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRegistrationApi.kt\ncom/beetalk/sdk/registration/api/UserRegistrationApi\n*L\n1#1,87:1\n22#1,2:88\n22#1,2:90\n*S KotlinDebug\n*F\n+ 1 UserRegistrationApi.kt\ncom/beetalk/sdk/registration/api/UserRegistrationApi\n*L\n43#1:88,2\n77#1:90,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000b\"\u0006\u0008\u0000\u0010\u000c\u0018\u00012\u0006\u0010\r\u001a\u00020\u0006H\u0082\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/api/UserRegistrationApi;",
        "",
        "()V",
        "fetchGameRequirement",
        "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
        "region",
        "",
        "fetchUserRequirement",
        "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
        "accessToken",
        "parse",
        "Lcom/beetalk/sdk/networking/DataResponse;",
        "R",
        "json",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/beetalk/sdk/registration/api/UserRegistrationApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;->INSTANCE:Lcom/beetalk/sdk/registration/api/UserRegistrationApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/DataResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/beetalk/sdk/networking/DataResponse<",
            "TR;>;"
        }
    .end annotation

    const-class v0, Lcom/beetalk/sdk/networking/DataResponse;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x4

    const-string v3, "R"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    return-object p1
.end method


# virtual methods
.method public final fetchGameRequirement(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Lkotlin/Pair;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 31
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 29
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 34
    sget-object p1, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/api/v1/game/local-requirement"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 34
    invoke-static/range {v4 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-class v1, Lcom/beetalk/sdk/networking/DataResponse;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 88
    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fromJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 44
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    if-eqz p1, :cond_0

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    const-string v1, "data not found"

    invoke-direct {p1, v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 46
    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-direct {v0, v1, v2, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p1
.end method

.method public final fetchUserRequirement(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accessToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 64
    new-array v1, v1, [Lkotlin/Pair;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 65
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 66
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 63
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 68
    sget-object p1, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v4

    .line 69
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/api/v1/game/local-requirement/user-info"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 68
    invoke-static/range {v4 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 74
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_2

    .line 77
    const-class p2, Lcom/beetalk/sdk/networking/DataResponse;

    check-cast p2, Ljava/lang/reflect/Type;

    .line 90
    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 91
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromJson(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 78
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getCode()I

    move-result p2

    if-nez p2, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    if-eqz p1, :cond_0

    return-object p1

    .line 84
    :cond_0
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    const-string v0, "data not found"

    invoke-direct {p1, p2, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p2, Lcom/garena/pay/android/exception/GGException;

    .line 80
    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-direct {p2, v0, v1, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 75
    :cond_2
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p1
.end method
