.class public final Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;
.super Ljava/lang/Object;
.source "CustomTabsManager.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/helper/CustomTabsManager;->setActivityLifecycleListener(Landroidx/activity/ComponentActivity;Landroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "bundle",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "onActivityStarted",
        "onActivityStopped",
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
.field final synthetic $act:Landroidx/activity/ComponentActivity;

.field final synthetic $app:Landroid/app/Application;

.field final synthetic $newIntentListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/helper/CustomTabsManager;Landroid/app/Application;Landroidx/activity/ComponentActivity;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/helper/CustomTabsManager;",
            "Landroid/app/Application;",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    iput-object p2, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$app:Landroid/app/Application;

    iput-object p3, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$act:Landroidx/activity/ComponentActivity;

    iput-object p4, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$newIntentListener:Landroidx/core/util/Consumer;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$app:Landroid/app/Application;

    move-object v0, p0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 187
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$act:Landroidx/activity/ComponentActivity;

    iget-object v0, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->$newIntentListener:Landroidx/core/util/Consumer;

    invoke-virtual {p1, v0}, Landroidx/activity/ComponentActivity;->removeOnNewIntentListener(Landroidx/core/util/Consumer;)V

    .line 188
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$unbindConnection(Lcom/beetalk/sdk/helper/CustomTabsManager;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$isDeepLinkTriggered$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/beetalk/sdk/helper/CustomTabsManager$setActivityLifecycleListener$1;->this$0:Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$getListener$p(Lcom/beetalk/sdk/helper/CustomTabsManager;)Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager$Listener;->onCanceled()V

    .line 172
    :cond_0
    sget-object p1, Lcom/beetalk/sdk/helper/CustomTabsManager;->Companion:Lcom/beetalk/sdk/helper/CustomTabsManager$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/beetalk/sdk/helper/CustomTabsManager;->access$setDeepLinkTriggered$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
