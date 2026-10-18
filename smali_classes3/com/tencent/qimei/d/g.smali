.class public final Lcom/tencent/qimei/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public b:Lcom/tencent/qimei/d/d;

.field public c:Lcom/tencent/qimei/d/c;

.field public final d:Lcom/tencent/qimei/d/f;

.field public final e:Lcom/tencent/qimei/d/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    .line 12
    new-instance v0, Lcom/tencent/qimei/d/f;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/d/f;-><init>(Lcom/tencent/qimei/d/g;)V

    iput-object v0, p0, Lcom/tencent/qimei/d/g;->d:Lcom/tencent/qimei/d/f;

    .line 13
    new-instance v0, Lcom/tencent/qimei/d/e;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/d/e;-><init>(Lcom/tencent/qimei/d/g;)V

    iput-object v0, p0, Lcom/tencent/qimei/d/g;->e:Lcom/tencent/qimei/d/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "com.hihonor.id.HnOaIdService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    const-string v1, "com.hihonor.id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/tencent/qimei/d/d;

    invoke-direct {p1}, Lcom/tencent/qimei/d/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/d/g;->b:Lcom/tencent/qimei/d/d;

    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    const-string p1, "com.hihonor.cloudservice.oaid.IOAIDService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/tencent/qimei/d/c;

    if-nez v0, :cond_0

    .line 6
    new-instance p1, Lcom/tencent/qimei/d/c;

    invoke-direct {p1, p2}, Lcom/tencent/qimei/d/c;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/tencent/qimei/d/g;->c:Lcom/tencent/qimei/d/c;

    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Lcom/tencent/qimei/d/c;

    iput-object p1, p0, Lcom/tencent/qimei/d/g;->c:Lcom/tencent/qimei/d/c;

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->c:Lcom/tencent/qimei/d/c;

    if-nez p1, :cond_2

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/tencent/qimei/d/g;->e:Lcom/tencent/qimei/d/e;

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/d/c;->a(Lcom/tencent/qimei/d/b;)V

    .line 15
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->c:Lcom/tencent/qimei/d/c;

    iget-object p2, p0, Lcom/tencent/qimei/d/g;->d:Lcom/tencent/qimei/d/f;

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/d/c;->b(Lcom/tencent/qimei/d/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :catchall_0
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    iget-object p1, p0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
