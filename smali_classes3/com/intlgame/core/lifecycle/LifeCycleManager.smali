.class public Lcom/intlgame/core/lifecycle/LifeCycleManager;
.super Ljava/lang/Object;
.source "LifeCycleManager.java"


# static fields
.field private static mIsInitial:Z

.field protected static mLifeCycleObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/core/interfaces/ILifeCycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mIsInitial:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private didReceiveIntent(Landroid/content/Intent;)V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveIntent(add try) param is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/tools/IT;->bundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 172
    :try_start_0
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 173
    const-class v2, Lcom/intlgame/core/interfaces/IWakeup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Lcom/intlgame/core/interfaces/IWakeup;

    invoke-interface {v1, p1}, Lcom/intlgame/core/interfaces/IWakeup;->notifyReceiveIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getDeclaredField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 133
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 135
    :try_start_0
    const-string v0, "mInstrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 133
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private replaceInstrumentation(Landroid/app/Activity;)V
    .locals 3

    .line 105
    new-instance v0, Lcom/intlgame/core/lifecycle/INTLInstrumentation;

    invoke-direct {v0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;-><init>(Landroid/app/Activity;)V

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->setFieldValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :try_start_0
    const-string p1, "android.app.ActivityThread"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 110
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    const-string v2, "mInstrumentation"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v2, 0x1

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lifecycle replaceInstrumentation"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFieldValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->getDeclaredField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    const-string/jumbo p1, "unknown error occur while getDeclaredField"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addActivityLifeMonitor(Lcom/intlgame/core/interfaces/ILifeCycle;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 46
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_0
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 58
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_3
    const-string p1, "already contain,no need add again"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execOnActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 67
    invoke-interface {v1, p1, p2, p3}, Lcom/intlgame/core/interfaces/ILifeCycle;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execOnCreate(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "exec on create Intent is null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    :goto_0
    sget-object v1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 79
    invoke-interface {v2, v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->didReceiveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public execOnNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 86
    invoke-interface {v1, p1}, Lcom/intlgame/core/interfaces/ILifeCycle;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->didReceiveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public execOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 94
    sget-object v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/ILifeCycle;

    .line 95
    invoke-interface {v1, p1, p2, p3}, Lcom/intlgame/core/interfaces/ILifeCycle;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    new-instance v0, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;

    invoke-direct {v0}, Lcom/intlgame/core/lifecycle/ActivityLifeCycleCallback;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    const/4 p1, 0x1

    .line 41
    sput-boolean p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mIsInitial:Z

    return-void
.end method
