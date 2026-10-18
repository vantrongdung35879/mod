.class public final Lcom/tencent/qimei/ar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/ar/c;


# static fields
.field public static volatile a:Lcom/tencent/qimei/ar/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/qimei/ar/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/ar/d;->a:Lcom/tencent/qimei/ar/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/qimei/ar/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ar/d;->a:Lcom/tencent/qimei/ar/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qimei/ar/d;

    invoke-direct {v1}, Lcom/tencent/qimei/ar/d;-><init>()V

    sput-object v1, Lcom/tencent/qimei/ar/d;->a:Lcom/tencent/qimei/ar/d;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qimei/ar/d;->a:Lcom/tencent/qimei/ar/d;

    return-object v0
.end method


# virtual methods
.method public final getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v0, Lcom/tencent/qimei/aq/a;->a:Lcom/tencent/qimei/aq/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "SdkInfo"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/as/a;

    .line 5
    instance-of v1, v0, Lcom/tencent/qimei/ar/c;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/tencent/qimei/ar/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    const-string v0, ""

    return-object v0

    .line 9
    :cond_1
    invoke-interface {v0}, Lcom/tencent/qimei/ar/c;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized i()Landroid/content/Context;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v0, Lcom/tencent/qimei/aq/a;->a:Lcom/tencent/qimei/aq/b;

    .line 3
    const-string v1, "SdkInfo"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/as/a;

    .line 5
    instance-of v1, v0, Lcom/tencent/qimei/ar/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/tencent/qimei/ar/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    monitor-exit p0

    return-object v2

    .line 7
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/tencent/qimei/ar/c;->i()Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
