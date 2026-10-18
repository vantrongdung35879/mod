.class public final Lcom/tencent/qimei/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Lcom/tencent/qimei/h/e;

.field public b:Landroid/content/Context;

.field public c:Lcom/tencent/oaid2/VendorManager;

.field public final d:Lcom/tencent/qimei/h/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/tencent/qimei/h/g;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/h/g;-><init>(Lcom/tencent/qimei/h/h;)V

    iput-object v0, p0, Lcom/tencent/qimei/h/h;->d:Lcom/tencent/qimei/h/g;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 4

    const-string v0, "com.mdid.msa"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    invoke-static {p1}, Lcom/tencent/qimei/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5
    const-string v3, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string v0, "com.bun.msa.action.start.service"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v0, "com.bun.msa.param.pkgname"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :try_start_1
    const-string v0, "com.bun.msa.param.runinset"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    :cond_0
    new-instance v0, Lcom/tencent/qimei/h/e;

    invoke-direct {v0, p1, p0}, Lcom/tencent/qimei/h/e;-><init>(Landroid/content/Context;Lcom/tencent/qimei/h/h;)V

    iput-object v0, p0, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    .line 13
    :catch_1
    iput-object p2, p0, Lcom/tencent/qimei/h/h;->c:Lcom/tencent/oaid2/VendorManager;

    .line 14
    iput-object p1, p0, Lcom/tencent/qimei/h/h;->b:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/tencent/qimei/h/h;->d:Lcom/tencent/qimei/h/g;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    check-cast v1, Lcom/tencent/qimei/h/a;

    invoke-virtual {v1}, Lcom/tencent/qimei/h/a;->e()V

    .line 6
    iget-object v1, v0, Lcom/tencent/qimei/h/e;->b:Lcom/tencent/qimei/h/d;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, v0, Lcom/tencent/qimei/h/e;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/tencent/qimei/h/e;->b:Lcom/tencent/qimei/h/d;

    .line 23
    iput-object v1, v0, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/h/h;->a:Lcom/tencent/qimei/h/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/tencent/qimei/h/e;->d:Lcom/tencent/qimei/h/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    check-cast v0, Lcom/tencent/qimei/h/a;

    invoke-virtual {v0}, Lcom/tencent/qimei/h/a;->d()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
