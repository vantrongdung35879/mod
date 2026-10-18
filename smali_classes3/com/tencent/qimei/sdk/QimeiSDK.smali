.class public Lcom/tencent/qimei/sdk/QimeiSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CMD_CAMERA_ONCE:I = 0xca

.field public static final CMD_CAMERA_START:I = 0xc8

.field public static final CMD_CAMERA_STOP:I = 0xc9

.field public static final TAG:Ljava/lang/String; = "QmSDK"


# direct methods
.method public static getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/ak/n;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ak/n;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ak/n;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/tencent/qimei/ak/n;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ak/n;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/tencent/qimei/v/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method

.method public static setMainAppKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/qimei/v/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setSoFullPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/v/a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sput-object p0, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method
