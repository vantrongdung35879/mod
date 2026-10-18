.class public Lcom/intlgame/core/compliance/INTLParentalGuidance;
.super Ljava/lang/Object;
.source "INTLParentalGuidance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;
    }
.end annotation


# static fields
.field private static final LIFECYCLE_DELAY_CHECK_INTERVAL:J = 0x3e8L

.field private static final PARENTAL_GUIDANCE_HEARTBEAT_ENABLE:Ljava/lang/String; = "PARENTAL_GUIDANCE_HEARTBEAT_ENABLE"


# instance fields
.field private application:Landroid/app/Application;

.field private final handler:Landroid/os/Handler;

.field private isAppInForeground:Z

.field private isInitialized:Z

.field private final lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

.field private volatile shouldStopLifecycleCheckTask:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isInitialized:Z

    .line 18
    iput-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->application:Landroid/app/Application;

    .line 20
    new-instance v1, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    invoke-direct {v1, p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;-><init>(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V

    iput-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    .line 22
    iput-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->shouldStopLifecycleCheckTask:Z

    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "INTLParentalGuidance"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/core/compliance/INTLParentalGuidance;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->shouldStopLifecycleCheckTask:Z

    return p0
.end method

.method static synthetic access$100(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->checkLifecycle()V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->delayCheckLifecycle()V

    return-void
.end method

.method private declared-synchronized checkIsAppInForeground()Z
    .locals 8

    const-string v0, "checkIsAppInForeground, processInfoList is "

    const-string v1, "checkIsAppInForeground, activityManager is "

    monitor-enter p0

    const/4 v2, 0x0

    .line 53
    :try_start_0
    const-string v3, "checkIsAppInForeground"

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->application:Landroid/app/Application;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 56
    const-string v6, "null"

    goto :goto_1

    :cond_1
    const-string v6, "not null"

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 57
    iget-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 58
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 59
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_5

    .line 60
    const-string v5, "null"

    goto :goto_4

    :cond_5
    const-string v5, "not null"

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 63
    monitor-exit p0

    return v2

    .line 65
    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v1, :cond_7

    .line 66
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x64

    if-eq v3, v5, :cond_8

    goto :goto_5

    .line 69
    :cond_8
    :try_start_3
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 70
    const-string v3, "intl_inner_webview"

    .line 71
    iget-object v5, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 74
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsAppInForeground, process in foreground. processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewProcessName: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    monitor-exit p0

    return v4

    :catch_0
    move-exception v1

    .line 79
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", stacktrace: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 83
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stacktrace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :cond_a
    monitor-exit p0

    return v2

    :goto_6
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private checkLifecycle()V
    .locals 3

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z

    .line 135
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->checkIsAppInForeground()Z

    move-result v1

    iput-boolean v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z

    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->onEnterForeground()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->onEnterBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private delayCheckLifecycle()V
    .locals 4

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onEnterBackground()V
    .locals 3

    const-string v0, "onEnterBackground, isAppInForeground: "

    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/intlgame/api/INTLSDK$Compilance;->onEnterBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onEnterForeground()V
    .locals 3

    const-string v0, "onEnterForeground, isAppInForeground: "

    .line 116
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/intlgame/api/INTLSDK$Compilance;->onEnterForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "PARENTAL_GUIDANCE_HEARTBEAT_ENABLE status: "

    .line 35
    :try_start_0
    const-string v1, "INTLParentalGuidance initialize"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-boolean v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isInitialized:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isInitialized:Z

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->application:Landroid/app/Application;

    .line 40
    invoke-direct {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->checkIsAppInForeground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z

    .line 41
    const-string p1, "PARENTAL_GUIDANCE_HEARTBEAT_ENABLE"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/intlgame/api/INTLSDK$Config;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->startLifecycleCheckTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stacktrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isAppInForeground()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->isAppInForeground:Z

    return v0
.end method

.method public startLifecycleCheckTask()V
    .locals 3

    .line 105
    :try_start_0
    const-string/jumbo v0, "startLifecycleCheckTask"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->shouldStopLifecycleCheckTask:Z

    .line 107
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopLifecycleCheckTask()V
    .locals 3

    .line 95
    :try_start_0
    const-string/jumbo v0, "stopLifecycleCheckTask"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->shouldStopLifecycleCheckTask:Z

    .line 97
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance;->lifecycleCheckTask:Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
