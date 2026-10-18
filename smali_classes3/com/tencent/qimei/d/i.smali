.class public final Lcom/tencent/qimei/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/a/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/oaid2/VendorManager;

.field public c:Ljava/lang/String;

.field public d:Z

.field public final e:Lcom/tencent/qimei/d/g;

.field public volatile f:Z

.field public final g:Lcom/tencent/qimei/d/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/d/i;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qimei/d/i;->d:Z

    .line 7
    new-instance v1, Lcom/tencent/qimei/d/g;

    invoke-direct {v1}, Lcom/tencent/qimei/d/g;-><init>()V

    iput-object v1, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    .line 8
    iput-boolean v0, p0, Lcom/tencent/qimei/d/i;->f:Z

    .line 9
    new-instance v0, Lcom/tencent/qimei/d/h;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/d/h;-><init>(Lcom/tencent/qimei/d/i;)V

    iput-object v0, p0, Lcom/tencent/qimei/d/i;->g:Lcom/tencent/qimei/d/h;

    return-void
.end method

.method public static a(Lcom/tencent/qimei/d/i;)V
    .locals 7

    const-string v0, "com.hihonor.id"

    const-string v1, "honor unbind service exceprion:"

    .line 4
    iget-object v2, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    .line 5
    iget-object v3, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.hihonor.id.HnOaIdService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v3

    goto :goto_0

    :catch_0
    nop

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oaid_limit_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oaid"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/tencent/qimei/d/i;->d:Z

    .line 16
    iput-object v2, p0, Lcom/tencent/qimei/d/i;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "honor get cache oaid error "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 21
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    iget-object v2, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/d/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qimei/d/i;->f:Z

    .line 22
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    iget-object v0, v0, Lcom/tencent/qimei/d/g;->a:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v0, v5, v6, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    .line 24
    iget-object v0, v0, Lcom/tencent/qimei/d/g;->b:Lcom/tencent/qimei/d/d;

    .line 25
    iget-object v2, v0, Lcom/tencent/qimei/d/d;->a:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lcom/tencent/qimei/d/d;->b:Z

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    .line 28
    iget-object v0, v0, Lcom/tencent/qimei/d/g;->b:Lcom/tencent/qimei/d/d;

    .line 29
    iget-object v2, v0, Lcom/tencent/qimei/d/d;->a:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/tencent/qimei/d/i;->c:Ljava/lang/String;

    .line 31
    iget-boolean v0, v0, Lcom/tencent/qimei/d/d;->b:Z

    xor-int/2addr v0, v3

    .line 32
    iput-boolean v0, p0, Lcom/tencent/qimei/d/i;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_1
    iget-boolean v2, p0, Lcom/tencent/qimei/d/i;->f:Z

    if-eqz v2, :cond_4

    .line 39
    iget-object v2, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    iget-object v5, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    :try_start_3
    invoke-virtual {v5, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 43
    iget-boolean v2, p0, Lcom/tencent/qimei/d/i;->f:Z

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    iget-object p0, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :try_start_4
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 48
    :cond_2
    :goto_2
    throw v0

    :catch_3
    nop

    .line 49
    iget-boolean v0, p0, Lcom/tencent/qimei/d/i;->f:Z

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->e:Lcom/tencent/qimei/d/g;

    iget-object v2, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    :try_start_5
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_6

    .line 54
    const-string v0, "honor get oaid success"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 56
    :cond_6
    const-string v0, "honor get oaid failed"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 59
    :cond_7
    const-string v0, "honor {com.hihonor.id.HnOaIdService} not exist"

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 60
    :goto_6
    iget-object v0, p0, Lcom/tencent/qimei/d/i;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v0, :cond_8

    .line 61
    iget-boolean v1, p0, Lcom/tencent/qimei/d/i;->d:Z

    iget-object p0, p0, Lcom/tencent/qimei/d/i;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0, v4}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/d/i;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/tencent/qimei/d/i;->b:Lcom/tencent/oaid2/VendorManager;

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
    iget-object v1, p0, Lcom/tencent/qimei/d/i;->g:Lcom/tencent/qimei/d/h;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/b/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
