.class public final Lcom/beetalk/sdk/account/security/SecurityVerifierController;
.super Ljava/lang/Object;
.source "SecurityVerifierController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecurityVerifierController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecurityVerifierController.kt\ncom/beetalk/sdk/account/security/SecurityVerifierController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,435:1\n1#2:436\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J2\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J*\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J\"\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0003J:\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J\"\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\t0\u0008J:\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J\u0008\u0010\u001f\u001a\u00020\nH\u0002J2\u0010 \u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J2\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J*\u0010%\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010#\u001a\u00020&2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J2\u0010\'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\t0\u0008\u00a8\u0006)"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/SecurityVerifierController;",
        "",
        "()V",
        "cancelRequest",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/beetalk/sdk/GGPlatform$Callback;",
        "Lcom/garena/android/model/Result;",
        "",
        "createBindRequest",
        "recipient",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
        "secondaryPassword",
        "createRebindRequest",
        "createUnbindRequest",
        "exchangeSwapToken",
        "Lcom/beetalk/sdk/GGLoginSession$SessionCallback;",
        "exchangeSwapTokenAsync",
        "Lcom/facebook/bolts/Task;",
        "Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;",
        "session",
        "Lcom/beetalk/sdk/GGLoginSession;",
        "getBindAccountOTP",
        "region",
        "locale",
        "Ljava/util/Locale;",
        "getBindInfo",
        "Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;",
        "getSwapAccountOTP",
        "obtainAccessToken",
        "verifyBindAccountOTP",
        "otp",
        "verifyIdentityByOTP",
        "credential",
        "Lcom/beetalk/sdk/account/security/model/Credential$OTP;",
        "verifyIdentityByPassword",
        "Lcom/beetalk/sdk/account/security/model/Credential$Password;",
        "verifySwapOTP",
        "Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;


