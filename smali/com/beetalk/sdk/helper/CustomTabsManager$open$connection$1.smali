.class public final Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/helper/CustomTabsManager;->open(Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/beetalk/sdk/helper/CustomTabsManager$open$connection$1",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "onCustomTabsServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "client",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "onServiceDisconnected",
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


# instance fields
.field final synthetic $intentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Lcom/beetalk/sdk/helper/CustomTabsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->$intentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iput-object p2, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    iput-object p3, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->$url:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->$intentBuilder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSession(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    if-nez p2, :cond_2

    .line 96
    :cond_1
    new-instance p2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p2, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    .line 95
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    sget-object p1, Lcom/beetalk/sdk/helper/CustomTabsManager;->Companion:Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$setDeepLinkTriggered$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 101
    :try_start_0
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$getActivity$p(Lcom/beetalk/sdk/helper/CustomTabsManager;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 103
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$open$connection$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$getListener$p(Lcom/beetalk/sdk/helper/CustomTabsManager;)Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, p2}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onFailed(Lcom/garena/pay/android/GGErrorCode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
