.class public Lcom/perfsight/apm/c/r;
.super Lcom/perfsight/apm/c/p;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/perfsight/apm/c/p;-><init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V

    iput-object p2, p0, Lcom/perfsight/apm/c/r;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "QccHanlder, ConfigList does not contain target configure: "

    const-string v1, "QccHanlder, cannot open asset_qcc_file"

    monitor-enter p0

    :try_start_0
    const-string v2, "aHR0cHM6Ly9jZG4ud2V0ZXN0LnFxLmNvbS9jdWJlL2NvbS9hcG1jYy8="

    invoke-static {v2}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v2, "aHR0cHM6Ly9jZG4ud2V0ZXN0LnFxLmNvbS9jdWJlL2NvbS9hcG1jYy9QUkVfUFVCXw=="

    invoke-static {v2}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v2, "aHR0cHM6Ly9jZG4ud2V0ZXN0Lm5ldC9jdWJlL2NvbS9hcG1jYy8="

    invoke-static {v2}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v2, "aHR0cHM6Ly9jZG4ud2V0ZXN0Lm5ldC9jdWJlL2NvbS9hcG1jYy9QUkVfUFVCXw=="

    invoke-static {v2}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfsight/apm/c/r;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string p1, "QccSYNC, AppId not set "

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3ed

    return p1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    if-nez v3, :cond_1

    const-string p1, "QccSYNC, Context not set "

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3ee

    return p1

    :cond_1
    :try_start_2
    new-instance v4, Lcom/perfsight/apm/c/m;

    invoke-direct {v4, v3, v2}, Lcom/perfsight/apm/c/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfsight/apm/c/m;->a()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "QccSYNC, cannot fetch or parse target qcc config, return 0"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfsight/apm/c/m;->b()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    if-nez v2, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/perfsight/apm/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lcom/perfsight/apm/c/m;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "default"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "QccHanlder, invalid file"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3f5

    return p1

    :cond_4
    :try_start_4
    iget-object p3, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v1, Lcom/perfsight/apm/c/s;

    invoke-direct {v1}, Lcom/perfsight/apm/c/s;-><init>()V

    invoke-virtual {v1, p3}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "QccHanlder, parse file failed"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/perfsight/apm/c/s;->a()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    invoke-virtual {v1, v3, v2}, Lcom/perfsight/apm/c/s;->a(Lcom/perfsight/apm/c/s$a;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p3, :cond_6

    :try_start_7
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_0
    :cond_6
    :try_start_8
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return p1

    :cond_7
    :try_start_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3f7

    return p1

    :catch_1
    move-exception p1

    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    const/16 p1, -0x3f6

    return p1

    :goto_0
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method
