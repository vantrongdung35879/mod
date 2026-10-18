.class public final Lcom/uqm/crashsight/crashreport/common/info/f;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:Z = false

.field private static e:Lcom/uqm/crashsight/crashreport/common/info/f;


# instance fields
.field private b:J

.field private c:Z

.field private d:Z

.field private f:Lcom/uqm/crashsight/crashreport/a;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->b:J

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Z

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Lcom/uqm/crashsight/crashreport/a;

    .line 36
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Landroid/content/Context;

    .line 38
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->h:Z

    .line 40
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->i:Z

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/crashreport/common/info/f;
    .locals 1

    .line 49
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/common/info/f;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/uqm/crashsight/crashreport/a;Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/f;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/common/info/f;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/f;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/common/info/f;-><init>()V

    .line 59
    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/common/info/f;

    iput-object p0, v1, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Lcom/uqm/crashsight/crashreport/a;

    .line 60
    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized d()J
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z
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

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Z
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

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->h:Z

    if-nez v1, :cond_0

    .line 142
    const-string v1, "has not received cloud strategy, just cache"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uqm/crashsight/crashreport/a;->updateAppState(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 149
    :try_start_2
    const-string v2, "update oom info manager error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private declared-synchronized h()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 161
    const-string v1, "recordedBootTime"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    const-string v1, "isAppForegroundLast"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 163
    const-string v1, "isCrashCaught"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 164
    const-string v1, "isAdbConnected"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    :try_start_1
    const-string v1, "oom info to json error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 169
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private i()Z
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 210
    const-string v3, "adb"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAdbConnected failed, message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    return v1
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oom info manager setAppForegroundLast:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z

    .line 96
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
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

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->h:Z

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "oom info manager is reset"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 125
    :try_start_1
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->h:Z

    .line 126
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
    :try_start_2
    const-string v2, "reset oom info manager error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 129
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 112
    :try_start_0
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Z

    .line 113
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
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

.method public final declared-synchronized c()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->i:Z

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "oom info manager is loaded"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 182
    :try_start_1
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->i:Z

    .line 184
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v2, :cond_2

    .line 185
    invoke-interface {v2}, Lcom/uqm/crashsight/crashreport/a;->readAppState()Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OomInfoManager load:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 188
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v2, "isAppForegroundLast"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 190
    const-string v4, "isCrashCaught"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 192
    sget-boolean v2, Lcom/uqm/crashsight/crashreport/common/info/f;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 196
    :try_start_2
    const-string v2, "load oom info error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :cond_2
    monitor-exit p0

    return v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
