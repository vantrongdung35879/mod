.class public final Lcom/tencent/qimei/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/l/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/l/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/e;

    sget v0, Lcom/tencent/qimei/l/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_0
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Lcom/tencent/qimei/l/c;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/l/c;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/qimei/l/a;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/l/a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 5
    :goto_1
    iput-object p2, p1, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    .line 7
    iget-object p1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/e;

    iget-object p1, p1, Lcom/tencent/qimei/l/e;->a:Lcom/tencent/qimei/l/g;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/tencent/qimei/l/g;->f()V

    .line 10
    :cond_3
    const-string p1, "SI Service onServiceConnected"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/l/d;->a:Lcom/tencent/qimei/l/e;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    .line 2
    const-string p1, "SI Service onServiceDisconnected"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    return-void
.end method
