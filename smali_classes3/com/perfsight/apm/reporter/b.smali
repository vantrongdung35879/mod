.class public Lcom/perfsight/apm/reporter/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/perfsight/apm/reporter/b;


# instance fields
.field private b:Lcom/perfsight/apm/reporter/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/perfsight/apm/reporter/b;
    .locals 2

    const-class v0, Lcom/perfsight/apm/reporter/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/reporter/b;->a:Lcom/perfsight/apm/reporter/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfsight/apm/reporter/b;

    invoke-direct {v1}, Lcom/perfsight/apm/reporter/b;-><init>()V

    sput-object v1, Lcom/perfsight/apm/reporter/b;->a:Lcom/perfsight/apm/reporter/b;

    :cond_0
    sget-object v1, Lcom/perfsight/apm/reporter/b;->a:Lcom/perfsight/apm/reporter/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "OPE_BIN upload url: "

    const-string v1, "https://"

    const-string v2, "/"

    :try_start_0
    iget-object v3, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ".zip"

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/perfsight/apm/reporter/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    iget-object v1, v1, Lcom/perfsight/apm/reporter/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    iget-object v1, v1, Lcom/perfsight/apm/reporter/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfsight/apm/reporter/a;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    iget-object v1, v1, Lcom/perfsight/apm/reporter/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->setCosFilePath(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfsight/apm/utils/Utils;->alignString2Len32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    invoke-static {p1}, Lcom/perfsight/apm/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfsight/apm/reporter/a;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    invoke-static {p1}, Lcom/perfsight/apm/utils/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perfsight/apm/reporter/a;->j:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    iget-object v0, v0, Lcom/perfsight/apm/reporter/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    const-string v0, "bucket"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    :try_start_3
    const-string v0, "region"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_2

    :try_start_5
    const-string v0, "domain"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_2

    :try_start_7
    const-string/jumbo v0, "tmpSecretId"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_2

    :try_start_9
    const-string/jumbo v0, "tmpSecretKey"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_2

    :try_start_b
    const-string v0, "sessionToken"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/perfsight/apm/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/perfsight/apm/reporter/a;

    invoke-direct {v0}, Lcom/perfsight/apm/reporter/a;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    const-string v1, "bucket"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    const-string v1, "region"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    const-string v1, "domain"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    const-string/jumbo v1, "tmpSecretId"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    const-string/jumbo v1, "tmpSecretKey"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    const-string v1, "sessionToken"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perfsight/apm/reporter/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    const-string/jumbo v1, "xcosStorageClass"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/perfsight/apm/reporter/a;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;

    invoke-virtual {p1}, Lcom/perfsight/apm/reporter/a;->a()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_3

    :cond_2
    :goto_0
    :try_start_1b
    const-string p1, "[OPE_BIN]token field is empty"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_1d
    const-string p1, "[OPE_BIN] update token failed: map is empty"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1f
    const-string v0, "[OPE_BIN]update token failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    throw p1
.end method

.method public declared-synchronized b()Lcom/perfsight/apm/reporter/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/reporter/b;->b:Lcom/perfsight/apm/reporter/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
