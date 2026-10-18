.class public final Lcom/tencent/qimei/at/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/z/c;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/at/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/at/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/at/b;->a:Lcom/tencent/qimei/at/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/at/b;->a:Lcom/tencent/qimei/at/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/at/b;->a:Lcom/tencent/qimei/at/c;

    invoke-virtual {v1}, Lcom/tencent/qimei/at/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qimei/at/b;->a:Lcom/tencent/qimei/at/c;

    .line 3
    iget-object v1, v1, Lcom/tencent/qimei/at/c;->b:Lcom/tencent/qimei/at/e;

    .line 4
    iget-object v1, v1, Lcom/tencent/qimei/at/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/tencent/qimei/at/b;->a:Lcom/tencent/qimei/at/c;

    .line 7
    invoke-virtual {v1}, Lcom/tencent/qimei/at/c;->b()V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 0

    return-void
.end method
