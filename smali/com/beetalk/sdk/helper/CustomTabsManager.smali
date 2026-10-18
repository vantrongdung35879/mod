.class public final Lcom/beetalk/sdk/helper/CustomTabsManager;
.super Ljava/lang/Object;
.source "CustomTabsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;,
        Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0007J\u001e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0017H\u0002J\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/beetalk/sdk/helper/CustomTabsManager;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "connection",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "listener",
        "Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;",
        "simpleStyleIntentBuilder",
        "Landroidx/browser/customtabs/CustomTabsIntent$Builder;",
        "getSimpleStyleIntentBuilder",
        "()Landroidx/browser/customtabs/CustomTabsIntent$Builder;",
        "buildOnNewIntentListener",
        "Landroidx/core/util/Consumer;",
        "Landroid/content/Intent;",
        "open",
        "",
        "url",
        "",
        "intentBuilder",
        "setActivityLifecycleListener",
        "act",
        "Landroidx/activity/ComponentActivity;",
        "newIntentListener",
        "setDeepLinkListener",
        "setListener",
        "unbindConnection",
        "Companion",
        "Listener",
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
.field public static final Companion:Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;

.field private static isDeepLinkTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private connection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;


# direct methods
.method public static synthetic $r8$lambda$kUNrUW0bzAPdiNP5akx138oqlN8(Lcom/beetalk/sdk/helper/CustomTabsManager;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->buildOnNewIntentListener$lambda$1(Lcom/beetalk/sdk/helper/CustomTabsManager;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/helper/CustomTabsManager;->Companion:Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/beetalk/sdk/helper/CustomTabsManager;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/beetalk/sdk/helper/CustomTabsManager;)Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    return-object p0
.end method

.method public static final synthetic access$isDeepLinkTriggered$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 38
    sget-object v0, Lcom/beetalk/sdk/helper/CustomTabsManager;->isDeepLinkTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$setDeepLinkTriggered$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->isDeepLinkTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$unbindConnection(Lcom/beetalk/sdk/helper/CustomTabsManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->unbindConnection()V

    return-void
.end method

.method private final buildOnNewIntentListener()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/beetalk/sdk/helper/CustomTabsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/helper/CustomTabsManager$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/helper/CustomTabsManager;)V

    return-object v0
.end method

.method private static final buildOnNewIntentListener$lambda$1(Lcom/beetalk/sdk/helper/CustomTabsManager;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 131
    const-string v1, "android.intent.action.VIEW"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 132
    sget-object v0, Lcom/beetalk/sdk/helper/CustomTabsManager;->isDeepLinkTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onDeepLinkOpened(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final getSimpleStyleIntentBuilder()Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 2

    .line 60
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v1, 0x2

    .line 61
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBookmarksButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDownloadButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBackgroundInteractionEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const-string v1, "setBackgroundInteractionEnabled(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic open$default(Lcom/beetalk/sdk/helper/CustomTabsManager;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsIntent$Builder;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->getSimpleStyleIntentBuilder()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p2

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager;->open(Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V

    return-void
.end method

.method private final setActivityLifecycleListener(Landroidx/activity/ComponentActivity;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 157
    new-instance v1, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;-><init>(Lcom/beetalk/sdk/helper/CustomTabsManager;Landroid/app/Application;Landroidx/activity/ComponentActivity;Landroidx/core/util/Consumer;)V

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method private final setDeepLinkListener(Landroidx/activity/ComponentActivity;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->buildOnNewIntentListener()Landroidx/core/util/Consumer;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(Landroidx/core/util/Consumer;)V

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->setActivityLifecycleListener(Landroidx/activity/ComponentActivity;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private final unbindConnection()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->connection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->connection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final open(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->open$default(Lcom/beetalk/sdk/helper/CustomTabsManager;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsIntent$Builder;ILjava/lang/Object;)V

    return-void
.end method

.method public final open(Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/activity/ComponentActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/activity/ComponentActivity;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onFailed(Lcom/garena/pay/android/GGErrorCode;)V

    :cond_1
    return-void

    .line 80
    :cond_2
    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 82
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onFailed(Lcom/garena/pay/android/GGErrorCode;)V

    :cond_3
    return-void

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/beetalk/sdk/helper/CustomTabsManager;->unbindConnection()V

    .line 88
    new-instance v1, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;-><init>(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Lcom/beetalk/sdk/helper/CustomTabsManager;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    check-cast v1, Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    iput-object v1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->connection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    goto :goto_1

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onFailed(Lcom/garena/pay/android/GGErrorCode;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final setListener(Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->listener:Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    .line 122
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager;->activity:Landroid/app/Activity;

    instance-of v0, p1, Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/activity/ComponentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->setDeepLinkListener(Landroidx/activity/ComponentActivity;)V

    :cond_1
    return-void
.end method
