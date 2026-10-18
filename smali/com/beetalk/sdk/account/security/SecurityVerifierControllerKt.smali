.class public final Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;
.super Ljava/lang/Object;
.source "SecurityVerifierController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "checkResultCode",
        "",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
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
.method public static final synthetic access$checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beetalk/sdk/account/security/SecurityVerifierControllerKt;->checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final checkResultCode(Lcom/beetalk/sdk/networking/model/CommonResponse;)Ljava/lang/String;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;->isSuccessResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Success"

    return-object p0

    .line 433
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;

    move-result-object p0

    throw p0
.end method
