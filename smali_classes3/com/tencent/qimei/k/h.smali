.class public final Lcom/tencent/qimei/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/k/i;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/k/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/k/h;->a:Lcom/tencent/qimei/k/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/k/h;->a:Lcom/tencent/qimei/k/i;

    sget v0, Lcom/tencent/qimei/k/f;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/tencent/qimei/k/g;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/k/g;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qimei/k/e;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/k/e;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 4
    :goto_0
    iput-object p2, p1, Lcom/tencent/qimei/k/i;->a:Lcom/tencent/qimei/k/g;

    .line 5
    iget-object p1, p0, Lcom/tencent/qimei/k/h;->a:Lcom/tencent/qimei/k/i;

    iget-object p1, p1, Lcom/tencent/qimei/k/i;->d:Ljava/lang/Object;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/tencent/qimei/k/h;->a:Lcom/tencent/qimei/k/i;

    iget-object p2, p2, Lcom/tencent/qimei/k/i;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/k/h;->a:Lcom/tencent/qimei/k/i;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/qimei/k/i;->a:Lcom/tencent/qimei/k/g;

    return-void
.end method
