.class public abstract Lcom/tencent/qimei/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tencent/qimei/f/a;
    .locals 6

    const-string v0, "com.huawei.hwid.tv"

    const-string v1, "com.huawei.hms"

    const-string v2, "com.huawei.hwid"

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 17
    const-string p0, "Cannot be called from the main thread"

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    return-object v5

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0, v2}, Lcom/tencent/qimei/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p0, v1}, Lcom/tencent/qimei/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {p0, v0}, Lcom/tencent/qimei/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v1, :cond_4

    return-object v5

    .line 30
    :cond_4
    new-instance v1, Lcom/tencent/qimei/f/d;

    invoke-direct {v1}, Lcom/tencent/qimei/f/d;-><init>()V

    .line 31
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v2, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 34
    const-string v2, "bind ok"

    invoke-static {v2}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 36
    :try_start_1
    iget-boolean v2, v1, Lcom/tencent/qimei/f/d;->a:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_5

    .line 54
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v5

    .line 55
    :cond_5
    :try_start_3
    iput-boolean v0, v1, Lcom/tencent/qimei/f/d;->a:Z

    .line 57
    iget-object v0, v1, Lcom/tencent/qimei/f/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sget v2, Lcom/tencent/qimei/f/h;->a:I

    if-nez v0, :cond_6

    move-object v2, v5

    goto :goto_1

    .line 58
    :cond_6
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 59
    instance-of v3, v2, Lcom/tencent/qimei/f/i;

    if-eqz v3, :cond_7

    .line 60
    check-cast v2, Lcom/tencent/qimei/f/i;

    goto :goto_1

    .line 62
    :cond_7
    new-instance v2, Lcom/tencent/qimei/f/g;

    invoke-direct {v2, v0}, Lcom/tencent/qimei/f/g;-><init>(Landroid/os/IBinder;)V

    .line 63
    :goto_1
    check-cast v2, Lcom/tencent/qimei/f/g;

    invoke-virtual {v2}, Lcom/tencent/qimei/f/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2}, Lcom/tencent/qimei/f/g;->a()Z

    move-result v2

    .line 66
    new-instance v3, Lcom/tencent/qimei/f/a;

    invoke-direct {v3, v0, v2}, Lcom/tencent/qimei/f/a;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-object v5, v3

    goto :goto_3

    .line 75
    :catchall_2
    :try_start_5
    const-string v0, "bind hms service InterruptedException"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :catch_0
    const-string v0, "bind hms service RemoteException"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 78
    :goto_2
    :try_start_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :goto_3
    return-object v5

    :catchall_4
    move-exception v0

    .line 84
    :try_start_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 86
    :catchall_5
    throw v0

    .line 90
    :cond_8
    const-string p0, "bind failed"

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    return-object v5

    .line 91
    :catchall_6
    const-string p0, "pkg not found"

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    return-object v5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    const-string p0, "getPackageInfo Exception"

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :catch_0
    const-string p0, "getPackageInfo NameNotFoundException"

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
