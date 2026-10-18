.class public final Lcom/tencent/qimei/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;
.implements Landroid/os/IInterface;


# instance fields
.field public a:Lcom/tencent/oaid2/VendorManager;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/tencent/qimei/e/g;

.field public e:Z

.field public f:Z

.field public final g:Lcom/tencent/qimei/e/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/e/e;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/qimei/e/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/qimei/e/e;->e:Z

    .line 9
    iput-boolean v0, p0, Lcom/tencent/qimei/e/e;->f:Z

    .line 10
    new-instance v0, Lcom/tencent/qimei/e/d;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/e/d;-><init>(Lcom/tencent/qimei/e/e;)V

    iput-object v0, p0, Lcom/tencent/qimei/e/e;->g:Lcom/tencent/qimei/e/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/qimei/e/e;->a:Lcom/tencent/oaid2/VendorManager;

    .line 2
    new-instance p2, Lcom/tencent/qimei/e/g;

    invoke-direct {p2, p1}, Lcom/tencent/qimei/e/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/qimei/e/e;->d:Lcom/tencent/qimei/e/g;

    return-void
.end method

.method public final a(Lcom/tencent/qimei/e/c;)V
    .locals 7

    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    const-string v1, ""

    const/4 v2, 0x0

    .line 4
    :try_start_0
    move-object v3, p1

    check-cast v3, Lcom/tencent/qimei/e/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    iget-object v3, v3, Lcom/tencent/qimei/e/a;->a:Landroid/os/IBinder;

    const/4 v6, 0x3

    invoke-interface {v3, v6, v4, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 12
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 17
    :catchall_0
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v3, v1

    .line 16
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 18
    iput-object v3, p0, Lcom/tencent/qimei/e/e;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 20
    iput-object v1, p0, Lcom/tencent/qimei/e/e;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    :cond_0
    :try_start_3
    move-object v3, p1

    check-cast v3, Lcom/tencent/qimei/e/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 30
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    iget-object v0, v3, Lcom/tencent/qimei/e/a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {v0, v3, v4, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 33
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    :try_start_5
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 38
    :catchall_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 37
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 39
    iput-object v0, p0, Lcom/tencent/qimei/e/e;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    iput-object v1, p0, Lcom/tencent/qimei/e/e;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 46
    :catch_1
    :cond_1
    :try_start_6
    check-cast p1, Lcom/tencent/qimei/e/a;

    invoke-virtual {p1}, Lcom/tencent/qimei/e/a;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/qimei/e/e;->f:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/tencent/qimei/e/e;->e:Z

    .line 50
    iget-object p1, p0, Lcom/tencent/qimei/e/e;->a:Lcom/tencent/oaid2/VendorManager;

    if-eqz p1, :cond_2

    .line 51
    iget-boolean v0, p0, Lcom/tencent/qimei/e/e;->f:Z

    iget-object v1, p0, Lcom/tencent/qimei/e/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qimei/e/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/b/e;->c:Lcom/tencent/qimei/b/e;

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/e/e;->g:Lcom/tencent/qimei/e/d;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/qimei/e/e;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qimei/e/e;->d:Lcom/tencent/qimei/e/g;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-boolean v1, v0, Lcom/tencent/qimei/e/g;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qimei/e/g;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "HSDID start to unbind did service"

    invoke-static {v1}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/tencent/qimei/e/g;->a:Z

    .line 5
    iget-object v1, v0, Lcom/tencent/qimei/e/g;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/tencent/qimei/e/g;->e:Lcom/tencent/qimei/e/f;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HSDID error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
