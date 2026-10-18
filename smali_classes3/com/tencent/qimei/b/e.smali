.class public final Lcom/tencent/qimei/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I

.field public static final c:Lcom/tencent/qimei/b/e;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/tencent/qimei/b/e;->b:I

    .line 3
    new-instance v0, Lcom/tencent/qimei/b/e;

    invoke-direct {v0}, Lcom/tencent/qimei/b/e;-><init>()V

    sput-object v0, Lcom/tencent/qimei/b/e;->c:Lcom/tencent/qimei/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/b/c;

    invoke-direct {v0}, Lcom/tencent/qimei/b/c;-><init>()V

    .line 3
    sget v1, Lcom/tencent/qimei/b/e;->b:I

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/b/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/qimei/b/d;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/b/d;-><init>(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/qimei/b/e;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
