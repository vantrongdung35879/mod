.class public final Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;
.super Ljava/lang/Object;
.source "AccountSecurityParamValidation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004J&\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0016\u0008\u0002\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\u001e0\u001dJ\u000e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;",
        "",
        "()V",
        "INVALID_CREDENTIAL_DATA",
        "",
        "INVALID_IDENTITY_TOKEN",
        "INVALID_OTP_MESSAGE",
        "INVALID_RECIPIENT_DATA",
        "INVALID_SECONDARY_PASSWORD",
        "INVALID_VERIFIER_TOKEN",
        "requireNotEmpty",
        "",
        "str",
        "message",
        "validateAccessToken",
        "accessToken",
        "validateAppId",
        "appId",
        "validateCredential",
        "credential",
        "Lcom/beetalk/sdk/account/security/model/Credential;",
        "validateIdentityToken",
        "content",
        "validateOpenId",
        "openId",
        "validateRecipient",
        "recipient",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
        "requiredRecipientTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "validateSecondaryPassword",
        "validateVerifierToken",
        "verifyOTP",
        "otp",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

.field private static final INVALID_CREDENTIAL_DATA:Ljava/lang/String; = "Credential data cannot be empty"

.field private static final INVALID_IDENTITY_TOKEN:Ljava/lang/String; = "Identity data not found. Please verify current account by OTP"

.field private static final INVALID_OTP_MESSAGE:Ljava/lang/String; = "OTP cannot be empty"

.field private static final INVALID_RECIPIENT_DATA:Ljava/lang/String; = "OTPRecipient data cannot be empty"

.field private static final INVALID_SECONDARY_PASSWORD:Ljava/lang/String; = "Secondary password cannot be empty"

.field private static final INVALID_VERIFIER_TOKEN:Ljava/lang/String; = "Verification data not found. Please verify current account by OTP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic requireNotEmpty$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 38
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic validateRecipient$default(Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;ILjava/lang/Object;)V
    .locals 1

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 51
    new-array p2, p2, [Lkotlin/reflect/KClass;

    const-class p3, Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-class p3, Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-class p3, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    aput-object p3, p2, p4

    .line 50
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->validateRecipient(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final validateAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 111
    const-string v0, "Access token cannot be empty"

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateAppId(Ljava/lang/String;)V
    .locals 1

    .line 104
    const-string v0, "Invalid appId"

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateCredential(Lcom/beetalk/sdk/account/security/model/Credential;)V
    .locals 1

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/Credential;->getValue$sdk_release()Ljava/lang/String;

    move-result-object p1

    .line 68
    const-string v0, "Credential data cannot be empty"

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateIdentityToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v0, "Identity data not found. Please verify current account by OTP"

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateOpenId(Ljava/lang/String;)V
    .locals 1

    .line 97
    const-string v0, "Invalid openId"

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateRecipient(Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredRecipientTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->getValue$sdk_release()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "OTPRecipient data cannot be empty"

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance p1, Lcom/garena/pay/android/exception/GGException;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    const-string v0, "Invalid recipient type"

    invoke-direct {p1, p2, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public final validateSecondaryPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "Secondary password cannot be empty"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateVerifierToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "Verification data not found. Please verify current account by OTP"

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final verifyOTP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "OTP cannot be empty"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/account/security/AccountSecurityParamValidation;->requireNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
