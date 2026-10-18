.class public Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "TransferFileV2Task.java"


# static fields
.field private static final DEFAULT_FILE_MODIFY_TIME_INTERVAL:J = 0x240c8400L

.field private static final DEFAULT_FILE_NOT_COMPRESS_MAX_SIZE:J = 0x5000000L

.field private static final DEFAUT_TASK_FILE_MAX_NUM:I = 0x14

.field private static final DEFAUT_TOTAL_FILE_MAX_NUM:I = 0x64


# instance fields
.field private authCodesParam:Ljava/lang/String;

.field private destNameParam:Ljava/lang/String;

.field private endTimeParam:J

.field private logPathParam:Ljava/lang/String;

.field private maxFileNumParam:I

.field private startTimeParam:J

.field private suffixParam:Ljava/lang/String;

.field private urlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->urlParam:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->authCodesParam:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->startTimeParam:J

    .line 40
    iput-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I

    .line 42
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->name:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskScene:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    .line 57
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->type:Ljava/lang/String;

    .line 58
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    .line 59
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 60
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkFileGDPR(Ljava/lang/String;)Z
    .locals 3

    .line 460
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 466
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 473
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method private checkFileModifyTime(Ljava/io/File;JJ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 407
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    cmp-long p1, v1, p2

    if-ltz p1, :cond_1

    cmp-long p1, v1, p4

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private getAllFileSize(Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;)J"
        }
    .end annotation

    .line 359
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    .line 360
    iget-wide v2, v2, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileSize:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private getFileList(Ljava/io/File;Ljava/util/regex/Pattern;JJ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/regex/Pattern;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 380
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 384
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 387
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v11, v2, v4

    .line 388
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p0

    move-object v6, v11

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->checkFileModifyTime(Ljava/io/File;JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    .line 390
    new-instance v5, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {v5, v11}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 392
    new-instance v5, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {v5, v11}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private getFileList(Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v2, v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->checkFileModifyTime(Ljava/io/File;JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {p1, v7}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 372
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    move-wide v4, p2

    move-wide v6, p4

    .line 373
    invoke-direct/range {v1 .. v7}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->getFileList(Ljava/io/File;Ljava/util/regex/Pattern;JJ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getUploadFileList(Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 417
    :cond_0
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    if-eqz v5, :cond_5

    .line 419
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 424
    :cond_1
    const-string v6, "\\"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2
    move-object v9, v5

    .line 430
    invoke-static {v9}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 431
    invoke-direct/range {v8 .. v13}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->getFileList(Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 437
    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-static {v6}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkDirExsits(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 442
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 444
    const-string v7, "\\."

    .line 445
    const-string v8, "."

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "*"

    const-string v9, ".*"

    .line 446
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "?"

    .line 447
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 450
    :try_start_0
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 451
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->getFileList(Ljava/io/File;Ljava/util/regex/Pattern;JJ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, p0

    .line 453
    iget-object v7, v6, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Pattern compilation failed for: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, p0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v6, p0

    return-object v1

    :cond_7
    :goto_3
    move-object v6, p0

    return-object v1
.end method

.method private prepare()Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    .locals 5

    .line 208
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->type:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "forbidden task type %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->checkFileGDPR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "TaskId=%d Failed: checkFileGDPR fail"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PRIVATE_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object v0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v2, "logPath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "filename"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "client_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v2, "destName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "server_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    const-string v2, "network_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    const-string v2, "client_addr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 15

    .line 227
    const-string/jumbo v0, "startTime"

    const-string v1, "endTime"

    const-string v2, "maxFileNum"

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v5, "logPath"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 235
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 236
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-ge v3, v6, :cond_2

    goto/16 :goto_6

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 245
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 248
    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_0
    if-ge v11, v10, :cond_7

    aget-object v13, v3, v11

    if-eqz v13, :cond_6

    .line 249
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    if-nez v12, :cond_4

    .line 254
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_4
    const-string v12, "/"

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 258
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v12, 0x0

    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 268
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 274
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-lez v1, :cond_8

    .line 277
    iput-wide v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    goto :goto_3

    .line 279
    :cond_8
    iput-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    goto :goto_3

    .line 282
    :cond_9
    iput-wide v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    .line 284
    :goto_3
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v7, 0x240c8400

    if-eqz v1, :cond_b

    .line 285
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 286
    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    cmp-long v3, v0, v9

    if-ltz v3, :cond_a

    sub-long/2addr v9, v7

    .line 288
    iput-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->startTimeParam:J

    goto :goto_4

    .line 290
    :cond_a
    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->startTimeParam:J

    goto :goto_4

    .line 293
    :cond_b
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->startTimeParam:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 296
    :catch_0
    const-string v0, "parse start/end time exception!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/16 v0, 0xa

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v6, :cond_c

    .line 303
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I

    goto :goto_5

    :cond_c
    const/16 v3, 0x64

    if-lt v1, v3, :cond_d

    .line 307
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I

    goto :goto_5

    .line 310
    :cond_d
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 314
    :catch_1
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I

    .line 318
    :goto_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v1, "authCodes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_e

    goto/16 :goto_6

    .line 323
    :cond_e
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->authCodesParam:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_f

    goto/16 :goto_6

    .line 329
    :cond_f
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->urlParam:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v1, "destName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 331
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_10

    goto :goto_6

    .line 335
    :cond_10
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "suffix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v1, "bucket"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 340
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 341
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_12

    .line 343
    :cond_11
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "transceivertoolsg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_12
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 351
    :cond_13
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return v6

    :cond_15
    :goto_6
    return v4
.end method

.method public executeTask()V
    .locals 40

    move-object/from16 v7, p0

    .line 80
    const-string v8, "event_total_time"

    const-string v9, "event_code"

    const-string v10, "TaskId=%d End, total time: %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 82
    :try_start_0
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v14

    aput-object v4, v13, v15

    const/4 v3, 0x2

    aput-object v5, v13, v3

    .line 82
    invoke-static {v1, v2, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->prepare()Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    if-eq v0, v1, :cond_0

    .line 86
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->status:I

    .line 87
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    .line 201
    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v14

    aput-object v3, v4, v15

    invoke-static {v10, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->startTimeParam:J

    iget-wide v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->endTimeParam:J

    move-wide/from16 v16, v0

    move-object/from16 v1, p0

    const/4 v0, 0x3

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->getUploadFileList(Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 99
    const-string v0, "TaskId=%d Failed: Get src filelist is empty"

    iget-wide v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v1, v2, v14

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->status:I

    .line 101
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILELIST_EMPTY:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    .line 201
    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v14

    aput-object v3, v4, v15

    invoke-static {v10, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 106
    const-string v0, "TaskId=%d Failed: Get src filelist is too large, more then 100."

    iget-wide v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v1, v2, v14

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->status:I

    .line 108
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    .line 201
    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v14

    aput-object v3, v4, v15

    invoke-static {v10, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 111
    :cond_2
    :try_start_3
    new-instance v2, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task$1;

    invoke-direct {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->maxFileNumParam:I

    if-le v2, v3, :cond_3

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 120
    :cond_3
    const-string v2, "TaskId=%d, all file name: %s."

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->getAllFileName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v14

    aput-object v4, v6, v15

    invoke-static {v2, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {v7, v1}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->getAllFileSize(Ljava/util/ArrayList;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    .line 122
    div-long/2addr v2, v4

    const-wide/32 v4, 0x5000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 124
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->authCodesParam:Ljava/lang/String;

    const-string v3, ";;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/16 v25, 0x0

    .line 127
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-string v14, "TaskId=%d add task: logPath=%s,destName=%s"

    const-string v0, "logPath"

    const-string v4, "destName"

    const-string v5, "authCode"

    const-string v15, "%s_%d%s"

    move-object/from16 v26, v8

    const-string v8, "%s_%d"

    if-ge v6, v3, :cond_b

    .line 129
    :try_start_4
    array-length v3, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v23, 0x1

    add-int/lit8 v3, v3, -0x1

    if-le v13, v3, :cond_4

    goto/16 :goto_b

    :cond_4
    if-nez v25, :cond_5

    .line 133
    :try_start_5
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide/from16 v18, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v9

    move-object v2, v10

    move-wide/from16 v37, v11

    move-object/from16 v1, v26

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v4, v9

    move-object v2, v10

    move-wide/from16 v37, v11

    move-object/from16 v1, v26

    goto/16 :goto_d

    :cond_5
    :goto_2
    move-object/from16 v3, v25

    .line 136
    :try_start_6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    check-cast v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v36, v9

    move-object/from16 v35, v10

    .line 138
    :try_start_7
    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileSize:J

    const-wide/32 v21, 0x5000000

    cmp-long v23, v9, v21

    if-lez v23, :cond_7

    .line 139
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    aget-object v10, v2, v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v37, v11

    .line 142
    :try_start_8
    iget-object v11, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 143
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v11, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move/from16 v23, v6

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    move-object/from16 v39, v2

    move-object/from16 v25, v3

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v3, v2

    const/4 v2, 0x1

    aput-object v12, v3, v2

    const/4 v2, 0x2

    aput-object v6, v3, v2

    invoke-static {v8, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object/from16 v39, v2

    move-object/from16 v25, v3

    move/from16 v23, v6

    .line 144
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    const/4 v3, 0x1

    aput-object v6, v12, v3

    invoke-static {v2, v8, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    :goto_3
    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v3, Ljava/util/HashMap;

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 147
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    new-instance v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->name:Ljava/lang/String;

    iget-wide v10, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    const-string v31, "log"

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskScene:Ljava/lang/String;

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v29, v10

    move-object/from16 v32, v3

    move-object/from16 v33, v6

    move-object/from16 v34, v9

    invoke-direct/range {v27 .. v34}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 153
    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v14, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    :cond_7
    move-object/from16 v39, v2

    move-object/from16 v25, v3

    move/from16 v23, v6

    move-wide/from16 v37, v11

    .line 157
    iget-wide v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileSize:J

    add-long v18, v18, v2

    move-object/from16 v2, v25

    .line 158
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v9, 0x5000000

    cmp-long v1, v18, v9

    if-gtz v1, :cond_9

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-lt v1, v3, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v25, v2

    goto/16 :goto_6

    .line 161
    :cond_9
    :goto_4
    aget-object v1, v39, v13

    .line 162
    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 163
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v11, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v8, v9, v6

    const/4 v6, 0x2

    aput-object v11, v9, v6

    invoke-static {v3, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 164
    :cond_a
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v11, v10

    const/4 v6, 0x1

    aput-object v9, v11, v6

    invoke-static {v3, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 165
    :goto_5
    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    .line 166
    new-instance v8, Ljava/util/HashMap;

    iget-object v9, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 167
    invoke-virtual {v8, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->name:Ljava/lang/String;

    iget-wide v9, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    const-string v31, "log"

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskScene:Ljava/lang/String;

    move-object/from16 v27, v1

    move-object/from16 v28, v4

    move-wide/from16 v29, v9

    move-object/from16 v32, v8

    move-object/from16 v33, v5

    move-object/from16 v34, v2

    invoke-direct/range {v27 .. v34}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 173
    iget-wide v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v1, 0x1

    aput-object v6, v2, v1

    const/4 v1, 0x2

    aput-object v3, v2, v1

    invoke-static {v14, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v25, 0x0

    :goto_6
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v1, v24

    move-object/from16 v8, v26

    move-object/from16 v10, v35

    move-object/from16 v9, v36

    move-wide/from16 v11, v37

    move-object/from16 v2, v39

    const/4 v0, 0x3

    const-wide/32 v4, 0x5000000

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v35, v10

    :goto_7
    move-wide/from16 v37, v11

    :goto_8
    move-object/from16 v1, v26

    move-object/from16 v2, v35

    move-object/from16 v4, v36

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v35, v10

    :goto_9
    move-wide/from16 v37, v11

    :goto_a
    move-object/from16 v1, v26

    move-object/from16 v2, v35

    move-object/from16 v4, v36

    goto/16 :goto_d

    :cond_b
    :goto_b
    move-object/from16 v39, v2

    move-object/from16 v36, v9

    move-object/from16 v35, v10

    move-wide/from16 v37, v11

    if-eqz v25, :cond_d

    .line 178
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    move-object/from16 v1, v39

    array-length v2, v1

    if-ge v13, v2, :cond_d

    .line 179
    aget-object v1, v1, v13

    .line 180
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 181
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->suffixParam:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v10, v9

    const/4 v3, 0x1

    aput-object v6, v10, v3

    const/4 v3, 0x2

    aput-object v8, v10, v3

    invoke-static {v2, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 182
    :cond_c
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->destNameParam:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v10, v9

    const/4 v3, 0x1

    aput-object v6, v10, v3

    invoke-static {v2, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :goto_c
    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->logPathParam:Ljava/lang/String;

    .line 184
    new-instance v6, Ljava/util/HashMap;

    iget-object v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->data:Ljava/util/HashMap;

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 185
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->name:Ljava/lang/String;

    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    const-string v22, "log"

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskScene:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-wide/from16 v20, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v5

    invoke-direct/range {v18 .. v25}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 191
    iget-wide v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v14, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_d
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->status:I

    .line 194
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v37

    .line 201
    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    move-object/from16 v2, v35

    invoke-static {v2, v4}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v36

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object v1, v8

    move-object v4, v9

    move-object v2, v10

    move-wide/from16 v37, v11

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v1, v8

    move-object v4, v9

    move-object v2, v10

    move-wide/from16 v37, v11

    .line 196
    :goto_d
    :try_start_9
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    iput v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->status:I

    .line 197
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I

    .line 198
    const-string v3, "TaskId=%d Fail:%s"

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v8, v6

    const/4 v5, 0x1

    aput-object v0, v8, v5

    invoke-static {v3, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v37

    .line 201
    iget-wide v10, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v6, v10

    aput-object v3, v6, v5

    invoke-static {v2, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    return-void

    :catchall_5
    move-exception v0

    .line 200
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v37

    .line 201
    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v8, v9, v3

    invoke-static {v2, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2Task;->result:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    throw v0
.end method
