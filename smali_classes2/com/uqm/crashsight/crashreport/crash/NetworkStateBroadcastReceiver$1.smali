.class final Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;->a:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 75
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a()Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of CrashSight."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;->a:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->b(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a()Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;

    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;->a(Lcom/uqm/crashsight/crashreport/crash/NetworkStateBroadcastReceiver;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