# direct methods
.method public static synthetic $r8$lambda$4vGa6fmmAGLk3A06RHVvUIPpe0w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->exchangeSwapTokenAsync$lambda$23(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AE2ircbQgcQgjDvROK_b3fmr-UM(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyBindAccountOTP$lambda$3(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E-n3ZX2PEHX4itT7DT7ZbYUN-dk(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createBindRequest$lambda$5(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E1qx3vAOiHJu2baSHDd9OnSSG60(Lcom/beetalk/sdk/account/security/model/Credential$Password;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyIdentityByPassword$lambda$15(Lcom/beetalk/sdk/account/security/model/Credential$Password;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EwL10vOOPJsAJGm0dFJzs8tiZGU(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getSwapAccountOTP$lambda$18(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hs8E_BMjW1ZXTpdnUjniCypep_U()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createUnbindRequest$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$keruXBCzoxLjgu8lIxJDLhUssxM(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->exchangeSwapToken$lambda$22(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$luL4uuwYOWvTaUYLJvIpwd1pJmM(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyIdentityByOTP$lambda$13(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n7kccrt5sotlpM74MFMYtrR0LGA(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createRebindRequest$lambda$7(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pDxzUxTP3avUZNPXrbA59SayjA8(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getBindAccountOTP$lambda$1(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q2kwOFwJKeRjdqjPVHLyIZfVbYE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->cancelRequest$lambda$16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$tMYmxEIpTyIy9xfH0WSkVAOQarM()Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getBindInfo$lambda$11()Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$w665NMWHcKcUg2RYf8tKAlAy4NA(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifySwapOTP$lambda$21(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final cancelRequest$lambda$16()Ljava/lang/String;
    .locals 3

    .line 254
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 256
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 257
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v1, v0, v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->cancelRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final createBindRequest$lambda$5(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 7

    const-string v0, "$secondaryPassword"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->getVerifierToken()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 108
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v5}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateVerifierToken(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateSecondaryPassword(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v3, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 114
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 115
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v6, p0

    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->createBindRequest(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->isSuccessResponse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    sget-object p1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setVerifierToken(Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createRebindRequest$lambda$7(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 7

    const-string v0, "$recipient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->getVerifierToken()Ljava/lang/String;

    move-result-object v5

    .line 136
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->getIdentityToken()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 139
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v1, v3, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v5}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateVerifierToken(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v4}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateIdentityToken(Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 145
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v3

    move-object v6, p0

    .line 144
    invoke-virtual/range {v1 .. v6}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->createRebindRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->isSuccessResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->reset()V

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createUnbindRequest$lambda$9()Ljava/lang/String;
    .locals 4

    .line 164
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->getIdentityToken()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v2, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 168
    sget-object v2, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v2, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateIdentityToken(Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 171
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    sget-object v3, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v2, v1, v3, v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->createUnbindRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->isSuccessResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setIdentityToken(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final exchangeSwapToken$lambda$22(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 4

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    const-string v1, ""

    const-string v2, "getCode(...)"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 337
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;

    .line 338
    invoke-virtual {p3}, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->getError()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 339
    sget-object p2, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    check-cast p3, Lcom/beetalk/sdk/networking/model/CommonResponse;

    invoke-virtual {p2, p3}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;

    move-result-object p2

    .line 340
    invoke-virtual {p2}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p3

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    if-ne p3, v0, :cond_1

    .line 342
    invoke-static {v3}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSwapSession(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 343
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 346
    :cond_1
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 347
    sget-object p3, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 348
    invoke-virtual {p2}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 346
    invoke-virtual {p0, p3, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 350
    check-cast p2, Ljava/lang/Exception;

    .line 345
    invoke-interface {p1, p0, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 352
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 354
    :cond_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p0}, Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;->toAuthToken(Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p3

    .line 355
    invoke-static {}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->create()Lcom/beetalk/sdk/cache/SharedPrefStorage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 357
    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    .line 358
    sget-object p0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setSwapOpenId(Ljava/lang/String;)V

    .line 360
    invoke-static {p2}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 361
    invoke-static {p2, p1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_3

    .line 364
    :cond_3
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 365
    sget-object p2, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 366
    sget-object p3, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 364
    invoke-virtual {p0, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 363
    invoke-interface {p1, p0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_3

    .line 321
    :cond_4
    :goto_0
    invoke-virtual {p3}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p2

    .line 322
    instance-of p3, p2, Lcom/garena/pay/android/exception/GGException;

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Lcom/garena/pay/android/exception/GGException;

    goto :goto_1

    :cond_5
    move-object p3, v3

    :goto_1
    if-nez p3, :cond_8

    new-instance p3, Lcom/garena/pay/android/exception/GGException;

    .line 323
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p2, :cond_6

    .line 324
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v3

    .line 322
    :goto_2
    invoke-direct {p3, v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    :cond_8
    if-nez p0, :cond_9

    .line 327
    new-instance p0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    .line 329
    :cond_9
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 330
    invoke-virtual {p3}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 328
    invoke-virtual {p0, v0, p3}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 332
    invoke-interface {p1, p0, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 372
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final exchangeSwapTokenAsync(Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGLoginSession;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 378
    sget-object p1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 379
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    const-string/jumbo v2, "swap session doesn\'t exist"

    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 378
    invoke-virtual {p1, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 384
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->getSwapOpenId()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 387
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 395
    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 396
    sget-object p1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 397
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 398
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 399
    const-string v2, "invalid swap OpenID"

    .line 397
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 396
    invoke-virtual {p1, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    .line 403
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 411
    :cond_4
    sget-object v2, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v3, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, p1, v1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    .line 404
    :cond_5
    :goto_1
    sget-object p1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 405
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 406
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    .line 407
    const-string v2, "invalid AppID"

    .line 405
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 404
    invoke-virtual {p1, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    .line 388
    :cond_6
    :goto_2
    sget-object p1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 389
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 390
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    .line 391
    const-string v2, "invalid access token"

    .line 389
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 388
    invoke-virtual {p1, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private static final exchangeSwapTokenAsync$lambda$23(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;
    .locals 1

    const-string v0, "$openId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->exchangeSwapToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/ExchangeSwapTokenResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final getBindAccountOTP$lambda$1(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    const-string v0, "$recipient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 47
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v3}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    instance-of v0, p0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object p1

    :cond_1
    check-cast p1, Ljava/lang/String;

    move-object v3, p1

    .line 54
    :goto_0
    sget-object p1, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p0

    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getBindOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getBindInfo$lambda$11()Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;
    .locals 3

    .line 187
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 191
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 192
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v0, v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getBindInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->isSuccessResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;

    invoke-direct {v1, v0}, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;-><init>(Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;)V

    return-object v1

    .line 197
    :cond_0
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    check-cast v0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;

    move-result-object v0

    throw v0
.end method

.method private static final getSwapAccountOTP$lambda$18(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string v0, "$recipient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, v2, v3}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 275
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 276
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    instance-of v2, p0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 275
    :goto_0
    invoke-virtual {v1, v0, v3, p2, p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->getSwapBindingOTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/networking/model/CommonResponse;

    move-result-object p0

    .line 280
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final obtainAccessToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    .line 420
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAuthToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 422
    :cond_0
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw v0
.end method

.method private static final verifyBindAccountOTP$lambda$3(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 4

    const-string v0, "$otp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->verifyOTP(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 74
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->verifyBindOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->isSuccessResponse()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->getVerifierToken()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    .line 82
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 83
    const-string v0, "service respond empty security token"

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->getError()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gtz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->getCode()I

    move-result p1

    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 90
    sget-object p1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->getVerifierToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setVerifierToken(Ljava/lang/String;)V

    .line 92
    const-string p0, "Success"

    return-object p0

    .line 88
    :cond_2
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_3
    sget-object p1, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    check-cast p0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;

    move-result-object p0

    throw p0
.end method

.method private static final verifyIdentityByOTP$lambda$13(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;
    .locals 4

    const-string v0, "$credential"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    check-cast p0, Lcom/beetalk/sdk/account/security/model/Credential;

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateCredential(Lcom/beetalk/sdk/account/security/model/Credential;)V

    .line 214
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 216
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 217
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->verifyIdentity(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/Credential;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;->isSuccessResponse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    sget-object p1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;->getIdentityToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setIdentityToken(Ljava/lang/String;)V

    .line 221
    :cond_0
    check-cast p0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    .line 225
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final verifyIdentityByPassword$lambda$15(Lcom/beetalk/sdk/account/security/model/Credential$Password;)Ljava/lang/String;
    .locals 4

    const-string v0, "$credential"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 237
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    check-cast p0, Lcom/beetalk/sdk/account/security/model/Credential;

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateCredential(Lcom/beetalk/sdk/account/security/model/Credential;)V

    .line 239
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 240
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    sget-object v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-direct {v2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->obtainAccessToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 239
    invoke-virtual {v1, v0, v2, p0, v3}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->verifyIdentity(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/Credential;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;->isSuccessResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierIdentityResponse;->getIdentityToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setIdentityToken(Ljava/lang/String;)V

    .line 244
    :cond_0
    check-cast p0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    .line 248
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final verifySwapOTP$lambda$21(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;
    .locals 4

    const-string v0, "$otp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->verifyOTP(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3, v2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V

    .line 294
    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateAppId(Ljava/lang/String;)V

    .line 297
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierService;

    .line 298
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v1, v0, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierService;->verifySwapOTP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;->isSuccessResponse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    new-instance p1, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;-><init>(Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;)V

    .line 304
    sget-object p0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setSwapOpenId(Ljava/lang/String;)V

    return-object p1

    .line 307
    :cond_0
    sget-object p1, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    check-cast p0, Lcom/beetalk/sdk/networking/model/CommonResponse;

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final cancelRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final createBindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V

    invoke-static {p1, p4, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final createRebindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V

    invoke-static {p1, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final createUnbindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final exchangeSwapToken(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->restoreSwapSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->exchangeSwapTokenAsync(Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;

    move-result-object v1

    .line 319
    new-instance v2, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, p2, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/beetalk/sdk/exts/BoltsExtKt;->continueOnMain(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method public final getBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p5, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final getBindInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final getSwapAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p4, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda11;-><init>(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p5, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final verifyBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V

    invoke-static {p1, p4, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final verifyIdentityByOTP(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/account/security/model/Credential$OTP;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;-><init>(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V

    invoke-static {p1, p4, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final verifyIdentityByPassword(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$Password;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/account/security/model/Credential$Password;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/account/security/model/Credential$Password;)V

    invoke-static {p1, p3, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final verifySwapOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V

    invoke-static {p1, p4, v0}, Lcom/beetalk/sdk/helper/TaskUtil;->executeAsyncAndNotifyCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Ljava/util/concurrent/Callable;)V

    return-void
.end method
