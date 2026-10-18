.class public Lcom/perfsight/apm/c/o;
.super Lcom/perfsight/apm/c/p;
.source ""


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/perfsight/apm/c/h;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/perfsight/apm/c/s;

.field private h:Lcom/perfsight/apm/c/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/perfsight/apm/utils/d;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/perfsight/apm/c/p;-><init>(Landroid/content/Context;Lcom/perfsight/apm/utils/d;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    iput-object p3, p0, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    iput-object p3, p0, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    iput-object p3, p0, Lcom/perfsight/apm/c/o;->h:Lcom/perfsight/apm/c/j;

    iput-object p2, p0, Lcom/perfsight/apm/c/o;->d:Ljava/lang/String;

    new-instance p2, Lcom/perfsight/apm/c/j;

    invoke-direct {p2, p1}, Lcom/perfsight/apm/c/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/perfsight/apm/c/o;->h:Lcom/perfsight/apm/c/j;

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v4, "apm_cfg"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "qcc_gray"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    rsub-int/lit8 v3, v3, 0x64

    if-gt v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    const-string v0, "apm cfg shared prefs is null"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    const-string v3, "Fallback, cannot find last fallback, "

    const-string v4, "Qcc judge value : "

    const-string/jumbo v5, "write to cache: "

    const-string v6, "QCC_"

    const-string v0, "qcc enabled status: "

    const-string v7, "Qcc judge value cached: "

    const-string v8, "QCC_"

    const-string v9, "can\'t find matched config "

    const-string v10, "find cached quality "

    const-string v11, "can\'t find matched config "

    monitor-enter p0

    :try_start_0
    const-string v12, "aHR0cHM6Ly9jZG4ud2V0ZXN0LnFxLmNvbS9jdWJlL2NvbS9hcG1jYy8="

    invoke-static {v12}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v12, "aHR0cHM6Ly9jZG4ud2V0ZXN0LnFxLmNvbS9jdWJlL2NvbS9hcG1jYy9QUkVfUFVCXw=="

    invoke-static {v12}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v12, "aHR0cHM6Ly9jZG4ud2V0ZXN0Lm5ldC9jdWJlL2NvbS9hcG1jYy8="

    invoke-static {v12}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    const-string v12, "aHR0cHM6Ly9jZG4ud2V0ZXN0Lm5ldC9jdWJlL2NvbS9hcG1jYy9QUkVfUFVCXw=="

    invoke-static {v12}, Lcom/perfsight/apm/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/perfsight/apm/c/o;->d:Ljava/lang/String;

    const/4 v13, -0x1

    if-nez v12, :cond_1

    const-string v0, "AppId not set "

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v2, 0x3eb

    invoke-static {v2, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppId not set "

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const/16 v0, -0x3ed

    return v0

    :cond_1
    :try_start_1
    iget-object v12, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    if-nez v12, :cond_3

    const-string v0, "Context not set "

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v2, 0x3ec

    invoke-static {v2, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Context not set "

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    const/16 v0, -0x3ee

    return v0

    :cond_3
    :try_start_2
    iget-object v12, v1, Lcom/perfsight/apm/c/o;->h:Lcom/perfsight/apm/c/j;

    invoke-virtual {v12, v2}, Lcom/perfsight/apm/c/j;->a(Ljava/lang/String;)I

    move-result v12

    iget-object v14, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    if-eqz v14, :cond_7

    invoke-interface {v14, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v0, 0x3f3

    invoke-static {v0, v2}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_5
    if-lez v12, :cond_6

    const-string v0, "can\'t find matched domain, but find cached level"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v12, -0x3eb

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v12

    :cond_7
    :try_start_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    iget-object v7, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/perfsight/apm/c/o;->d:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v9, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    if-eqz v9, :cond_8

    new-instance v10, Lcom/perfsight/apm/c/h;

    const-string v11, "apm_qcc_preonce_cache"

    const-string v14, "apm_qcc_preonce"

    invoke-direct {v10, v9, v7, v11, v14}, Lcom/perfsight/apm/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    iget-object v7, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v9, "apm_qcc_preonce"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0}, Lcom/perfsight/apm/c/o;->a()Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    invoke-virtual {v0}, Lcom/perfsight/apm/c/h;->b()V

    :cond_8
    const-string v0, "Begin to check device class"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    invoke-virtual {p0, v0, v7}, Lcom/perfsight/apm/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/perfsight/apm/c/h;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v9, "apm_qcc_preonce"

    invoke-static {v0, v9}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "local tmp once file exists"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v9, "apm_qcc_preonce"

    const-string v10, "apm_qcc_finally"

    invoke-static {v0, v9, v10}, Lcom/perfsight/apm/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v9, "apm_qcc_preonce"

    const-string v10, "apm_qcc"

    invoke-static {v0, v9, v10}, Lcom/perfsight/apm/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    const-string v9, "apm_qcc_preonce"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Delete APM_QCC_FILENAME_PRE_DOWNLOAD file failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v9, 0x3ed

    invoke-static {v9, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    :cond_9
    const-string v0, "Use qcc file"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v9, "apm_qcc"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_7
    const-string v0, "open apm_qcc failed "

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v9, 0x3ee

    invoke-static {v9, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    :cond_a
    move-object v0, v7

    :goto_1
    if-nez v0, :cond_b

    const-string v0, "Use local finally file"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    const-string v9, "apm_qcc_finally"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v0, "open apm_qcc_finally failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v9, 0x3ef

    invoke-static {v9, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    move-object v9, v7

    goto :goto_3

    :cond_b
    :goto_2
    move-object v9, v0

    :goto_3
    if-nez v9, :cond_c

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/perfsight/apm/c/o;->d:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "apm_qcc_finally"

    invoke-static {v0, v8, v10}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    const-string v8, "apm_qcc_finally"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_c
    :goto_4
    const/16 v8, 0x3f0

    const/16 v10, -0x3ef

    const/4 v11, 0x0

    if-nez v9, :cond_10

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "QCC_READ_CONFIG_ERROR"

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_d
    sget-boolean v0, Lcom/perfsight/apm/c/h;->a:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-eqz v0, :cond_e

    const-string v0, "QccFB"

    invoke-static {v8, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    invoke-virtual {v0, v11}, Lcom/perfsight/apm/c/h;->a(I)V

    :cond_e
    if-lez v12, :cond_f

    const-string v0, "open qcc config file error, but find cached value locally"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return v12

    :cond_f
    monitor-exit p0

    return v10

    :cond_10
    :try_start_10
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    if-eqz v0, :cond_11

    goto/16 :goto_7

    :cond_11
    new-instance v0, Lcom/perfsight/apm/c/s;

    invoke-direct {v0}, Lcom/perfsight/apm/c/s;-><init>()V

    iput-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    invoke-virtual {v0, v9}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v0, :cond_12

    goto/16 :goto_7

    :cond_12
    if-eqz v9, :cond_13

    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v0

    :try_start_12
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_5
    const/16 v9, 0x3f2

    if-lez v12, :cond_16

    const-string v0, "parse qcc file error, use cached value"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "parse qcc file error, use cached value"

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_14
    sget-boolean v0, Lcom/perfsight/apm/c/h;->a:Z

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v11}, Lcom/perfsight/apm/c/h;->a(I)V

    const-string v0, "Qcc3"

    invoke-static {v9, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_15
    monitor-exit p0

    return v12

    :cond_16
    :try_start_13
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    invoke-virtual {v0}, Lcom/perfsight/apm/c/s;->c()V

    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/perfsight/apm/c/o;->d:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "apm_qcc_finally"

    invoke-static {v0, v6, v14}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v0, v1, Lcom/perfsight/apm/c/p;->a:Landroid/content/Context;
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    const-string v6, "apm_qcc_finally"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    invoke-virtual {v0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_6
    if-nez v7, :cond_1a

    sget-boolean v0, Lcom/perfsight/apm/c/h;->a:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-eqz v0, :cond_17

    const-string v0, "Qcc"

    invoke-static {v8, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    invoke-virtual {v0, v11}, Lcom/perfsight/apm/c/h;->a(I)V

    :cond_17
    invoke-static {}, Lcom/perfsight/apm/utils/p;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "parse last fallback error"

    invoke-static {v13, v0}, Lcom/perfsight/apm/utils/p;->a(ILjava/lang/String;)V

    :cond_18
    if-lez v12, :cond_19

    const-string v0, "parse last fallback error, but find cached value"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    return v12

    :cond_19
    monitor-exit p0

    return v10

    :cond_1a
    :try_start_18
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    invoke-virtual {v0, v7}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v9, v7

    :goto_7
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    invoke-virtual {v0}, Lcom/perfsight/apm/c/s;->b()I

    move-result v0

    sget-boolean v3, Lcom/perfsight/apm/c/h;->a:Z

    if-nez v3, :cond_1b

    iget-object v3, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v0}, Lcom/perfsight/apm/c/h;->a(I)V

    :cond_1b
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    iget-object v3, v1, Lcom/perfsight/apm/c/p;->c:Lcom/perfsight/apm/c/s$a;

    iget-object v6, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    invoke-virtual {v0, v3, v6}, Lcom/perfsight/apm/c/s;->a(Lcom/perfsight/apm/c/s$a;Ljava/util/Map;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v9, :cond_1c

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :catch_5
    :cond_1c
    :try_start_1a
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8

    :cond_1d
    const/16 v0, -0x3f1

    :goto_8
    if-lez v0, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/perfsight/apm/c/o;->h:Lcom/perfsight/apm/c/j;

    invoke-virtual {v3, v2, v0}, Lcom/perfsight/apm/c/j;->a(Ljava/lang/String;I)V

    goto :goto_9

    :cond_1e
    if-lez v12, :cond_1f

    const-string v0, "Judge value is invalid, but find valid cached value"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    :goto_9
    move v12, v0

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    monitor-exit p0

    return v12

    :cond_20
    if-eqz v7, :cond_21

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_b
    const-string v0, "parse file failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const-string v0, "Qcc"

    const/16 v2, 0x3f1

    invoke-static {v2, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    sget-boolean v0, Lcom/perfsight/apm/c/h;->a:Z

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/perfsight/apm/c/o;->e:Lcom/perfsight/apm/c/h;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v11}, Lcom/perfsight/apm/c/h;->a(I)V

    const-string v0, "Qcc"

    invoke-static {v9, v0}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    :cond_22
    if-lez v12, :cond_23

    const-string v0, "parse last fallback error, but find cached value"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    monitor-exit p0

    return v12

    :cond_23
    :try_start_1d
    iget-object v0, v1, Lcom/perfsight/apm/c/o;->g:Lcom/perfsight/apm/c/s;

    invoke-virtual {v0}, Lcom/perfsight/apm/c/s;->a()I

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    monitor-exit p0

    return v0

    :goto_c
    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_c
.end method
