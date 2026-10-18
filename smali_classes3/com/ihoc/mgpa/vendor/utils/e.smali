.class public final Lcom/ihoc/mgpa/vendor/utils/e;
.super Lcom/ihoc/mgpa/vendor/utils/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/ihoc/mgpa/vendor/utils/i;

.field public b:Lcom/ihoc/mgpa/vendor/utils/l;

.field public c:Lcom/ihoc/mgpa/vendor/utils/k;

.field public final d:Lcom/ihoc/mgpa/vendor/utils/e$a;

.field public final e:Lcom/ihoc/mgpa/vendor/utils/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->c:Lcom/ihoc/mgpa/vendor/utils/k;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/e$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/e$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/e;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->d:Lcom/ihoc/mgpa/vendor/utils/e$a;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/e$b;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/e$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/e;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->e:Lcom/ihoc/mgpa/vendor/utils/e$b;

    return-void
.end method

.method public static a(Lcom/ihoc/mgpa/vendor/utils/e;)Z
    .locals 4

    const-string v0, "CosaService"

    .line 5
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/e;->d:Lcom/ihoc/mgpa/vendor/utils/e$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/ihoc/mgpa/vendor/utils/i;->a(Lcom/ihoc/mgpa/vendor/utils/j;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current package error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "game service current package err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ":4.1"

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    const/4 v2, 0x0

    const-string v3, "CosaService"

    if-nez v1, :cond_0

    const-string v0, "game service is not available"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    invoke-interface {v4}, Lcom/ihoc/mgpa/vendor/utils/i;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "current package error"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "game service current package err: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :goto_0
    return-object v2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    const/4 v1, 0x0

    const-string v2, "CosaService"

    if-nez v0, :cond_0

    const-string p1, "game service is not available"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "current package error"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "game service current package err: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :goto_0
    return-object v1
.end method

.method public final a(Lcom/ihoc/mgpa/vendor/utils/k;)V
    .locals 3

    .line 3
    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->c:Lcom/ihoc/mgpa/vendor/utils/k;

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    const-string v0, "CosaService"

    if-nez p1, :cond_0

    const-string p1, "game service is not available"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/i;->c()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current package error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "game service current package err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/ihoc/mgpa/vendor/utils/l;)Z
    .locals 5

    const/4 v0, 0x0

    .line 4
    const-string v1, "CosaService"

    if-nez p1, :cond_0

    const-string p1, "context is null."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iput-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/e;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oplus.cosa"

    const-string v4, "com.oplus.cosa.gamemanagersdk.CosaGameSdkService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/e;->e:Lcom/ihoc/mgpa/vendor/utils/e$b;

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const-string p2, "bind service success."

    goto :goto_0

    :cond_1
    const-string p2, "bind service failed."

    :goto_0
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "Permission denied."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    const/4 v1, 0x0

    const-string v2, "CosaService"

    if-nez v0, :cond_0

    const-string v0, "game service is not available"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/i;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current package error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "game service current package err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :goto_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    const-string v1, "CosaService"

    if-nez v0, :cond_0

    const-string p1, "game service is not available"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/i;->updateGameInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "current package error"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "game service current package err: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/e;->a:Lcom/ihoc/mgpa/vendor/utils/i;

    :goto_1
    return-void
.end method
