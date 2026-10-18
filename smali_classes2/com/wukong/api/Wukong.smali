.class public Lcom/wukong/api/Wukong;
.super Ljava/lang/Object;
.source "Wukong.java"


# static fields
.field public static final error_success_flag:I = 0x0

.field private static final init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final init_lock:Ljava/lang/Object;

.field private static final lib_name_wukong:Ljava/lang/String; = "wukong"

.field private static this_app:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/wukong/api/Wukong;->init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/wukong/api/Wukong;->this_app:Landroid/app/Application;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wukong/api/Wukong;->init_lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticApplication()Landroid/app/Application;
    .locals 1

    .line 54
    sget-object v0, Lcom/wukong/api/Wukong;->this_app:Landroid/app/Application;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 3

    .line 21
    sget-object v0, Lcom/wukong/api/Wukong;->init_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/wukong/api/Wukong;->init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lcom/wukong/api/Wukong;->this_app:Landroid/app/Application;

    .line 34
    const-string v1, "gate-aovce.cloud-control.garena.com"

    const/16 v2, 0x2134

    invoke-static {v1, v2}, Lbq/ccs;->init(Ljava/lang/String;I)Z

    .line 37
    invoke-static {p0}, Lcom/wukong/api/Wukong;->init_oom_monitor(Landroid/content/Context;)V

    .line 40
    const-string p0, "wukong"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/wukong/api/JNIBridge;->__init()I

    move-result p0

    if-eqz p0, :cond_1

    .line 45
    monitor-exit v0

    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init_oom_monitor(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/wukong/HeapDump/HeapDump;->init(Landroid/content/Context;)I

    return-void
.end method
