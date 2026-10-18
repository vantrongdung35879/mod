.class public final Lcom/beetalk/sdk/account/security/SecurityVerifierService;
.super Ljava/lang/Object;
.source "SecurityVerifierService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecurityVerifierService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecurityVerifierService.kt\ncom/beetalk/sdk/account/security/SecurityVerifierService\n*L\n1#1,276:1\n261#1,13:277\n261#1,13:290\n261#1,13:303\n261#1,13:316\n261#1,13:329\n261#1,13:342\n261#1,13:355\n261#1,13:368\n261#1,13:381\n261#1,13:394\n261#1,13:407\n*S KotlinDebug\n*F\n+ 1 SecurityVerifierService.kt\ncom/beetalk/sdk/account/security/SecurityVerifierService\n*L\n71#1:277,13\n92#1:290,13\n113#1:303,13\n127#1:316,13\n149#1:329,13\n170#1:342,13\n186#1:355,13\n200#1:368,13\n220#1:381,13\n239#1:394,13\n255#1:407,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J.\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004J.\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0005J\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004J\u001e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010 \u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J0\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0005J(\u0010&\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0005JH\u0010\'\u001a\u0002H(\"\u0006\u0008\u0000\u0010(\u0018\u00012\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00042\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040-2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0082\u0008\u00a2\u0006\u0002\u00100J&\u00101\u001a\u0002022\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0005J(\u00103\u001a\u0002042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u00105\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005J\u001e\u00106\u001a\u0002072\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u001a\u0010\n\u001a\u0004\u0018\u00010\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u0004*\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u0004*\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u00068"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/SecurityVerifierService;",
        "",
        "()V",
        "email",
        "",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
        "getEmail",
        "(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;",
        "gateway",
        "getGateway",
        "mobileNum",
        "getMobileNum",
        "otp",
        "Lcom/beetalk/sdk/account/security/model/Credential;",
        "getOtp",
        "(Lcom/beetalk/sdk/account/security/model/Credential;)Ljava/lang/String;",
        "password",
        "getPassword",
        "cancelRequest",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
        "appId",
        "accessToken",
        "createBindRequest",
        "recipient",
        "verifierToken",
        "secondaryPassword",
        "createRebindRequest",
        "identityToken",
        "createUnbindRequest",
        "exchangeSwapToken",
        "Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;",
        "openId",
        "getBindInfo",
        "Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;",
        "getBindOTP",
        "region",
        "locale",
        "Ljava/util/Locale;",
        "getSwapBindingOTP",
        "performRequest",
        "R",
        "requestType",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
        "url",
        "params",
        "",
        "enableDataDome",
        "",
        "(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/Object;",
        "verifyBindOTP",
        "Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;",
        "verifyIdentity",
        "Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;",
        "credential",
        "verifySwapOTP",
        "Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 2

    .line 38
    instance-of v0, p1, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;->getValue$sdk_release()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private final getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 0

    .line 49
    instance-of p1, p1, Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "whatsapp"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 1

    .line 43
    instance-of v0, p1, Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->getValue$sdk_release()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final getOtp(Lcom/beetalk/sdk/account/security/model/Credential;)Ljava/lang/String;
    .locals 2

    .line 51
    instance-of v0, p1, Lcom/beetalk/sdk/account/security/model/Credential$OTP;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/beetalk/sdk/account/security/model/Credential$OTP;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/Credential$OTP;->getValue$sdk_release()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private final getPassword(Lcom/beetalk/sdk/account/security/model/Credential;)Ljava/lang/String;
    .locals 2

    .line 53
    instance-of v0, p1, Lcom/beetalk/sdk/account/security/model/Credential$Password;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/beetalk/sdk/account/security/model/Credential$Password;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/Credential$Password;->getValue$sdk_release()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private final synthetic performRequest(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)TR;"
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p2, 0x4

    .line 270
    const-string v0, "R"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    move-object p2, v5

    check-cast p2, Ljava/lang/Class;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v4, p3

    move v6, p4

    .line 267
    invoke-static/range {v2 .. v7}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic performRequest$default(Lcom/beetalk/sdk/account/security/SecurityVerifierService;Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p0, p5, 0x1

    if-eqz p0, :cond_0

    .line 262
    sget-object p1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    :cond_0
    move-object v0, p1

    and-int/lit8 p0, p5, 0x8

    if-eqz p0, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    .line 269
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 p0, 0x4

    .line 270
    const-string p1, "R"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    move-object p0, v3

    check-cast p0, Ljava/lang/Class;

    const/4 v5, 0x1

    move-object v2, p3

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancelRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 197
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 198
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 196
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 369
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 376
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:cancel_request"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    const-class v4, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final createBindRequest(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifierToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryPassword"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 106
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 107
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 108
    const-string/jumbo p1, "verifier_token"

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 109
    const-string p1, "secondary_password"

    invoke-static {p1, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 110
    const-string p1, "mobile_no"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 111
    const-string p1, "email"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 105
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 304
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 311
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:create_bind_request"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    const-class v4, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 309
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final createRebindRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifierToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 163
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 164
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 165
    const-string p1, "identity_token"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 166
    const-string/jumbo p1, "verifier_token"

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 167
    const-string p1, "mobile_no"

    invoke-direct {p0, p5}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 168
    const-string p1, "email"

    invoke-direct {p0, p5}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 162
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 343
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 350
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:create_rebind_request"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    const-class v4, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final createUnbindRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 182
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 183
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 184
    const-string p1, "identity_token"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 181
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 356
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 363
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:create_unbind_request"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    const-class v4, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 361
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final exchangeSwapToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;
    .locals 7

    const-string v0, "openId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 251
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 252
    const-string p3, "open_id"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v0, p3

    .line 253
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 250
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 408
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 415
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/swap:exchange_session"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    const-class v4, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;

    return-object p1
.end method

.method public final getBindInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 124
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 125
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 123
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 128
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 324
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:get_bind_info"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    const-class v4, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;

    return-object p1
.end method

.method public final getBindOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipient"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 63
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "app_id"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 64
    const-string p1, "access_token"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    .line 65
    const-string p1, "mobile_no"

    invoke-direct {p0, p5}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    .line 66
    const-string p1, "email"

    invoke-direct {p0, p5}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, v1, p3

    if-eqz p2, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "getDefault(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "region"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 68
    const-string p1, "gateway"

    invoke-direct {p0, p5}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 69
    invoke-static {p4}, Lcom/beetalk/sdk/helper/LocaleHelper;->getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 62
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 278
    sget-object v2, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 285
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:send_otp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    const-class v5, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v7, 0x1

    const/4 v6, 0x1

    .line 283
    invoke-static/range {v2 .. v7}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final getSwapBindingOTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipient"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 213
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "app_id"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p2, :cond_0

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v2, "getDefault(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "region"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 215
    const-string p1, "mobile_no"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 216
    const-string p1, "email"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 217
    invoke-static {p3}, Lcom/beetalk/sdk/helper/LocaleHelper;->getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 218
    const-string p1, "gateway"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 212
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 382
    sget-object v2, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 389
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/swap:send_otp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    const-class v5, Lcom/beetalk/sdk/networking/model/CommonResponse;

    const/4 v7, 0x1

    const/4 v6, 0x1

    .line 387
    invoke-static/range {v2 .. v7}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommonResponse;

    return-object p1
.end method

.method public final verifyBindOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipient"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 85
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "app_id"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 86
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    .line 87
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    .line 88
    const-string p1, "mobile_no"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 89
    const-string p1, "email"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 90
    const-string p1, "gateway"

    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 84
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 291
    sget-object v2, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 298
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:verify_otp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    const-class v5, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    invoke-static/range {v2 .. v7}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;

    return-object p1
.end method

.method public final verifyIdentity(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/Credential;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 141
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "app_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 142
    const-string p1, "access_token"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 143
    const-string p1, "otp"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getOtp(Lcom/beetalk/sdk/account/security/model/Credential;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 144
    const-string p1, "secondary_password"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getPassword(Lcom/beetalk/sdk/account/security/model/Credential;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 145
    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string p3, "mobile_no"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, v0, p3

    if-eqz p4, :cond_1

    .line 146
    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    const-string p3, "email"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, v0, p3

    if-eqz p4, :cond_2

    .line 147
    invoke-direct {p0, p4}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "gateway"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    .line 140
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 330
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 337
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/bind:verify_identity"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    const-class v4, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;

    return-object p1
.end method

.method public final verifySwapOTP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipient"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 233
    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, v2

    .line 234
    const-string p2, "mobile_no"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getMobileNum(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 235
    const-string p2, "email"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getEmail(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 236
    const-string p2, "gateway"

    invoke-direct {p0, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getGateway(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    .line 237
    const-string p2, "app_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 232
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 395
    sget-object v2, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 402
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/game/account_security/swap:verify_otp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    const-class v5, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    invoke-static/range {v2 .. v7}, Lcom/beetalk/sdk/networking/HttpTaskKt;->requestApi(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;

    return-object p1
.end method
