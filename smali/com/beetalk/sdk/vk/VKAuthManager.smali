.class public final Lcom/beetalk/sdk/vk/VKAuthManager;
.super Ljava/lang/Object;
.source "VKAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/vk/VKAuthManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\u000eJ\u001a\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006J\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/beetalk/sdk/vk/VKAuthManager;",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
        "callback",
        "Lcom/beetalk/sdk/GGPlatform$Callback;",
        "Lcom/garena/android/model/Result;",
        "Lcom/vk/api/sdk/auth/VKAccessToken;",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "Lcom/vk/api/sdk/auth/VKScope;",
        "buildLauncher",
        "",
        "Landroidx/activity/ComponentActivity;",
        "login",
        "setCallback",
        "isCanceled",
        "",
        "Lcom/vk/api/sdk/exceptions/VKAuthException;",
        "Companion",
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
.field public static final Companion:Lcom/beetalk/sdk/vk/VKAuthManager$Companion;

.field private static final DEFAULT_SCOPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vk/api/sdk/auth/VKScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private callback:Lcom/beetalk/sdk/GGPlatform$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/vk/api/sdk/auth/VKAccessToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/util/Collection<",
            "Lcom/vk/api/sdk/auth/VKScope;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XGfhvh9-RYcSBDv7M_e8amFRCKM(Lcom/beetalk/sdk/vk/VKAuthManager;Lcom/vk/api/sdk/auth/VKAuthenticationResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthManager;->buildLauncher$lambda$0(Lcom/beetalk/sdk/vk/VKAuthManager;Lcom/vk/api/sdk/auth/VKAuthenticationResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/vk/VKAuthManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/vk/VKAuthManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/vk/VKAuthManager;->Companion:Lcom/beetalk/sdk/vk/VKAuthManager$Companion;

    const/4 v0, 0x5

    .line 39
    new-array v0, v0, [Lcom/vk/api/sdk/auth/VKScope;

    const/4 v1, 0x0

    sget-object v2, Lcom/vk/api/sdk/auth/VKScope;->WALL:Lcom/vk/api/sdk/auth/VKScope;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 40
    sget-object v2, Lcom/vk/api/sdk/auth/VKScope;->PHOTOS:Lcom/vk/api/sdk/auth/VKScope;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 41
    sget-object v2, Lcom/vk/api/sdk/auth/VKScope;->FRIENDS:Lcom/vk/api/sdk/auth/VKScope;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 42
    sget-object v2, Lcom/vk/api/sdk/auth/VKScope;->OFFLINE:Lcom/vk/api/sdk/auth/VKScope;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 43
    sget-object v2, Lcom/vk/api/sdk/auth/VKScope;->VIDEO:Lcom/vk/api/sdk/auth/VKScope;

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/vk/VKAuthManager;->DEFAULT_SCOPE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method private final buildLauncher(Landroidx/activity/ComponentActivity;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/beetalk/sdk/vk/VKAuthManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/vk/VKAuthManager$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/vk/VKAuthManager;)V

    invoke-static {p1, v0}, Lcom/vk/api/sdk/VK;->login(Landroidx/activity/ComponentActivity;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private static final buildLauncher$lambda$0(Lcom/beetalk/sdk/vk/VKAuthManager;Lcom/vk/api/sdk/auth/VKAuthenticationResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    instance-of v0, p1, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    if-eqz p0, :cond_2

    .line 61
    check-cast p1, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;

    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;->getToken()Lcom/vk/api/sdk/auth/VKAccessToken;

    move-result-object p1

    invoke-static {p1}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    .line 60
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;

    if-eqz v0, :cond_2

    .line 66
    check-cast p1, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;

    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;->getException()Lcom/vk/api/sdk/exceptions/VKAuthException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/vk/VKAuthManager;->isCanceled(Lcom/vk/api/sdk/exceptions/VKAuthException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    if-eqz p0, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;->getException()Lcom/vk/api/sdk/exceptions/VKAuthException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/api/sdk/exceptions/VKAuthException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final isCanceled(Lcom/vk/api/sdk/exceptions/VKAuthException;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Lcom/vk/api/sdk/exceptions/VKAuthException;->isCanceled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/vk/api/sdk/exceptions/VKAuthException;->getAuthError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "cancel"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final login()V
    .locals 3

    const/4 v0, 0x0

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Start VK login"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/beetalk/sdk/vk/VKAuthManager;->DEFAULT_SCOPE:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    if-eqz v0, :cond_1

    .line 89
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    .line 90
    const-string/jumbo v2, "vk launcher is not found"

    .line 88
    invoke-static {v1, v2}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCallback(Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/vk/api/sdk/auth/VKAccessToken;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    .line 53
    iget-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthManager;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Landroidx/activity/ComponentActivity;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthManager;->buildLauncher(Landroidx/activity/ComponentActivity;)V

    return-void
.end method
