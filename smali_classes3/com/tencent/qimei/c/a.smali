.class public final Lcom/tencent/qimei/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/c/g;

.field public final synthetic b:Lcom/tencent/qimei/c/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/c/b;Lcom/tencent/qimei/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/c/a;->b:Lcom/tencent/qimei/c/b;

    iput-object p2, p0, Lcom/tencent/qimei/c/a;->a:Lcom/tencent/qimei/c/g;

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
    iget-object p1, p0, Lcom/tencent/qimei/c/a;->b:Lcom/tencent/qimei/c/b;

    sget v0, Lcom/tencent/qimei/c/d;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_0
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Lcom/tencent/qimei/c/e;

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/c/e;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/qimei/c/c;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/c/c;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 8
    :goto_1
    iput-object p2, p1, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    .line 9
    iget-object p1, p0, Lcom/tencent/qimei/c/a;->a:Lcom/tencent/qimei/c/g;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/tencent/qimei/c/g;->e()V

    .line 12
    :cond_3
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
    iget-object p1, p0, Lcom/tencent/qimei/c/a;->b:Lcom/tencent/qimei/c/b;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    return-void
.end method
