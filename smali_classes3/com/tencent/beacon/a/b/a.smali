.class public abstract Lcom/tencent/beacon/a/b/a;
.super Ljava/lang/Object;
.source "AbsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/a/b/a$a;
    }
.end annotation


# static fields
.field protected static volatile a:Lcom/tencent/beacon/a/b/a;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/a;->b:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/beacon/a/b/a;
    .locals 2

    const-class v0, Lcom/tencent/beacon/a/b/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/beacon/a/b/k;

    invoke-direct {v1}, Lcom/tencent/beacon/a/b/k;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/a;
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

.method public static declared-synchronized a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    const-class v0, Lcom/tencent/beacon/a/b/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/tencent/beacon/a/b/k;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/a/b/k;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/tencent/beacon/a/b/a;->a:Lcom/tencent/beacon/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public static b()Lcom/tencent/beacon/a/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/a/b/a$a;->a:Lcom/tencent/beacon/a/b/a;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Landroid/os/Handler;
.end method

.method public abstract a(IJJLjava/lang/Runnable;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(JLjava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b(I)V
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/a/b/a;->b:Z

    return v0
.end method

.method public abstract d()V
.end method
