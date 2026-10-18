.class public Lcom/uqm/crashsight/CrashModule;
.super Lcom/uqm/crashsight/a;
.source "CrashSight"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static b:I

.field private static final e:Lcom/uqm/crashsight/CrashModule;


# instance fields
.field private a:Lcom/uqm/crashsight/CrashSightStrategy$a;

.field private c:Z

.field private d:Landroid/content/Context;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/uqm/crashsight/CrashModule;

    invoke-direct {v0}, Lcom/uqm/crashsight/CrashModule;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/CrashModule;->e:Lcom/uqm/crashsight/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/uqm/crashsight/a;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/uqm/crashsight/CrashModule;->c:Z

    .line 156
    iput-boolean v0, p0, Lcom/uqm/crashsight/CrashModule;->f:Z

    return-void
.end method

.method private declared-synchronized a(Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getCrashHandleCallback()Lcom/uqm/crashsight/CrashSightStrategy$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getCrashHandleCallback()Lcom/uqm/crashsight/CrashSightStrategy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/CrashModule;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    .line 136
    const-string v0, "set CrashHandleCallback"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppReportDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppReportDelay()J

    move-result-wide v2

    .line 141
    const-string p1, "set delay: %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_2
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

.method public static getInstance()Lcom/uqm/crashsight/CrashModule;
    .locals 2

    .line 50
    sget-object v0, Lcom/uqm/crashsight/CrashModule;->e:Lcom/uqm/crashsight/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/uqm/crashsight/CrashModule;->id:I

    return-object v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 1

    .line 336
    const-string v0, "t_cr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasInitialized()Z
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/CrashModule;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/CrashModule;->c:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/CrashModule;->d:Landroid/content/Context;

    .line 72
    const-string v0, "Initializing crash module."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lcom/uqm/crashsight/proguard/b;->a()Lcom/uqm/crashsight/proguard/b;

    move-result-object v0

    sget v2, Lcom/uqm/crashsight/CrashModule;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/uqm/crashsight/CrashModule;->b:I

    const/16 v4, 0x3ec

    invoke-virtual {v0, v4, v2}, Lcom/uqm/crashsight/proguard/b;->a(II)V

    .line 74
    iput-boolean v3, p0, Lcom/uqm/crashsight/CrashModule;->c:Z

    .line 75
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/CrashModule;->a(Lcom/uqm/crashsight/CrashSightStrategy;)V

    .line 77
    iget-object v0, p0, Lcom/uqm/crashsight/CrashModule;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    invoke-static {v4, p1, p2, v0}, Lcom/uqm/crashsight/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy$a;)Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->h()V

    .line 81
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->p()V

    if-eqz p3, :cond_2

    .line 83
    invoke-virtual {p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isEnableNativeCrashMonitor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "[crash] Closed native crash monitor!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->i()V

    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->j()V

    :goto_1
    if-eqz p3, :cond_3

    .line 101
    invoke-virtual {p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getCallBackType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/crashreport/crash/c;->b(I)V

    .line 102
    invoke-virtual {p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getCloseErrorCallback()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/crashreport/crash/c;->a(Z)V

    .line 107
    invoke-virtual {p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getCrashHandleTimeout()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/crashreport/crash/c;->a(I)V

    :cond_3
    if-eqz p3, :cond_4

    .line 110
    invoke-virtual {p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppReportDelay()J

    move-result-wide v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    .line 112
    :goto_2
    invoke-virtual {p2, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/c;->a(J)V

    .line 114
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->m()V

    .line 116
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/crash/d;

    .line 118
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->y()V

    .line 121
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->getInstance()Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    move-result-object p2

    .line 122
    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p3}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->addFilter(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Lcom/uqm/crashsight/proguard/b;->a()Lcom/uqm/crashsight/proguard/b;

    move-result-object p1

    sget p2, Lcom/uqm/crashsight/CrashModule;->b:I

    sub-int/2addr p2, v3

    sput p2, Lcom/uqm/crashsight/CrashModule;->b:I

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/proguard/b;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 68
    :cond_5
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public onSelfDefiedStrategyChanged(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V
    .locals 7

    .line 161
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMapMap()Ljava/util/Map;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rqdStrategy.getValueMap: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 165
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    const-string v0, "rqdStrategy.getValueMap: empty"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/z;->a()Lcom/uqm/crashsight/proguard/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/proguard/z;->a(Ljava/util/Map;)V

    .line 172
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 176
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->f:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setCatchMonoStackOpen(Z)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCatchMonoStackOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->f:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setMmkvliteOpen(Z)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMmkvliteOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 182
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->g:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setSmallestDumpOpen(Z)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSmallestDumpOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->g:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 185
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->h:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setAbortMsgOpen(Z)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAbortMsgOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->h:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->i:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setLrTraceOpen(Z)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setLrTraceOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->i:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aK:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setFpTraceOpen(Z)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFpTraceOpen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aK:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->j:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setIsModuleNameOmit(Z)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setIsModuleNameOmit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->j:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 196
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->r:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setCrashMinidumpEnable(Z)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set IS_GENERATE_CRASH_MINIDUMP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->r:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set MAX_MINIDUMP_FILE_SIZE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->s:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 199
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->W:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setUploadFd(Z)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set UPLOAD_FD "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->W:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 201
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->X:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setUploadStackSize(Z)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set UPLOAD_STACK_SIZE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->X:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableAsyncReportException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->p:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->p:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableAsyncReportException(Z)V

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 207
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ad:Lcom/uqm/crashsight/proguard/z$a;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/proguard/z$a;->a(Ljava/lang/Object;)V

    .line 209
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableGwpAsan: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ad:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ad:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableGwpAsan(Z)V

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    .line 212
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ae:Lcom/uqm/crashsight/proguard/z$a;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/proguard/z$a;->a(Ljava/lang/Object;)V

    .line 214
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableMTE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ae:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 215
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ae:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableMte(Z)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableJavaStack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->af:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 217
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->af:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableJavaStack(Z)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableUploadMemoryNearRegister: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ag:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ag:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableUploadMemoryNearRegister(Z)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableUnwindFullStackTrace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ar:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 221
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ar:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableUnwindFullStackTrace(Z)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableCrashUnwindFullStackTrace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aA:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aA:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableCrashUnwindFullStackTrace(Z)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setUnwindFullStackTraceImprovementsSwitches: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aD:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aD:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setUnwindFullStackTraceImprovementsSwitches(I)V

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableUnwindReadableCheck: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aE:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 227
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aE:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableUnwindReadableCheck(Z)V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableApkAnalyze: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aF:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aF:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableApkAnalyze(Z)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableNonexecutableMapsRecord: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aG:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aG:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableNonexecutableMapsRecord(Z)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnableStackTraceLocalParse: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->aH:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aH:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setEnableStackTraceLocalParse(Z)V

    .line 234
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ao:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/s;->a(Z)V

    .line 235
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->u:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    .line 236
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadAttachMultipartRecordCrash()V

    .line 238
    :cond_3
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 239
    const-string v2, "Check and upload mmkv crash if exists. "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->n()V

    .line 242
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->c:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->S()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    iget-boolean v2, p0, Lcom/uqm/crashsight/CrashModule;->f:Z

    if-nez v2, :cond_4

    .line 244
    iput-boolean v3, p0, Lcom/uqm/crashsight/CrashModule;->f:Z

    .line 246
    iget-object v2, p0, Lcom/uqm/crashsight/CrashModule;->d:Landroid/content/Context;

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->k:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/uqm/crashsight/proguard/z;->l:Lcom/uqm/crashsight/proguard/z$a;

    .line 247
    invoke-virtual {v5}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/uqm/crashsight/proguard/z;->n:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v6}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 246
    invoke-static {v2, v4, v5, v6}, Lcom/uqm/crashsight/proguard/af;->a(Landroid/content/Context;III)V

    .line 251
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->o()V

    .line 252
    const-string v2, "enabled process alive monitor"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_5
    const-string v2, "disabled process alive monitor"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 258
    :cond_6
    :goto_1
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->c:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setSigkillEnable(Z)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setSigkillEnable: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->c:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 262
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->m:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setHandleAnrSigQuit(Z)V

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setHandleAnrSigQuit: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->m:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 265
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->o:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->setAnrDumpNativeType(I)V

    .line 266
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->ac:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setBackgroundAnrDumpType(I)V

    .line 269
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 271
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Z)V

    .line 272
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->x:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->y:Lcom/uqm/crashsight/proguard/z$a;

    .line 273
    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 272
    invoke-virtual {v2, v3, v4}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(II)V

    .line 274
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->w:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(I)V

    .line 275
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->z:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/c;->b(I)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach] setCloudControlZipAttachSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->x:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach] setCloudControlAttachSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->y:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach] setCloudControl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->t:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach] setCloudControlNetworkType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->w:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach] setCloudControlBlockSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->z:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    :cond_9
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->B:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->C:Lcom/uqm/crashsight/proguard/z$a;

    .line 285
    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->D:Lcom/uqm/crashsight/proguard/z$a;

    .line 286
    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->E:Lcom/uqm/crashsight/proguard/z$a;

    .line 287
    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 288
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->B:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->C:Lcom/uqm/crashsight/proguard/z$a;

    .line 289
    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/uqm/crashsight/proguard/z;->D:Lcom/uqm/crashsight/proguard/z$a;

    .line 290
    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/uqm/crashsight/proguard/z;->E:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v5}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->uploadAttachForSingleCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_a
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->J:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->N:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_b

    .line 294
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->N:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/uqm/crashsight/crashreport/crash/d;->a(J)V

    .line 297
    :cond_b
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->ai:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c

    .line 299
    invoke-static {}, Lcom/uqm/crashsight/proguard/ae;->a()V

    goto :goto_4

    .line 301
    :cond_c
    sget-object p1, Lcom/uqm/crashsight/proguard/ae;->a:Lcom/uqm/crashsight/proguard/ae;

    if-nez p1, :cond_d

    .line 302
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->ai:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aj:Lcom/uqm/crashsight/proguard/z$a;

    .line 303
    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ak:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 302
    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/proguard/ae;->a(III)V

    goto :goto_4

    .line 305
    :cond_d
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->ai:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->aj:Lcom/uqm/crashsight/proguard/z$a;

    .line 306
    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->ak:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 305
    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/proguard/ae;->b(III)V

    .line 310
    :goto_4
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->al:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->al:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_e

    .line 311
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->al:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a([Ljava/lang/String;)V

    .line 313
    :cond_e
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->at:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 314
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->initPthreadKeyHook()V

    goto :goto_5

    .line 317
    :cond_f
    const-string p1, "onSelfDefiedStrategyChanged nativeBridge is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 319
    :cond_10
    :goto_5
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 321
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/crash/c;->b(I)V

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setCallBackType: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uqm/crashsight/proguard/z;->q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 324
    :cond_11
    const-string p1, "onSelfDefiedStrategyChanged crashManager is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 326
    :goto_6
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->ap:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 327
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 329
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->ap:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->b([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public onServerStrategyChanged(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/crash/c;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V

    :cond_1
    return-void
.end method
