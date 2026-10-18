.class public Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CrashSight"


# static fields
.field private static d:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->e:Z

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)Landroid/content/IntentFilter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic a()Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;
    .locals 1

    .line 25
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->d:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 120
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 124
    :cond_0
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->e:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 126
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return v1

    .line 130
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is Connect BC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 132
    const-string v2, "network %s changed to %s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v1

    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return v1

    .line 139
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->c:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->c:Ljava/lang/String;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 144
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v5

    .line 145
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v6

    .line 146
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-nez p1, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 155
    sget p1, Lcom/uqm/crashsight/crashreport/crash/c;->a:I

    .line 156
    invoke-virtual {v6, p1}, Lcom/uqm/crashsight/proguard/l;->a(I)J

    move-result-wide p1

    sub-long p1, v3, p1

    const-wide/16 v7, 0x7530

    cmp-long v2, p1, v7

    if-lez v2, :cond_4

    .line 158
    const-string p1, "try to upload crash on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    if-eqz p1, :cond_4

    const-wide/16 v9, 0x0

    .line 161
    invoke-virtual {p1, v9, v10}, Lcom/uqm/crashsight/crashreport/crash/c;->a(J)V

    :cond_4
    const/16 p1, 0x3e9

    .line 164
    invoke-virtual {v6, p1}, Lcom/uqm/crashsight/proguard/l;->a(I)J

    move-result-wide p1

    sub-long/2addr v3, p1

    cmp-long p1, v3, v7

    if-lez p1, :cond_5

    .line 166
    const-string p1, "try to upload userinfo on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/biz/b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_5
    monitor-exit p0

    return v1

    .line 149
    :cond_6
    :goto_0
    :try_start_3
    const-string p1, "not inited BC not work"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 121
    :cond_7
    :goto_1
    monitor-exit p0

    return v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->d:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->d:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    .line 42
    :cond_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->d:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    :cond_0
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
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

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 105
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 107
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->b:Landroid/content/Context;

    .line 70
    new-instance p1, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;

    invoke-direct {p1, p0, p0}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)V

    .line 2725
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2727
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2729
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2730
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
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

.method public declared-synchronized unregister(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unregister broadcast receiver of CrashSight."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
