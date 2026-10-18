.class public final Lcom/tencent/qimei/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lcom/tencent/qimei/h/h;

.field public final synthetic b:Lcom/tencent/qimei/h/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/h/e;Lcom/tencent/qimei/h/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/h/d;->b:Lcom/tencent/qimei/h/e;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/tencent/qimei/h/d;->a:Lcom/tencent/qimei/h/h;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qimei/h/d;->b:Lcom/tencent/qimei/h/e;

    sget v0, Lcom/tencent/qimei/h/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_0
    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Lcom/tencent/qimei/h/c;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/h/c;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/qimei/h/a;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/h/a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 5
    :goto_1
    iput-object p2, p1, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    .line 6
    sget-object p1, Lcom/tencent/qimei/b/e;->c:Lcom/tencent/qimei/b/e;

    .line 7
    new-instance p2, Lcom/tencent/qimei/h/f;

    iget-object v0, p0, Lcom/tencent/qimei/h/d;->b:Lcom/tencent/qimei/h/e;

    .line 8
    iget-object v0, v0, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    .line 9
    iget-object v1, p0, Lcom/tencent/qimei/h/d;->a:Lcom/tencent/qimei/h/h;

    invoke-direct {p2, v0, v1}, Lcom/tencent/qimei/h/f;-><init>(Lcom/tencent/qimei/h/c;Lcom/tencent/qimei/h/h;)V

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

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
    iget-object p1, p0, Lcom/tencent/qimei/h/d;->b:Lcom/tencent/qimei/h/e;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    .line 3
    iput-object v0, p1, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    return-void
.end method
