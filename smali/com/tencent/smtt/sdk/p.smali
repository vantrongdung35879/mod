.class Lcom/tencent/smtt/sdk/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/p;

.field private static d:Ljava/nio/channels/FileLock;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/q;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/smtt/sdk/p;
    .locals 2

    sget-object v0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/sdk/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/smtt/sdk/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/sdk/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/smtt/sdk/p;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/p;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/sdk/p;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/sdk/p;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/tencent/smtt/sdk/q;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/p;->b:Lcom/tencent/smtt/sdk/q;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/p;->c()Lcom/tencent/smtt/sdk/q;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/p;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/tencent/smtt/sdk/q;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
