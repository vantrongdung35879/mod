.class public Lcom/tencent/mna/i;
.super Ljava/lang/Object;
.source "AccelerateState.java"


# static fields
.field private static volatile a:Z = false

.field private static volatile b:Z = false

.field public static volatile c:Z = true

.field public static volatile d:Z = false

.field static volatile e:Z = false

.field static volatile f:I = 0x0

.field static volatile g:I = -0x64

.field static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/mna/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/tencent/mna/i;->e:Z

    .line 3
    sput v0, Lcom/tencent/mna/i;->f:I

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/tencent/mna/i;->c:Z

    .line 5
    sput-boolean v0, Lcom/tencent/mna/i;->d:Z

    const/16 v1, -0x64

    .line 6
    sput v1, Lcom/tencent/mna/i;->g:I

    .line 7
    sget-object v1, Lcom/tencent/mna/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static declared-synchronized a(Z)V
    .locals 1

    const-class v0, Lcom/tencent/mna/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-boolean p0, Lcom/tencent/mna/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method static declared-synchronized b(Z)V
    .locals 1

    const-class v0, Lcom/tencent/mna/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-boolean p0, Lcom/tencent/mna/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method static declared-synchronized b()Z
    .locals 2

    const-class v0, Lcom/tencent/mna/i;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcom/tencent/mna/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
