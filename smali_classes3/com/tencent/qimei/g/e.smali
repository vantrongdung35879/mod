.class public final Lcom/tencent/qimei/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Lcom/tencent/qimei/g/g;

.field public b:Lcom/tencent/oaid2/VendorManager;

.field public final c:Lcom/tencent/qimei/g/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/tencent/qimei/g/d;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/g/d;-><init>(Lcom/tencent/qimei/g/e;)V

    iput-object v0, p0, Lcom/tencent/qimei/g/e;->c:Lcom/tencent/qimei/g/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/qimei/g/e;->b:Lcom/tencent/oaid2/VendorManager;

    .line 3
    new-instance p2, Lcom/tencent/qimei/g/g;

    invoke-direct {p2, p1, p0}, Lcom/tencent/qimei/g/g;-><init>(Landroid/content/Context;Lcom/tencent/qimei/g/e;)V

    iput-object p2, p0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    iget-object v1, p0, Lcom/tencent/qimei/g/e;->c:Lcom/tencent/qimei/g/d;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/tencent/qimei/g/g;->c:Lcom/tencent/qimei/g/f;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    const-string/jumbo v1, "unBind Service successful"

    invoke-static {v1}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    const-string/jumbo v1, "unBind Service exception"

    .line 6
    const-string v2, "LXOP "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/g/e;->g()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    .line 5
    iget-object v2, v0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "liufeng, getAAID package\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    if-eqz v0, :cond_3

    .line 16
    check-cast v0, Lcom/tencent/qimei/g/a;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :catch_0
    const-string v0, "getAAID error, RemoteException!"

    .line 20
    const-string v2, "LXOP "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const-string v0, "input package is null!"

    invoke-static {v0}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    return-object v1

    .line 23
    :cond_5
    const-string v0, "Context is null."

    invoke-static {v0}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/g/e;->g()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    .line 5
    iget-object v2, v0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    const-string v3, "LXOP "

    if-eqz v2, :cond_3

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    if-eqz v0, :cond_1

    .line 11
    check-cast v0, Lcom/tencent/qimei/g/a;

    invoke-virtual {v0}, Lcom/tencent/qimei/g/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    const-string v2, "getOAID error, RemoteException!"

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 18
    :cond_3
    const-string v0, "Context is null."

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/g/e;->a:Lcom/tencent/qimei/g/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v2, "Device support opendeviceid"

    invoke-static {v2}, Lcom/tencent/qimei/g/g;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/tencent/qimei/g/g;->b:Lcom/tencent/qimei/g/c;

    check-cast v0, Lcom/tencent/qimei/g/a;

    invoke-virtual {v0}, Lcom/tencent/qimei/g/a;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    const-string v0, "isSupport error, RemoteException!"

    .line 9
    const-string v2, "LXOP "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final h()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/g/e;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/g/e;->g()Z

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qimei/g/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/qimei/g/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 5
    iget-object v1, p0, Lcom/tencent/qimei/g/e;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v1, :cond_0

    .line 6
    const-string v2, ""

    invoke-virtual {v1, v0, v2, v2, v0}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method
