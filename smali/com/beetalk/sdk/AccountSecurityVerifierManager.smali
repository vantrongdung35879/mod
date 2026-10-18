.class public final Lcom/beetalk/sdk/AccountSecurityVerifierManager;
.super Ljava/lang/Object;
.source "AccountSecurityVerifierManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J4\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J,\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007JB\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J$\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\t0\u0008H\u0007JB\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0019H\u0007J4\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J4\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J,\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020 2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0007J4\u0010!\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\t0\u0008H\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/beetalk/sdk/AccountSecurityVerifierManager;",
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
        "getBindAccountOTP",
        "region",
        "locale",
        "Ljava/util/Locale;",
        "getBindInfo",
        "Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;",
        "getSwapAccountOTP",
        "onSwapComplete",
        "Lcom/beetalk/sdk/GGLoginSession$SessionCallback;",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/AccountSecurityVerifierManager;


# direct methods
.method public static synthetic $r8$lambda$qplV_H_173qKLMx1_-s5EjO8ox4(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->onSwapComplete$lambda$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/AccountSecurityVerifierManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->INSTANCE:Lcom/beetalk/sdk/AccountSecurityVerifierManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->cancelRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final createBindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createBindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final createRebindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createRebindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final createUnbindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->createUnbindRequest(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final getBindAccountOTP(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 8
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getBindAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final getBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 8
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getBindAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final getBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 7
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    if-nez p2, :cond_0

    .line 50
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    move-object v4, p2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static synthetic getBindAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 42
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    .line 40
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final getBindInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getBindInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final getSwapAccountOTP(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 8
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getSwapAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final getSwapAccountOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 8
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getSwapAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final getSwapAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 7
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    if-nez p2, :cond_0

    .line 137
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    move-object v4, p2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->getSwapAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static synthetic getSwapAccountOTP$default(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 129
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    .line 127
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/AccountSecurityVerifierManager;->getSwapAccountOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Locale;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final onSwapComplete(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    new-instance v1, Lcom/beetalk/sdk/AccountSecurityVerifierManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/beetalk/sdk/AccountSecurityVerifierManager$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-virtual {v0, p0, v1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->exchangeSwapToken(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method private static final onSwapComplete$lambda$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 162
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/SessionStatus;->isError()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    :cond_0
    return-void
.end method

.method public static final verifyBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyBindAccountOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final verifyIdentityByOTP(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyIdentityByOTP(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final verifyIdentityByPassword(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$Password;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifyIdentityByPassword(Landroid/app/Activity;Lcom/beetalk/sdk/account/security/model/Credential$Password;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static final verifySwapOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->INSTANCE:Lcom/beetalk/sdk/account/security/SecurityVerifierController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->verifySwapOTP(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/account/security/model/OTPRecipient;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method
