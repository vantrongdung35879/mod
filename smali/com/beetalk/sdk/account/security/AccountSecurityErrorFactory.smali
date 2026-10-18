.class public final Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;
.super Ljava/lang/Object;
.source "AccountSecurityErrorFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;",
        "",
        "()V",
        "createException",
        "Lcom/garena/pay/android/exception/GGException;",
        "response",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityErrorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createException(Lcom/beetalk/sdk/networking/model/CommonResponse;)Lcom/garena/pay/android/exception/GGException;
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 29
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/CommonResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "error_invalid_mobile_no"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 34
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->INVALID_MOBILE_NUMBER:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_1
    const-string v1, "error_unmatched_mobile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 43
    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNMATCHED_MOBILE_OR_EMAIL:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_2
    const-string v1, "error_verify_otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 36
    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->VERIFY_OTP_FAILED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_3
    const-string v1, "error_no_binding_found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 30
    :cond_3
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->BINDING_INFO_NOT_FOUND:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_4
    const-string v1, "error_send_otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 35
    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SEND_OTP_FAILED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_5
    const-string v1, "error_ongoing_request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 46
    :cond_5
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ONGOING_REQUEST_EXISTS:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_6
    const-string v1, "error_identity_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 41
    :cond_6
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->INVALID_IDENTITY_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_7
    const-string v1, "error_verifier_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 38
    :cond_7
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->INVALID_VERIFIER_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_8
    const-string v1, "error_create_request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 47
    :cond_8
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->CREATE_REQUEST_FAILED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_9
    const-string v1, "error_no_first_bind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 31
    :cond_9
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->BINDING_INFO_NOT_FOUND:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_a
    const-string v1, "error_invalid_region"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 33
    :cond_a
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->INVALID_REGION:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_b
    const-string v1, "error_unsupported_platform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 57
    :cond_b
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_c
    const-string v1, "error_server"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 55
    :cond_c
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_d
    const-string v1, "error_unmatched_password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 42
    :cond_d
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNMATCHED_PASSWORD:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_e
    const-string v1, "error_params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 56
    :cond_e
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_f
    const-string v1, "error_email_blacklisted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 52
    :cond_f
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->EMAIL_BLOCKED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_10
    const-string v1, "error_email_used"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    .line 40
    :cond_10
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->MOBILE_OR_EMAIL_USED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_11
    const-string v1, "error_mobile_used"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 39
    :cond_11
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->MOBILE_OR_EMAIL_USED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_12
    const-string v1, "error_binded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 37
    :cond_12
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_BOUND:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 29
    :sswitch_13
    const-string v1, "error_login_fail_limit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    .line 51
    :cond_13
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_LOGIN_FAIL_LIMIT:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_14
    const-string v1, "error_account_swapped"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    .line 50
    :cond_14
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCOUNT_SECURITY_ALREADY_SWAPPED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_15
    const-string v1, "error_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    .line 54
    :cond_15
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_16
    const-string v1, "error_too_many_requests"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    .line 32
    :cond_16
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REQUEST_EXCEEDS_LIMIT:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_17
    const-string v1, "error_unmatched_email"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    .line 44
    :cond_17
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNMATCHED_MOBILE_OR_EMAIL:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_18
    const-string v1, "error_delete_request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    .line 48
    :cond_18
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->DELETE_REQUEST_FAILED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_19
    const-string v1, "error_account_not_swapped"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    .line 49
    :cond_19
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCOUNT_SECURITY_NOT_SWAPPED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 29
    :sswitch_1a
    const-string v1, "error_app_not_configured"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    .line 45
    :cond_1a
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_CONFIGURED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 58
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 28
    :goto_1
    invoke-direct {v0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7e331761 -> :sswitch_1a
        -0x7c814699 -> :sswitch_19
        -0x69a170ee -> :sswitch_18
        -0x5f87e96f -> :sswitch_17
        -0x45e3c07e -> :sswitch_16
        -0x30bbb6fe -> :sswitch_15
        -0x246561ad -> :sswitch_14
        -0xb670cb9 -> :sswitch_13
        -0x5c5984d -> :sswitch_12
        -0x42f727d -> :sswitch_11
        -0x19656e9 -> :sswitch_10
        0xbe6cbe2 -> :sswitch_f
        0x11af4b9d -> :sswitch_e
        0x11f70f86 -> :sswitch_d
        0x1706815a -> :sswitch_c
        0x39fa8114 -> :sswitch_b
        0x3a41a953 -> :sswitch_a
        0x45aa83b3 -> :sswitch_9
        0x47b9c963 -> :sswitch_8
        0x53f28e67 -> :sswitch_7
        0x561fd24f -> :sswitch_6
        0x5f424d94 -> :sswitch_5
        0x6797d24b -> :sswitch_4
        0x6e4d0ca1 -> :sswitch_3
        0x7241f0fc -> :sswitch_2
        0x7c4e244d -> :sswitch_1
        0x7fe0f3bf -> :sswitch_0
    .end sparse-switch
.end method
