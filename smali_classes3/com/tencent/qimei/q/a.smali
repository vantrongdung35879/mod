.class public final Lcom/tencent/qimei/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/tencent/qimei/q/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/qimei/q/a;
    .locals 3

    const-class v0, Lcom/tencent/qimei/q/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/q/a;->a:Lcom/tencent/qimei/q/a;

    if-nez v1, :cond_1

    .line 2
    const-class v1, Lcom/tencent/qimei/q/a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v2, Lcom/tencent/qimei/q/a;->a:Lcom/tencent/qimei/q/a;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/tencent/qimei/q/a;

    invoke-direct {v2}, Lcom/tencent/qimei/q/a;-><init>()V

    sput-object v2, Lcom/tencent/qimei/q/a;->a:Lcom/tencent/qimei/q/a;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 8
    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/qimei/q/a;->a:Lcom/tencent/qimei/q/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
