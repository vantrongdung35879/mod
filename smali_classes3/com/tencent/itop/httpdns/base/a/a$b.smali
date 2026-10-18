.class Lcom/tencent/itop/httpdns/base/a/a$b;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/base/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/itop/httpdns/base/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/tencent/itop/httpdns/base/a/a$b$1;

    invoke-direct {v0, p0}, Lcom/tencent/itop/httpdns/base/a/a$b$1;-><init>(Lcom/tencent/itop/httpdns/base/a/a$b;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/base/a/a$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/itop/httpdns/base/a/a$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tencent/itop/httpdns/base/a/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/itop/httpdns/base/a/a$b;->a:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/tencent/itop/httpdns/base/a/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
