.class public Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;
.super Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/helper/ActivityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLifecycleMonitor"
.end annotation


# instance fields
.field private final action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 35
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

    invoke-interface {p1}, Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;->onDestroy()V

    .line 37
    invoke-virtual {p0}, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->tryRelease()V

    :cond_0
    return-void
.end method

.method public tryRelease()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    :cond_0
    return-void
.end method
