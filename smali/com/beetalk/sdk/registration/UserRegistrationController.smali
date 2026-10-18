.class public final Lcom/beetalk/sdk/registration/UserRegistrationController;
.super Ljava/lang/Object;
.source "UserRegistrationController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserRegistrationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRegistrationController.kt\ncom/beetalk/sdk/registration/UserRegistrationController\n+ 2 StringExts.kt\ncom/beetalk/sdk/exts/StringExtsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n52#2:256\n52#2:258\n1#3:257\n1#3:259\n*S KotlinDebug\n*F\n+ 1 UserRegistrationController.kt\ncom/beetalk/sdk/registration/UserRegistrationController\n*L\n73#1:256\n76#1:258\n73#1:257\n76#1:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J8\u0010\r\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u000e0\t2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\t2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J@\u0010\u0015\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u000e0\t2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J,\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\u000cH\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/UserRegistrationController;",
        "",
        "()V",
        "dialogRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/DialogFragment;",
        "taskCancellation",
        "Lcom/facebook/bolts/CancellationTokenSource;",
        "checkPrerequisites",
        "Lcom/facebook/bolts/Task;",
        "",
        "closeForm",
        "",
        "fetchConfig",
        "Lkotlin/Triple;",
        "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
        "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
        "region",
        "accessToken",
        "cancellationTokenSource",
        "fetchGameRequirement",
        "fetchUserRequirement",
        "gameRequirementResponse",
        "openForm",
        "activity",
        "Landroid/app/Activity;",
        "regionParam",
        "localeParam",
        "callback",
        "Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;",
        "release",
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
.field public static final INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

