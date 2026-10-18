.class public Lcom/wukong/HeapDump/HeapDump;
.super Ljava/lang/Object;
.source "HeapDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wukong/HeapDump/HeapDump$error_code;
    }
.end annotation


# static fields
.field private static final MAX_VALID_HEAP_SIZE:J = 0x80000000L

.field private static final MIN_VALID_HEAP_SIZE:J = 0x1000000L

.field private static final TAG:Ljava/lang/String; = "HeapDump"

.field private static config_query_interval:J = 0x0L

.field private static final dumped_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static enable_flag:Z = false

.field private static final final_heap_file_name:Ljava/lang/String; = "hok_hdx.zip"

.field private static heap_file_full_path:Ljava/lang/String; = null

.field private static final heap_file_name:Ljava/lang/String; = "hok_hdx.bin"

.field private static final init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static m_handler:Landroid/os/Handler;

.field private static m_memory_check_runnable:Ljava/lang/Runnable;

.field private static max_memory:J

.field private static mem_percent_limit:F

.field private static original_handler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetm_handler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheck_memory_usage()V
    .locals 0

    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->check_memory_usage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smget_config_query_interval()J
    .locals 2

    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_config_query_interval()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smget_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smhandle_oom_error(Ljava/lang/OutOfMemoryError;Ljava/lang/Thread;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wukong/HeapDump/HeapDump;->handle_oom_error(Ljava/lang/OutOfMemoryError;Ljava/lang/Thread;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/wukong/HeapDump/HeapDump;->dumped_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/wukong/HeapDump/HeapDump;->init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    sput v0, Lcom/wukong/HeapDump/HeapDump;->mem_percent_limit:F

    const-wide/16 v0, 0x1e

    .line 46
    sput-wide v0, Lcom/wukong/HeapDump/HeapDump;->config_query_interval:J

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    .line 50
    sput-object v0, Lcom/wukong/HeapDump/HeapDump;->m_memory_check_runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes_to_mb(J)J
    .locals 2

    const-wide/32 v0, 0x100000

    .line 486
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static check_memory_usage()V
    .locals 8

    .line 362
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_enable_flag()Z

    move-result v0

    const-string v1, "HeapDump"

    if-nez v0, :cond_0

    .line 364
    const-string v0, "HeapDumpHelper is disabled, checkMemoryUsage skipped."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :cond_0
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    const-string v0, "HeapDumpHelper not initialized. Call init() first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 376
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v4, v2

    .line 378
    sget-wide v6, Lcom/wukong/HeapDump/HeapDump;->max_memory:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 380
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_mem_percent_limit()F

    move-result v0

    float-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    goto :goto_0

    .line 385
    :cond_2
    const-string v0, "WARNING: Memory usage exceeds threshold!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    .line 386
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_mem_percent_limit()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const-string v4, "Current usage: %.2f%% > Threshold: %.2f%%"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v2, v3}, Lcom/wukong/HeapDump/HeapDump;->bytes_to_mb(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-wide v3, Lcom/wukong/HeapDump/HeapDump;->max_memory:J

    invoke-static {v3, v4}, Lcom/wukong/HeapDump/HeapDump;->bytes_to_mb(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v3, v4, v0

    const-string v0, "Used: %d MB / Max: %d MB"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v0, "prepare_dump:check_memory_usage"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->execute_heap_dump()V

    :goto_0
    return-void
.end method

.method private static dump_heap(Ljava/lang/String;)V
    .locals 3

    .line 523
    const-string v0, "HeapDump"

    .line 0
    const-string v1, "prepare_dump "

    .line 523
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error during heap dump: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException during heap dump generation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static declared-synchronized execute_heap_dump()V
    .locals 4

    const-class v0, Lcom/wukong/HeapDump/HeapDump;

    monitor-enter v0

    .line 493
    :try_start_0
    sget-object v1, Lcom/wukong/HeapDump/HeapDump;->dumped_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const-string v1, "HeapDump"

    const-string v2, "prepare_dump repeat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit v0

    return-void

    .line 499
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_heap_file_path()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 502
    const-string v1, "HeapDump"

    const-string v2, "get heap file path failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    monitor-exit v0

    return-void

    :cond_1
    const/4 v3, 0x1

    .line 509
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 510
    invoke-static {v2}, Lcom/wukong/HeapDump/HeapDump;->dump_heap(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 514
    :try_start_3
    const-string v2, "HeapDump"

    const-string v3, "Heap dump failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private static get_config_query_interval()J
    .locals 2

    .line 347
    sget-wide v0, Lcom/wukong/HeapDump/HeapDump;->config_query_interval:J

    return-wide v0
.end method

.method private static get_enable_flag()Z
    .locals 1

    .line 425
    sget-boolean v0, Lcom/wukong/HeapDump/HeapDump;->enable_flag:Z

    return v0
.end method

.method private static get_final_heap_file_path_from_ctx(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/hok_hdx.zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_0
    const-string p0, "HeapDump"

    const-string v1, "HeapDumpHelper get dir failed"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static get_heap_file_path()Ljava/lang/String;
    .locals 1

    .line 478
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->heap_file_full_path:Ljava/lang/String;

    return-object v0
.end method

.method private static get_heap_file_path_from_ctx(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/hok_hdx.bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_0
    const-string p0, "HeapDump"

    const-string v1, "HeapDumpHelper get dir failed"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static get_mem_percent_limit()F
    .locals 1

    .line 337
    sget v0, Lcom/wukong/HeapDump/HeapDump;->mem_percent_limit:F

    return v0
.end method

.method private static get_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 407
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->original_handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static handle_oom_error(Ljava/lang/OutOfMemoryError;Ljava/lang/Thread;)V
    .locals 3

    .line 246
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_enable_flag()Z

    move-result v0

    const-string v1, "HeapDump"

    if-nez v0, :cond_0

    .line 248
    const-string p0, "HeapDumpHelper is disabled, handleOutOfMemoryError skipped."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    const-string v0, "!!! OutOfMemoryError Detected !!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Thread: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error Message: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string p0, "prepare_dump:handle_oom_error"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->execute_heap_dump()V

    .line 262
    const-string p0, "OOM exception will be passed to the original handler."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init(Landroid/content/Context;)I
    .locals 9

    .line 67
    const-string v0, "bq.wukong.enable_oom_monitor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbq/ccs;->get_settings_value_bool(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    invoke-static {v0}, Lcom/wukong/HeapDump/HeapDump;->set_enable_flag(Z)V

    .line 69
    const-string v0, "bq.wukong.oom_monitor_percent"

    const-wide/16 v2, 0x50

    invoke-static {v0, v2, v3}, Lbq/ccs;->get_settings_value_integer(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    const-string v0, "bq.wukong.oom_monitor_interval"

    const-wide/16 v4, 0x1e

    invoke-static {v0, v4, v5}, Lbq/ccs;->get_settings_value_integer(Ljava/lang/String;J)J

    move-result-wide v4

    .line 71
    invoke-static {v4, v5}, Lcom/wukong/HeapDump/HeapDump;->set_config_query_interval(J)V

    .line 74
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_enable_flag()Z

    move-result v0

    const/4 v4, 0x1

    const-string v5, "HeapDump"

    if-nez v0, :cond_0

    .line 76
    const-string p0, "HeapDumpHelper is disabled, init skipped."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto/16 :goto_1

    .line 82
    :cond_0
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->init_flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    const-string p0, "HeapDumpHelper has already been initialized."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/wukong/HeapDump/HeapDump;->get_final_heap_file_path_from_ctx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 92
    const-string p0, "get final heap file path failed"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    goto :goto_1

    .line 97
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    const-string p0, "final heap file already exists,exit"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    goto :goto_1

    .line 106
    :cond_3
    invoke-static {p0}, Lcom/wukong/HeapDump/HeapDump;->get_heap_file_path_from_ctx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 110
    const-string p0, "get heap file path failed"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v6}, Lcom/wukong/HeapDump/HeapDump;->set_heap_file_path(Ljava/lang/String;)V

    .line 116
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/wukong/HeapDump/HeapDump$1;

    invoke-direct {v0, v8, v7}, Lcom/wukong/HeapDump/HeapDump$1;-><init>(Ljava/io/File;Ljava/io/File;)V

    const-string v2, "HeapDump-Compress"

    invoke-direct {p0, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 138
    const-string p0, "skip init, prepare compress"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    goto :goto_1

    .line 143
    :cond_5
    invoke-static {p0}, Lcom/wukong/HeapDump/HeapDump;->init_oom_handler(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 146
    const-string p0, "HeapDumpHelper init_oom_handler failed"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    goto :goto_1

    :cond_6
    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 152
    invoke-static {v2}, Lcom/wukong/HeapDump/HeapDump;->set_mem_percent_limit(F)V

    .line 154
    invoke-static {p0}, Lcom/wukong/HeapDump/HeapDump;->init_query_handler(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 157
    const-string p0, "HeapDumpHelper init_query_handler failed"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x7

    goto :goto_1

    .line 162
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    const/4 p0, 0x0

    .line 166
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "HeapDumpHelper init leave with ret = %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static init_oom_handler(Landroid/content/Context;)Z
    .locals 0

    .line 173
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->register_oom_handler()Z

    move-result p0

    return p0
.end method

.method private static init_query_handler(Landroid/content/Context;)Z
    .locals 3

    .line 292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 294
    invoke-static {v0, v1}, Lcom/wukong/HeapDump/HeapDump;->is_max_memory_normal(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 299
    :cond_0
    sput-wide v0, Lcom/wukong/HeapDump/HeapDump;->max_memory:J

    .line 302
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->stop_monitoring()V

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    .line 305
    new-instance p0, Lcom/wukong/HeapDump/HeapDump$3;

    invoke-direct {p0}, Lcom/wukong/HeapDump/HeapDump$3;-><init>()V

    sput-object p0, Lcom/wukong/HeapDump/HeapDump;->m_memory_check_runnable:Ljava/lang/Runnable;

    .line 314
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static is_max_memory_normal(J)Z
    .locals 3

    const-wide/32 v0, 0x1000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x80000000L

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static register_oom_handler()Z
    .locals 2

    .line 182
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_enable_flag()Z

    move-result v0

    const-string v1, "HeapDump"

    if-nez v0, :cond_0

    .line 184
    const-string v0, "HeapDumpHelper is disabled, registerOOMHandler skipped."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/wukong/HeapDump/HeapDump;->set_original_handler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 192
    new-instance v0, Lcom/wukong/HeapDump/HeapDump$2;

    invoke-direct {v0}, Lcom/wukong/HeapDump/HeapDump$2;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 236
    const-string v0, "OOM handler registered successfully."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private static restore_original_handler()V
    .locals 2

    .line 270
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_enable_flag()Z

    move-result v0

    const-string v1, "HeapDump"

    if-nez v0, :cond_0

    .line 272
    const-string v0, "HeapDumpHelper is disabled, restoreOriginalHandler skipped."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_0
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lcom/wukong/HeapDump/HeapDump;->get_original_handler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 279
    const-string v0, "Original exception handler restored."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static set_config_query_interval(J)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 352
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    sput-wide p0, Lcom/wukong/HeapDump/HeapDump;->config_query_interval:J

    return-void
.end method

.method private static set_enable_flag(Z)V
    .locals 1

    .line 434
    sput-boolean p0, Lcom/wukong/HeapDump/HeapDump;->enable_flag:Z

    if-eqz p0, :cond_0

    .line 435
    const-string p0, "enabled"

    goto :goto_0

    :cond_0
    const-string p0, "disabled"

    :goto_0
    const-string v0, "HeapDumpHelper "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeapDump"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static set_heap_file_path(Ljava/lang/String;)V
    .locals 0

    .line 473
    sput-object p0, Lcom/wukong/HeapDump/HeapDump;->heap_file_full_path:Ljava/lang/String;

    return-void
.end method

.method private static set_mem_percent_limit(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 342
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sput p0, Lcom/wukong/HeapDump/HeapDump;->mem_percent_limit:F

    return-void
.end method

.method private static set_original_handler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 416
    sput-object p0, Lcom/wukong/HeapDump/HeapDump;->original_handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private static stop_monitoring()V
    .locals 3

    .line 324
    sget-object v0, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 326
    sget-object v1, Lcom/wukong/HeapDump/HeapDump;->m_memory_check_runnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    sput-object v2, Lcom/wukong/HeapDump/HeapDump;->m_memory_check_runnable:Ljava/lang/Runnable;

    .line 331
    :cond_0
    sput-object v2, Lcom/wukong/HeapDump/HeapDump;->m_handler:Landroid/os/Handler;

    :cond_1
    return-void
.end method
