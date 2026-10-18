.class public final Lcom/tencent/itop/httpdns/a/c;
.super Ljava/lang/Object;
.source "DnsWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/itop/httpdns/a/b/c/a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Lcom/tencent/itop/httpdns/a/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/tencent/itop/httpdns/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/itop/httpdns/a/b/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/tencent/itop/httpdns/a/b/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/tencent/itop/httpdns/a/b/a<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->a:Lcom/tencent/itop/httpdns/a/b/c/a;

    .line 26
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/c;->b:Ljava/util/concurrent/CountDownLatch;

    .line 27
    iput-object p2, p0, Lcom/tencent/itop/httpdns/a/c;->c:Lcom/tencent/itop/httpdns/a/b/a;

    .line 28
    iput-object p3, p0, Lcom/tencent/itop/httpdns/a/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->c:Lcom/tencent/itop/httpdns/a/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->c:Lcom/tencent/itop/httpdns/a/b/a;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/itop/httpdns/a/b/a;->a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->a:Lcom/tencent/itop/httpdns/a/b/c/a;

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/tencent/itop/httpdns/a/b/a/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/itop/httpdns/a/b/a/b;

    .line 38
    invoke-static {v0}, Lcom/tencent/itop/httpdns/a/b/a/b;->a(Lcom/tencent/itop/httpdns/a/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cache httpDns."

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/c;->a:Lcom/tencent/itop/httpdns/a/b/c/a;

    check-cast v1, Lcom/tencent/itop/httpdns/a/b/a/b;

    invoke-static {v0, v1}, Lcom/tencent/itop/httpdns/a/d;->a(Ljava/lang/String;Lcom/tencent/itop/httpdns/a/b/a/b;)Z

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_0
    return-void
.end method
