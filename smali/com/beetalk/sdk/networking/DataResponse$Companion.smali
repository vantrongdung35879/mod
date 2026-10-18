.class public final Lcom/beetalk/sdk/networking/DataResponse$Companion;
.super Ljava/lang/Object;
.source "DataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/DataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataResponse.kt\ncom/beetalk/sdk/networking/DataResponse$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n1#2:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tJ\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J.\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\r0\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/DataResponse$Companion;",
        "",
        "()V",
        "parse",
        "Lcom/garena/android/model/Result;",
        "R",
        "response",
        "",
        "clazz",
        "Ljava/lang/Class;",
        "parseVoid",
        "",
        "parseWithRawData",
        "Lcom/beetalk/sdk/networking/ParsedResponse;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/DataResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/garena/android/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/garena/android/model/Result<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Lcom/beetalk/sdk/networking/DataResponse;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 54
    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 58
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 59
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_2

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 61
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p2, v0, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p2, v0, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 75
    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    .line 59
    :goto_1
    const-string p2, "fold(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final parseVoid(Ljava/lang/String;)Lcom/garena/android/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/garena/android/model/Result<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 109
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/beetalk/sdk/networking/DataResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 108
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    check-cast p1, Lcom/beetalk/sdk/networking/DataResponse;

    .line 112
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/beetalk/sdk/networking/ResponseErrorMapping;->convertToGGErrorCode(Lcom/beetalk/sdk/networking/DataResponse;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getError()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {v0, v1, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 122
    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    .line 110
    :goto_1
    const-string v0, "fold(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final parseWithRawData(Ljava/lang/String;Ljava/lang/Class;)Lcom/garena/android/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/ParsedResponse<",
            "TR;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/DataResponse$Companion;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/garena/android/model/Result;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance p2, Lcom/garena/android/model/Result$Failure;

    .line 88
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getExtraErrorInfo()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-direct {p2, v0, v1, p1}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;Ljava/lang/String;)V

    check-cast p2, Lcom/garena/android/model/Result;

    return-object p2

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 95
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 96
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 99
    new-instance v0, Lcom/beetalk/sdk/networking/ParsedResponse;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, p1}, Lcom/beetalk/sdk/networking/ParsedResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response data is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 94
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_2

    check-cast p1, Lcom/beetalk/sdk/networking/ParsedResponse;

    .line 101
    invoke-static {p1}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_1

    .line 102
    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    .line 100
    :goto_1
    const-string p2, "fold(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
