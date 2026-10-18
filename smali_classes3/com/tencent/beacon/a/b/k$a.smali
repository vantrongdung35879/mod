.class final Lcom/tencent/beacon/a/b/k$a;
.super Ljava/lang/Object;
.source "BeaconAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:J

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/a/b/k$a;->e:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/tencent/beacon/a/b/k$a;->a:Ljava/lang/Runnable;

    .line 4
    iput-wide p3, p0, Lcom/tencent/beacon/a/b/k$a;->b:J

    .line 5
    iput-wide p5, p0, Lcom/tencent/beacon/a/b/k$a;->c:J

    .line 6
    iput-object p7, p0, Lcom/tencent/beacon/a/b/k$a;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method static synthetic a(Lcom/tencent/beacon/a/b/k$a;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/beacon/a/b/k$a;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/beacon/a/b/k$a;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/b/k$a;->e:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/beacon/a/b/k$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/beacon/a/b/k$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/beacon/a/b/k$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/beacon/a/b/k$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/beacon/a/b/k$a;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/a/b/k$a;->d:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/beacon/a/b/k$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method a(Z)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/a/b/k$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method