.field private static dialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/DialogFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public static synthetic $r8$lambda$1R7E2y72fLDkLTr0AW0UCt1Ifwk(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchUserRequirement$lambda$8(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4-uGv6Q5M4kodRA218EyK6e566o(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm$lambda$4(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8Sjt0lDRPplgYhpherlcv2UPkKU(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm$lambda$0(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IZ4osyqy_KhCaGKzNfZLeTSaK6o(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm$lambda$4$lambda$2(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JpDcs03F0I3JZaVm2JeXFALSZWE(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchGameRequirement$lambda$7(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L3aaD0e3rnGouNHGzkt_1Qw4wbo(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchConfig$lambda$5(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$liVw9tB9gdWLwdBHVkztu7OuItQ(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchGameRequirement$lambda$6(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$naJrzmTTpnrkFu2NwqM_nfYkZ7A(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Triple;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchUserRequirement$lambda$9(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xlfCmy4PhE3pQxeE21a-EvVkAZ0(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm$lambda$4$lambda$1(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/registration/UserRegistrationController;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$release(Lcom/beetalk/sdk/registration/UserRegistrationController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->release()V

    return-void
.end method

.method public static final synthetic access$setDialogRef$p(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/beetalk/sdk/registration/UserRegistrationController;->dialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final checkPrerequisites()Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->dialogRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v0}, Lcom/facebook/bolts/Task$Companion;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;

    if-eqz v0, :cond_2

    .line 42
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v0}, Lcom/facebook/bolts/Task$Companion;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 45
    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 47
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 48
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    .line 47
    invoke-direct {v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast v1, Ljava/lang/Exception;

    .line 46
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_4
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 62
    :cond_5
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 55
    :cond_6
    :goto_1
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 56
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 57
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    .line 56
    invoke-direct {v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast v1, Ljava/lang/Exception;

    .line 55
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static final closeForm()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 248
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->dialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 250
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->release()V

    .line 252
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/bolts/CancellationTokenSource;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 253
    sput-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method

.method private final fetchConfig(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/bolts/CancellationTokenSource;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lkotlin/Triple<",
            "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
            "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p3}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchGameRequirement(Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)V

    .line 189
    invoke-virtual {p3}, Lcom/facebook/bolts/CancellationTokenSource;->getToken()Lcom/facebook/bolts/CancellationToken;

    move-result-object p1

    .line 182
    invoke-virtual {v0, v1, p1}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private static final fetchConfig$lambda$5(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 1

    const-string v0, "$region"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cancellationTokenSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameRequirementTask"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    .line 186
    invoke-virtual {p3}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    .line 183
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchUserRequirement(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private final fetchGameRequirement(Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/bolts/CancellationTokenSource;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v1, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Lcom/facebook/bolts/CancellationTokenSource;->getToken()Lcom/facebook/bolts/CancellationToken;

    move-result-object p1

    .line 196
    invoke-virtual {v0, v1, p1}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda3;-><init>()V

    .line 220
    invoke-virtual {p2}, Lcom/facebook/bolts/CancellationTokenSource;->getToken()Lcom/facebook/bolts/CancellationToken;

    move-result-object p2

    .line 198
    invoke-virtual {p1, v0, p2}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private static final fetchGameRequirement$lambda$6(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;
    .locals 1

    const-string v0, "$region"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;->INSTANCE:Lcom/beetalk/sdk/registration/api/UserRegistrationApi;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;->fetchGameRequirement(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final fetchGameRequirement$lambda$7(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 3

    const-string v0, "gameRequirementTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    .line 201
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 203
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 204
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    .line 205
    const-string v2, "Not required"

    .line 203
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 202
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 211
    sget-object p0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 212
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 213
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    .line 214
    const-string/jumbo v2, "web url is empty"

    .line 212
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 211
    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task$Companion;->forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0

    .line 219
    :cond_1
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private final fetchUserRequirement(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
            "Lcom/facebook/bolts/CancellationTokenSource;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lkotlin/Triple<",
            "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
            "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v1, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p4}, Lcom/facebook/bolts/CancellationTokenSource;->getToken()Lcom/facebook/bolts/CancellationToken;

    move-result-object p1

    .line 229
    invoke-virtual {v0, v1, p1}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    .line 231
    new-instance p4, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda7;

    invoke-direct {p4, p3, p2}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda7;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private static final fetchUserRequirement$lambda$8(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
    .locals 1

    const-string v0, "$region"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;->INSTANCE:Lcom/beetalk/sdk/registration/api/UserRegistrationApi;

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/registration/api/UserRegistrationApi;->fetchUserRequirement(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final fetchUserRequirement$lambda$9(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Triple;
    .locals 1

    const-string v0, "$gameRequirementResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userRequirementTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    .line 233
    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, p0, p2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final openForm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 256
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 73
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object p1

    .line 75
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo p1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 258
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    if-nez p2, :cond_3

    .line 76
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    goto :goto_2

    :cond_3
    move-object v6, p2

    .line 79
    :goto_2
    new-instance v3, Lcom/facebook/bolts/CancellationTokenSource;

    invoke-direct {v3}, Lcom/facebook/bolts/CancellationTokenSource;-><init>()V

    .line 80
    sget-object p1, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    invoke-direct {p1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->checkPrerequisites()Lcom/facebook/bolts/Task;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda0;

    invoke-direct {p2, v3, v5}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;

    move-object v2, p2

    move-object v4, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V

    .line 171
    sget-object p0, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 83
    invoke-virtual {p1, p2, p0}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method private static final openForm$lambda$0(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;
    .locals 1

    const-string v0, "$taskCancellation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    sput-object p0, Lcom/beetalk/sdk/registration/UserRegistrationController;->taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;

    .line 82
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->fetchConfig(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)Lcom/facebook/bolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static final openForm$lambda$4(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 10

    const-string v0, "$taskCancellation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 85
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 87
    sput-object p0, Lcom/beetalk/sdk/registration/UserRegistrationController;->taskCancellation:Lcom/facebook/bolts/CancellationTokenSource;

    .line 89
    invoke-virtual {p5}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    invoke-virtual {p5}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p5}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    .line 95
    instance-of p2, p1, Lcom/garena/pay/android/exception/GGException;

    const-string p3, ""

    if-eqz p2, :cond_2

    .line 96
    check-cast p1, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {p1}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p0

    invoke-virtual {p1}, Lcom/garena/pay/android/exception/GGException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    invoke-virtual {p1}, Lcom/garena/pay/android/exception/GGException;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/garena/android/model/Result;

    goto :goto_2

    .line 98
    :cond_2
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, p0

    :goto_1
    invoke-static {p2, p3}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/garena/android/model/Result;

    .line 101
    :goto_2
    sget-object p1, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p4, p0}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;-><init>(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 106
    :cond_5
    invoke-virtual {p5}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/Triple;

    invoke-virtual {p5}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    invoke-virtual {p5}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    invoke-virtual {p5}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    .line 107
    invoke-virtual {v1}, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->getHasSkipped()Z

    move-result p5

    .line 108
    invoke-virtual {v1}, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->getHasIdentified()Z

    move-result v2

    if-nez p5, :cond_8

    if-eqz v2, :cond_6

    goto :goto_3

    .line 125
    :cond_6
    new-instance p5, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;

    .line 126
    new-instance v2, Lcom/beetalk/sdk/registration/api/response/GameRequirement;

    invoke-direct {v2, v0}, Lcom/beetalk/sdk/registration/api/response/GameRequirement;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;)V

    .line 125
    invoke-direct {p5, v2, v1}, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirement;Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;)V

    .line 129
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 131
    sget-object v2, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->Companion:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;

    .line 133
    invoke-virtual {v0}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isSkippable()Z

    move-result v8

    .line 138
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 131
    invoke-virtual/range {v2 .. v9}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 140
    new-instance p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;

    invoke-direct {p0, v0, p4}, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V

    check-cast p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->setInteractionCallback(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;

    move-object p0, p1

    .line 169
    :cond_7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/beetalk/sdk/registration/UserRegistrationController;->dialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_4

    .line 111
    :cond_8
    :goto_3
    sget-object p0, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4, v0, p5, v2}, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda5;-><init>(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZ)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 171
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openForm$lambda$4$lambda$1(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;->onResult(Lcom/garena/android/model/Result;)V

    return-void
.end method

.method private static final openForm$lambda$4$lambda$2(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZ)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$gameRequirementResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZZ)V

    .line 113
    invoke-static {v0}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    .line 112
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;->onResult(Lcom/garena/android/model/Result;)V

    return-void
.end method

.method private final release()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    sput-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->dialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
