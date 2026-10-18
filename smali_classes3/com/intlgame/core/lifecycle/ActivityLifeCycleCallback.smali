.class public Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;
.super Ljava/lang/Object;
.source "ActivityLifeCycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final FBLoginActivityName:Ljava/lang/String; = "com.facebook.FacebookActivity"

.field public static final FBLoginActivityNameH5:Ljava/lang/String; = "com.facebook.CustomTabMainActivity"

.field public static final GoolgeLoginActivityName:Ljava/lang/String; = "com.google.android.gms.auth.api.signin.internal.SignInHubActivity"


# instance fields
.field private currentSurvivalActivityCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->currentSurvivalActivityCount:I

    return-void
.end method

.method private isInterceptDispatch(Landroid/app/Activity;)Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "com.facebook.CustomTabMainActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.facebook.FacebookActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.auth.api.signin.internal.SignInHubActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityCreated top activity is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ActivityName:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    const-string p2, ""

    invoke-static {p1, p2}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 45
    const-string v0, "onActivityCreated"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->currentSurvivalActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->currentSurvivalActivityCount:I

    .line 47
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 58
    :cond_2
    :goto_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 59
    invoke-interface {v0, p2}, Lcom/intlgame/core/interfaces/ILifeCycle;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 118
    const-string v0, "onActivityDestroyed"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->currentSurvivalActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->currentSurvivalActivityCount:I

    if-nez v0, :cond_0

    .line 122
    invoke-static {p1}, Lcom/intlgame/core/battery/BatteryStatusReceiver;->stopBatteryListener(Landroid/content/Context;)V

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 125
    :cond_1
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 126
    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onDestroy()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 85
    const-string v0, "onActivityPaused"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 89
    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 75
    const-string v0, "onActivityResumed"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 79
    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 109
    const-string v0, "onActivitySaveInstanceState"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 112
    invoke-interface {v0, p2}, Lcom/intlgame/core/interfaces/ILifeCycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 65
    const-string v0, "onActivityStarted"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 68
    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 69
    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 96
    const-string v0, "onActivityStopped"

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->reportActivityLifecycle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 100
    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onStop()V

    goto :goto_0

    :cond_1
    return-void
.end method
