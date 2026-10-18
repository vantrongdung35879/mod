.class public final Lcom/ihoc/mgpa/vendor/utils/r;
.super Lcom/ihoc/mgpa/vendor/utils/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/ihoc/mgpa/vendor/utils/n;

.field public b:Lcom/ihoc/mgpa/vendor/utils/l;

.field public c:Lcom/ihoc/mgpa/vendor/utils/k;

.field public final d:Lcom/ihoc/mgpa/vendor/utils/r$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->c:Lcom/ihoc/mgpa/vendor/utils/k;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/r$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/r$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/r;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->d:Lcom/ihoc/mgpa/vendor/utils/r$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ":4.1"

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    const/4 v2, 0x0

    const-string v3, "OIfaceService"

    if-nez v1, :cond_0

    const-string v0, "game service is not available"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    invoke-interface {v4}, Lcom/ihoc/mgpa/vendor/utils/n;->d()Ljava/lang/String;

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

    iput-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    :goto_0
    return-object v2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    const/4 v1, 0x0

    const-string v2, "OIfaceService"

    if-nez v0, :cond_0

    const-string p1, "game service is not available"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

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

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    :goto_0
    return-object v1
.end method

.method public final a(Lcom/ihoc/mgpa/vendor/utils/k;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/r;->c:Lcom/ihoc/mgpa/vendor/utils/k;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    const-string v1, "OIfaceService"

    if-nez v0, :cond_0

    const-string p1, "game service is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/n;->updateGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "current package error"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    :goto_0
    return-void
.end method
