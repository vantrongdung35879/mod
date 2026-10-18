.class public final Lcom/beetalk/sdk/networking/ResponseErrorMapping;
.super Ljava/lang/Object;
.source "ResponseErrorMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001c\u0010\u0007\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0007J\u001e\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/ResponseErrorMapping;",
        "",
        "()V",
        "convertLegacyCodeToGGErrorCode",
        "Lcom/garena/pay/android/GGErrorCode;",
        "code",
        "",
        "convertToGGErrorCode",
        "T",
        "dataResponse",
        "Lcom/beetalk/sdk/networking/DataResponse;",
        "errorMsg",
        "",
        "default",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/networking/ResponseErrorMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/ResponseErrorMapping;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->INSTANCE:Lcom/beetalk/sdk/networking/ResponseErrorMapping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertLegacyCodeToGGErrorCode(I)Lcom/garena/pay/android/GGErrorCode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 27
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 31
    :cond_3
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 32
    :cond_4
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->NO_AUTH:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NO_AUTH:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 33
    :cond_5
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->INVALID_SIGNATURE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->INVALID_SIGNATURE:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 40
    :cond_6
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    :goto_0
    return-object p0
.end method

.method public static final convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/beetalk/sdk/networking/DataResponse<",
            "TT;>;)",
            "Lcom/garena/pay/android/GGErrorCode;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dataResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-ne v0, v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/DataResponse;->getCode()I

    move-result p0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 18
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->REQUEST_EXCEEDS_LIMIT:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->INVALID_LOGIN_STATUS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 13
    :pswitch_3
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    :goto_0
    move-object v0, p0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final convertToGGErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static final convertToGGErrorCode(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)Lcom/garena/pay/android/GGErrorCode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_d

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "ssl_failure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 47
    :sswitch_1
    const-string v0, "error_profile_linked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 59
    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->PROFILE_ALREADY_LINKED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 47
    :sswitch_2
    const-string v0, "error_params"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 54
    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 47
    :sswitch_3
    const-string v0, "error_user_ban"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    .line 48
    :cond_3
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 47
    :sswitch_4
    const-string v0, "error_token_session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    .line 58
    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    goto/16 :goto_1

    .line 47
    :sswitch_5
    const-string v0, "error_platform_linked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 60
    :cond_5
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->PLATFORM_ALREADY_LINKED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_6
    const-string v0, "error_account_swapped"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 50
    :cond_6
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCOUNT_SECURITY_ALREADY_SWAPPED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_7
    const-string v0, "error_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 57
    :cond_7
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_8
    const-string v0, "error_scope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    .line 55
    :cond_8
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_9
    const-string v0, "invalid_grant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    .line 49
    :cond_9
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_a
    const-string v0, "error_too_many_requests"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    .line 53
    :cond_a
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->TOO_MANY_REQUESTS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_b
    const-string v0, "auth_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    .line 52
    :cond_b
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    .line 47
    :sswitch_c
    const-string v0, "server_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    .line 56
    :cond_c
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    :cond_d
    :goto_0
    if-nez p1, :cond_e

    .line 61
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    :cond_e
    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a7a59f4 -> :sswitch_c
        -0x7573cb4f -> :sswitch_b
        -0x45e3c07e -> :sswitch_a
        -0x32887f2c -> :sswitch_9
        -0x30cf32a3 -> :sswitch_8
        -0x30bbb6fe -> :sswitch_7
        -0x246561ad -> :sswitch_6
        -0x19f384d2 -> :sswitch_5
        -0x5abafa7 -> :sswitch_4
        0xd5ae1f2 -> :sswitch_3
        0x11af4b9d -> :sswitch_2
        0x11cae486 -> :sswitch_1
        0x7864ca57 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic convertToGGErrorCode$default(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;ILjava/lang/Object;)Lcom/garena/pay/android/GGErrorCode;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 46
    :cond_0
    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    return-object p0
.end method
