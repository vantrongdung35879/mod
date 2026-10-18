.class public final Lcom/tencent/qimei/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/g/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/g/f;->a:Lcom/tencent/qimei/g/g;

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
    iget-object p1, p0, Lcom/tencent/qimei/g/f;->a:Lcom/tencent/qimei/g/g;

    sget v0, Lcom/tencent/qimei/g/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_0
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Lcom/tencent/qimei/g/c;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/g/c;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/qimei/g/a;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/g/a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 5
    :goto_1
    iput-object p2, p1, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    .line 6
    iget-object p1, p0, Lcom/tencent/qimei/g/f;->a:Lcom/tencent/qimei/g/g;

    iget-object p1, p1, Lcom/tencent/qimei/g/g;->d:Lcom/tencent/qimei/g/e;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/tencent/qimei/g/e;->h()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/tencent/qimei/g/f;->a:Lcom/tencent/qimei/g/g;

    const-string p2, "Service onServiceConnected"

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/tencent/qimei/g/f;->a:Lcom/tencent/qimei/g/g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    .line 2
    const-string p1, "Service onServiceDisconnected"

    .line 3
    invoke-static {p1}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    return-void
.end method
