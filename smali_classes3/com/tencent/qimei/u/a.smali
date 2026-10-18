.class public abstract Lcom/tencent/qimei/u/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/tencent/qimei/u/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/qimei/u/a;
    .locals 2

    const-class v0, Lcom/tencent/qimei/u/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/u/a;->a:Lcom/tencent/qimei/u/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/qimei/u/c;

    invoke-direct {v1}, Lcom/tencent/qimei/u/c;-><init>()V

    sput-object v1, Lcom/tencent/qimei/u/a;->a:Lcom/tencent/qimei/u/c;

    .line 4
    :cond_0
    sget-object v1, Lcom/tencent/qimei/u/a;->a:Lcom/tencent/qimei/u/c;
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
.method public abstract a(JLjava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method
