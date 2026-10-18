.class public Lcom/perfsight/apm/c/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/perfsight/apm/c/o;

.field private d:Lcom/perfsight/apm/utils/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfsight/apm/c/i;->d:Lcom/perfsight/apm/utils/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-string v0, "judge device class: "

    const-string v1, "QCC_"

    const-string v2, "QCC_"

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const/4 v4, -0x1

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v6, p0, Lcom/perfsight/apm/c/i;->c:Lcom/perfsight/apm/c/o;

    if-nez v6, :cond_1

    new-instance v6, Lcom/perfsight/apm/c/o;

    iget-object v7, p0, Lcom/perfsight/apm/c/i;->d:Lcom/perfsight/apm/utils/d;

    invoke-direct {v6, v3, v5, v7}, Lcom/perfsight/apm/c/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V

    iput-object v6, p0, Lcom/perfsight/apm/c/i;->c:Lcom/perfsight/apm/c/o;

    :cond_1
    new-instance v3, Lcom/perfsight/apm/apm/w;

    iget-object v5, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/perfsight/apm/c/i;->d:Lcom/perfsight/apm/utils/d;

    invoke-direct {v3, v5, v6}, Lcom/perfsight/apm/apm/w;-><init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V

    invoke-virtual {v3}, Lcom/perfsight/apm/apm/w;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "Version changed, needs to flush cached info and cp files"

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "apm_qcc_finally"

    invoke-static {v3, v2, v5}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const-string v3, "apm_qcc_preonce"

    invoke-static {v2, v3}, Lcom/perfsight/apm/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const-string v3, "apm_qcc_finally"

    const-string v5, "apm_qcc_preonce"

    invoke-static {v2, v3, v5}, Lcom/perfsight/apm/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v2, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const-string v3, "apm_qcc_finally"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "can not find fallback file, cp qcc from asset"

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "apm_qcc_finally"

    invoke-static {v2, v1, v5}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const-string v2, "apm_qcc_finally"

    const-string v5, "apm_qcc_preonce"

    invoke-static {v1, v2, v5}, Lcom/perfsight/apm/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "end cp asset file"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    const-string v2, "apm_qcc_cache_sp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/perfsight/apm/c/i;->c:Lcom/perfsight/apm/c/o;

    invoke-virtual {v1, p1, p2, p3}, Lcom/perfsight/apm/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return p1

    :cond_6
    :goto_0
    :try_start_1
    const-string p1, "Param is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string p1, "Qcc"

    const/16 p2, 0x3e9

    invoke-static {p2, p1}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Param is null"

    invoke-static {v4, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    const/16 p1, -0x3ea

    return p1

    :cond_8
    :goto_1
    :try_start_2
    const-string p1, "QccHandler is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string p1, "handler"

    const/16 p2, 0x3e8

    invoke-static {p2, p1}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "QccHandler is null"

    invoke-static {v4, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    const/16 p1, -0x3e9

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/perfsight/apm/c/q;

    iget-object v2, p0, Lcom/perfsight/apm/c/i;->d:Lcom/perfsight/apm/utils/d;

    invoke-direct {v1, v0, v2}, Lcom/perfsight/apm/c/q;-><init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/perfsight/apm/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "QccHandler is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string p1, "handler"

    const/16 p2, 0x3e8

    invoke-static {p2, p1}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "QccHandler is null"

    const/4 p2, -0x1

    invoke-static {p2, p1}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    const/16 p1, -0x3e9

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/c/i;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "DCLS SYNC, context is null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3ee

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/perfsight/apm/c/i;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "DCLS SYNC, appid is null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3ed

    return p1

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    const-string p1, "DCLS SYNC, configName is null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_2
    :try_start_3
    new-instance v2, Lcom/perfsight/apm/c/r;

    iget-object v3, p0, Lcom/perfsight/apm/c/i;->d:Lcom/perfsight/apm/utils/d;

    invoke-direct {v2, v0, v1, v3}, Lcom/perfsight/apm/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/perfsight/apm/c/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
