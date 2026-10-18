.class public final Lcom/tencent/qimei/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Lcom/tencent/oaid2/VendorManager;

.field public b:Lcom/tencent/qimei/l/e;

.field public final c:Lcom/tencent/qimei/l/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/tencent/qimei/l/f;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/l/f;-><init>(Lcom/tencent/qimei/l/g;)V

    iput-object v0, p0, Lcom/tencent/qimei/l/g;->c:Lcom/tencent/qimei/l/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/l/g;->a:Lcom/tencent/oaid2/VendorManager;

    .line 3
    new-instance p2, Lcom/tencent/qimei/l/e;

    invoke-direct {p2, p1, p0}, Lcom/tencent/qimei/l/e;-><init>(Landroid/content/Context;Lcom/tencent/qimei/l/g;)V

    iput-object p2, p0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

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
    iget-object v1, p0, Lcom/tencent/qimei/l/g;->c:Lcom/tencent/qimei/l/f;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, v0, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/qimei/l/e;->b:Lcom/tencent/qimei/l/d;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6
    const-string v3, "SI unBind Service successful"

    invoke-static {v3}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-object v2, v0, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    .line 11
    iput-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    .line 12
    :catch_0
    :try_start_1
    const-string v3, "SI unBind Service exception"

    invoke-static {v3}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-object v2, v0, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    .line 15
    iput-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    goto :goto_1

    .line 16
    :goto_0
    iput-object v2, v0, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    .line 17
    iput-boolean v1, v0, Lcom/tencent/qimei/l/e;->d:Z

    .line 18
    throw v3

    :cond_0
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    if-nez v0, :cond_0

    .line 4
    const-string v0, "SI Device not support opendeviceid"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "SI Device support opendeviceid"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :catch_0
    const-string v0, "SI isSupport error, RemoteException!"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/l/g;->a:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/l/g;->e()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qimei/l/g;->e()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Context is null, must be new SxCore first"

    const-string v5, "SI Context is null."

    const-string v6, ""

    if-nez v2, :cond_0

    :goto_0
    move-object v2, v6

    goto :goto_4

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

    .line 7
    const-string v7, "SI getAAID Package: "

    .line 8
    iget-object v8, v2, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    if-eqz v8, :cond_9

    .line 12
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SIapackage\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    if-eqz v8, :cond_2

    .line 14
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    iget-object v2, v2, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    if-eqz v2, :cond_3

    .line 19
    check-cast v2, Lcom/tencent/qimei/l/a;

    invoke-virtual {v2, v8}, Lcom/tencent/qimei/l/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 24
    :catch_0
    const-string v2, "SI geta error, RemoteException!"

    invoke-static {v2}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    const-string v2, "SI input package is null!"

    invoke-static {v2}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/qimei/l/g;->e()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_6

    .line 30
    :cond_5
    iget-object v7, p0, Lcom/tencent/qimei/l/g;->b:Lcom/tencent/qimei/l/e;

    .line 31
    iget-object v8, v7, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    if-eqz v8, :cond_8

    .line 36
    :try_start_1
    iget-object v4, v7, Lcom/tencent/qimei/l/e;->e:Lcom/tencent/qimei/l/c;

    if-eqz v4, :cond_6

    .line 37
    check-cast v4, Lcom/tencent/qimei/l/a;

    invoke-virtual {v4}, Lcom/tencent/qimei/l/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 38
    const-string v5, "SDI geto call"

    invoke-static {v5}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception v4

    .line 42
    const-string v5, "SI geto error, RemoteException!"

    invoke-static {v5}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v3

    :goto_6
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    .line 46
    :cond_8
    invoke-static {v5}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_9
    invoke-static {v5}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    return-void
.end method
