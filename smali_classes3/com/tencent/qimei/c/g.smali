.class public final Lcom/tencent/qimei/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Lcom/tencent/oaid2/VendorManager;

.field public b:Lcom/tencent/qimei/c/b;

.field public final c:Lcom/tencent/qimei/c/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/tencent/qimei/c/f;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/c/f;-><init>(Lcom/tencent/qimei/c/g;)V

    iput-object v0, p0, Lcom/tencent/qimei/c/g;->c:Lcom/tencent/qimei/c/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/qimei/c/g;->a:Lcom/tencent/oaid2/VendorManager;

    .line 2
    new-instance p2, Lcom/tencent/qimei/c/b;

    invoke-direct {p2, p1, p0}, Lcom/tencent/qimei/c/b;-><init>(Landroid/content/Context;Lcom/tencent/qimei/c/g;)V

    iput-object p2, p0, Lcom/tencent/qimei/c/g;->b:Lcom/tencent/qimei/c/b;

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
    iget-object v1, p0, Lcom/tencent/qimei/c/g;->c:Lcom/tencent/qimei/c/f;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/c/g;->b:Lcom/tencent/qimei/c/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v0, Lcom/tencent/qimei/c/b;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, v0, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/qimei/c/b;->c:Lcom/tencent/qimei/c/a;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v2, v0, Lcom/tencent/qimei/c/b;->e:Z

    .line 10
    iput-object v1, v0, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    iput-boolean v2, v0, Lcom/tencent/qimei/c/b;->e:Z

    .line 12
    iput-object v1, v0, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    .line 13
    throw v3

    .line 14
    :catch_0
    iput-boolean v2, v0, Lcom/tencent/qimei/c/b;->e:Z

    .line 15
    iput-object v1, v0, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    :cond_0
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/c/g;->a:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, p0, Lcom/tencent/qimei/c/g;->b:Lcom/tencent/qimei/c/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, v1, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const-string v5, "Context is null, must be new SxCore first"

    const-string v6, ""

    if-eqz v1, :cond_3

    .line 4
    iget-object v7, v1, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    if-eqz v7, :cond_3

    .line 5
    iget-object v7, v1, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 11
    :try_start_0
    iget-object v1, v1, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    if-eqz v1, :cond_1

    .line 12
    check-cast v1, Lcom/tencent/qimei/c/c;

    invoke-virtual {v1, v7}, Lcom/tencent/qimei/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    move-object v1, v6

    .line 16
    :cond_4
    iget-object v7, p0, Lcom/tencent/qimei/c/g;->b:Lcom/tencent/qimei/c/b;

    if-eqz v7, :cond_8

    .line 17
    iget-object v8, v7, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    if-eqz v8, :cond_8

    .line 18
    iget-object v8, v7, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    if-eqz v8, :cond_7

    .line 21
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 24
    :try_start_1
    iget-object v7, v7, Lcom/tencent/qimei/c/b;->d:Lcom/tencent/qimei/c/e;

    if-eqz v7, :cond_5

    .line 25
    check-cast v7, Lcom/tencent/qimei/c/c;

    invoke-virtual {v7, v5}, Lcom/tencent/qimei/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v6, v4

    goto :goto_4

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_8
    :goto_4
    invoke-virtual {v0, v3, v1, v6, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method
