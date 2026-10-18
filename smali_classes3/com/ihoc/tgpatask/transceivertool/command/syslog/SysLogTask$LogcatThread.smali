.class Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;
.super Ljava/lang/Thread;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatThread"
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private final lockObject:Ljava/lang/Object;

.field logClearCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field logCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field logcatPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

.field private type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;Ljava/lang/String;Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;)V
    .locals 3

    .line 373
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;

    .line 374
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 375
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v1, "/system/bin/logcat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->base:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    if-eq p3, v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v2, "-b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-virtual {p3}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 383
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v2, "-s"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    const-string v0, "-c"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$300(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 391
    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$300(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "%s/logcat_%s.log"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 397
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 398
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$400(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$400(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 401
    :cond_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v2, "\u65e5\u5fd7\u7ebf\u7a0b[%s]\u5f00\u59cb\u6267\u884c[type=%s][filter=%s]"

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v4, 0x2

    aput-object v5, v7, v4

    .line 401
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v2, "\u5220\u9664\u6587\u4ef6[%s]\u5931\u8d25"

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v5, "\u5220\u9664\u6587\u4ef6[%s]\u5931\u8d25"

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v8

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_2
    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v5, v8, [Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 417
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 418
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v7, v7, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v9, "\u521b\u5efa\u6587\u4ef6[%s]\u6210\u529f"

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v8

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v7, v7, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v9, "\u5f00\u59cb\u91c7\u96c6[%s]\u65e5\u5fd7"

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v10}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v8

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 422
    :try_start_1
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 424
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 425
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 426
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 427
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 428
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 430
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v10, "max_size"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    mul-long v10, v10, v12

    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    .line 434
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->isInterrupted()Z

    move-result v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v14, :cond_4

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->ready()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 435
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 436
    const-string v15, "%s\n"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v14, v4, v8

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 437
    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 438
    array-length v4, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v14, v4

    add-long/2addr v12, v14

    cmp-long v4, v12, v10

    if-ltz v4, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v15, v7

    goto/16 :goto_f

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 444
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->ready()Z

    move-result v4

    if-nez v4, :cond_5

    .line 445
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 446
    :try_start_5
    iget-object v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v15, v7

    const-wide/16 v6, 0x12c

    :try_start_6
    invoke-virtual {v14, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 447
    monitor-exit v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v15, v7

    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_5
    move-object v15, v7

    .line 449
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v15

    const/4 v4, 0x2

    const/4 v6, 0x3

    goto :goto_0

    .line 450
    :cond_7
    :goto_4
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v4, "\u505c\u6b62\u91c7\u96c6[%s]\u65e5\u5fd7"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "%s:done;"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v15, v7

    goto/16 :goto_e

    :catch_0
    move-object v15, v7

    goto/16 :goto_7

    :catch_1
    move-object v15, v7

    goto/16 :goto_9

    :catch_2
    move-object v15, v7

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object v15, v7

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_10

    :catch_3
    move-object v15, v7

    move-object v2, v5

    goto :goto_7

    :catch_4
    move-object v15, v7

    move-object v2, v5

    goto/16 :goto_9

    :catch_5
    move-object v15, v7

    move-object v2, v5

    goto/16 :goto_b

    .line 453
    :cond_8
    :try_start_8
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v2, "\u521b\u5efa\u6587\u4ef6[%s]\u5931\u8d25"

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "%s:failed;"

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v2, v5

    move-object v15, v2

    :goto_5
    if-eqz v5, :cond_9

    .line 468
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 470
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    .line 474
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_a
    if-eqz v15, :cond_11

    .line 478
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v15, v3

    goto/16 :goto_10

    :catch_7
    move-object v2, v5

    move-object v15, v2

    .line 463
    :catch_8
    :goto_7
    :try_start_b
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v4, "\u7ebf\u7a0b[%s]\u83b7\u53d6\u6700\u5927\u503c\u5931\u8d25"

    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "%s:failed;"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v5, :cond_b

    .line 468
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v4, v0

    .line 470
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_8
    if-eqz v2, :cond_c

    .line 474
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_c
    if-eqz v15, :cond_11

    .line 478
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto/16 :goto_d

    :catch_a
    move-object v2, v5

    move-object v15, v2

    .line 460
    :catch_b
    :goto_9
    :try_start_e
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v4, "\u7ebf\u7a0b[%s]\u88ab\u4e2d\u65ad"

    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "%s:failed;"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v5, :cond_d

    .line 468
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_a

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 470
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    .line 474
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_e
    if-eqz v15, :cond_11

    .line 478
    :try_start_10
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_d

    :catch_d
    move-object v2, v5

    move-object v15, v2

    .line 457
    :catch_e
    :goto_b
    :try_start_11
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v4, "\u521b\u5efa\u6587\u4ef6[%s]\u5931\u8d25"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "%s:failed;"

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v5, :cond_f

    .line 468
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_c

    :catch_f
    move-exception v0

    move-object v4, v0

    .line 470
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_c
    if-eqz v2, :cond_10

    .line 474
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_10
    if-eqz v15, :cond_11

    .line 478
    :try_start_13
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v2, v0

    .line 480
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 484
    :cond_11
    :goto_d
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string/jumbo v2, "\u65e5\u5fd7\u7ebf\u7a0b[%s]\u7ed3\u675f\u6267\u884c[type=%s][filter=%s]"

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->type:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v5, v7, v3

    const/4 v3, 0x2

    aput-object v6, v7, v3

    .line 484
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$500(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 487
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogcatThread;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$500(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_12
    return-void

    :catchall_6
    move-exception v0

    :goto_e
    move-object v3, v2

    :goto_f
    move-object v2, v0

    :goto_10
    if-eqz v5, :cond_13

    .line 468
    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    move-object v4, v0

    .line 470
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_11
    if-eqz v3, :cond_14

    .line 474
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_14
    if-eqz v15, :cond_15

    .line 478
    :try_start_15
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    move-object v3, v0

    .line 480
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 483
    :cond_15
    :goto_12
    throw v2
.end method
