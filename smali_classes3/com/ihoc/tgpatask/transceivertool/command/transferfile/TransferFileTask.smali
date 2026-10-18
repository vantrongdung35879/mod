.class public Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "TransferFileTask.java"


# instance fields
.field private authCodeParam:Ljava/lang/String;

.field private authCodesParam:Ljava/lang/String;

.field private destNameParam:Ljava/lang/String;

.field private logPathParam:Ljava/lang/String;

.field private maxFileNumParam:I

.field private maxFileSizeParam:J

.field private methodParam:Ljava/lang/String;

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

    .line 49
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->logPathParam:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodeParam:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodesParam:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->urlParam:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->methodParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileSizeParam:J

    .line 38
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->suffixParam:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->name:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskScene:Ljava/lang/String;

    .line 52
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 53
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->type:Ljava/lang/String;

    .line 54
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    .line 55
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 56
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkFileGDPR(Ljava/lang/String;)Z
    .locals 3

    .line 462
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 466
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 468
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 475
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
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

.method private compressFile(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    .line 350
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 356
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 358
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    .line 359
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    :try_start_2
    new-instance p2, Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p2, 0x400

    .line 362
    new-array p2, p2, [B

    .line 364
    :goto_1
    invoke-virtual {v5, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 365
    invoke-virtual {v2, p2, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 367
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p3, :cond_1

    move-object p2, v5

    goto :goto_2

    :cond_1
    move-object p2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 373
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    if-eqz p2, :cond_5

    .line 385
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v5, p2

    :goto_3
    move-object p2, v2

    goto :goto_7

    :catch_1
    move-object v5, p2

    :catch_2
    move-object p2, v2

    goto :goto_4

    :catch_3
    move-object v5, p2

    :catch_4
    move-object p2, v2

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v5, p2

    goto :goto_7

    :catch_5
    move-object v5, p2

    .line 378
    :goto_4
    :try_start_5
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_3

    .line 382
    :try_start_6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_3
    if-eqz v5, :cond_5

    .line 385
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_6
    move-object v5, p2

    .line 376
    :goto_5
    :try_start_7
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_4

    .line 382
    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 385
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    :goto_6
    return v0

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz p2, :cond_6

    .line 382
    :try_start_9
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_8

    :catch_7
    move-exception p2

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 385
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    .line 388
    :goto_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 390
    :cond_7
    :goto_a
    throw p1
.end method

.method private getFileListOrderByTimeDesc(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 401
    :cond_0
    invoke-static {p1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 403
    array-length v3, p1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    return-object v0

    .line 406
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    .line 409
    :try_start_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 416
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 417
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 418
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 422
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {v1, p1}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 425
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v0

    .line 431
    :cond_5
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v4, p1, v2

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 433
    new-instance v5, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {v5, v4}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    .line 440
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 442
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {p1, v1}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 443
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_a

    return-object v0

    .line 448
    :cond_a
    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_c

    aget-object v3, p1, v2

    .line 449
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 450
    new-instance v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    invoke-direct {v4, v3}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 455
    :cond_c
    :goto_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 456
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method private getFileSize(Ljava/util/ArrayList;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;I)J"
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-lt p2, v0, :cond_1

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    if-ge v0, p2, :cond_1

    .line 339
    iget-wide v3, v3, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileSize:J

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 8

    .line 242
    const-string v0, "maxFileSize"

    const-string v1, "maxFileNum"

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "logPath"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_2

    goto/16 :goto_4

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->logPathParam:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "authCode"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 255
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 256
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_3

    goto/16 :goto_4

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodeParam:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "authCodes"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 262
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 263
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_4

    goto/16 :goto_4

    .line 267
    :cond_4
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodesParam:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 269
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 270
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_5

    goto/16 :goto_4

    .line 273
    :cond_5
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->urlParam:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "destName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 276
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_6

    goto/16 :goto_4

    .line 279
    :cond_6
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    .line 280
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v3, "bucket"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 281
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_8

    .line 283
    :cond_7
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "transceivertool"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_8
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v3, "suffix"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->suffixParam:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 289
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 290
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_a

    .line 291
    :cond_9
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "tdm-binary"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_a
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->methodParam:Ljava/lang/String;

    const/16 v2, 0xa

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v5, :cond_c

    if-le v3, v2, :cond_b

    goto :goto_0

    .line 301
    :cond_b
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    goto :goto_1

    .line 298
    :cond_c
    :goto_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    :goto_1
    const-wide/32 v1, 0x6400000

    const/high16 v3, 0x6400000

    .line 309
    :try_start_1
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_e

    if-le v4, v3, :cond_d

    goto :goto_2

    :cond_d
    int-to-long v6, v4

    .line 315
    iput-wide v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileSizeParam:J

    goto :goto_3

    .line 312
    :cond_e
    :goto_2
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iput-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileSizeParam:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 318
    :catch_1
    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iput-wide v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileSizeParam:J

    .line 322
    :goto_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 324
    :cond_f
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return v5

    :cond_11
    :goto_4
    return v3
.end method

.method public executeTask()V
    .locals 31

    move-object/from16 v1, p0

    .line 76
    const-string v2, "/"

    const-string v3, "destName"

    const-string v4, "logPath"

    const-string v5, "event_total_time"

    const-string v6, "event_code"

    const-string v7, "TaskId=%d End "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 77
    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 79
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x3

    move-object/from16 v16, v2

    new-array v2, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v12, v2, v17

    const/4 v12, 0x1

    aput-object v13, v2, v12

    const/4 v13, 0x2

    aput-object v14, v2, v13

    .line 77
    const-string v14, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v11, v14, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->logPathParam:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->checkFileGDPR(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-nez v2, :cond_0

    .line 84
    :try_start_1
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "TaskId=%d Failed: checkFileGDPR fail"

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-static {v3, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 87
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PRIVATE_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v17

    .line 231
    invoke-static {v3, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object v2, v0

    move-object v3, v5

    move-object v4, v6

    move-wide/from16 v22, v8

    goto/16 :goto_16

    :catch_1
    move-exception v0

    :goto_1
    move-object v2, v0

    move-object v3, v5

    move-object v4, v6

    move-wide/from16 v22, v8

    goto/16 :goto_14

    .line 91
    :cond_0
    :try_start_4
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v10, "filename"

    iget-object v11, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v10, "client_path"

    iget-object v11, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v10, "server_path"

    iget-object v11, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v10, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v11

    iget-object v11, v11, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v10, "client_addr"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v11

    iget-object v11, v11, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->type:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    if-nez v2, :cond_1

    .line 98
    :try_start_5
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    const-string v3, "forbidden task type %s"

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->name:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v17

    .line 231
    invoke-static {v3, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 103
    :cond_1
    :try_start_8
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->logPathParam:Ljava/lang/String;

    move-object/from16 v10, v16

    .line 104
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_f

    if-nez v11, :cond_2

    .line 105
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 110
    :cond_2
    :try_start_a
    invoke-direct {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->getFileListOrderByTimeDesc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    if-nez v11, :cond_3

    .line 113
    :try_start_b
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "TaskId=%d Failed: Get src filelist is empty"

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 114
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v17
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 113
    :try_start_d
    invoke-static {v3, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 116
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILELIST_EMPTY:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v17

    .line 231
    invoke-static {v3, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_3
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 118
    :cond_3
    :try_start_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v12, :cond_7

    .line 119
    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodesParam:Ljava/lang/String;

    const-string v11, ";;"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 120
    array-length v11, v10

    sub-int/2addr v11, v12

    iget v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    if-ge v11, v14, :cond_4

    .line 121
    :try_start_f
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "TaskId=%d Failed: maxFileNum=%d,authcode.size=%d"

    iget-wide v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 123
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v17

    aput-object v14, v15, v12

    const/4 v11, 0x2

    aput-object v10, v15, v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 121
    :try_start_11
    invoke-static {v3, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 125
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v17

    .line 231
    invoke-static {v3, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_4
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 128
    :goto_2
    :try_start_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    if-ge v13, v14, :cond_6

    :try_start_13
    iget v14, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    if-ge v13, v14, :cond_6

    add-int/lit8 v14, v13, 0x1

    .line 129
    aget-object v11, v10, v14

    .line 130
    iget-object v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->suffixParam:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    if-eqz v12, :cond_5

    :try_start_14
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 131
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v15, "%s_%d%s"

    move-object/from16 v19, v10

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v21, v5

    :try_start_15
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->suffixParam:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-wide/from16 v22, v8

    const/4 v8, 0x3

    :try_start_16
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v10, v9, v17

    const/4 v8, 0x1

    aput-object v20, v9, v8

    const/4 v8, 0x2

    aput-object v5, v9, v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    invoke-static {v12, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object/from16 v21, v5

    :goto_3
    move-wide/from16 v22, v8

    :goto_4
    move-object v2, v0

    move-object v4, v6

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v21, v5

    :goto_5
    move-wide/from16 v22, v8

    :goto_6
    move-object v2, v0

    move-object v4, v6

    goto/16 :goto_b

    :cond_5
    move-object/from16 v21, v5

    move-wide/from16 v22, v8

    move-object/from16 v19, v10

    .line 132
    :try_start_18
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%s_%d"

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    const/4 v5, 0x2

    :try_start_19
    new-array v15, v5, [Ljava/lang/Object;

    aput-object v10, v15, v17

    const/4 v10, 0x1

    aput-object v12, v15, v10
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    invoke-static {v8, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 133
    :goto_7
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 134
    new-instance v10, Ljava/util/HashMap;

    iget-object v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-direct {v10, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    const-string v12, "authCode"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v10, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v10, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v11

    new-instance v12, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;

    iget-object v13, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->name:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    move-object v15, v6

    :try_start_1b
    iget-wide v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    const-string v28, "log"

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskScene:Ljava/lang/String;

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-wide/from16 v26, v5

    move-object/from16 v29, v10

    move-object/from16 v30, v3

    invoke-direct/range {v24 .. v30}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3, v12}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 140
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d add task: logPath=%s,destName=%s"

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    const/4 v12, 0x3

    :try_start_1c
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v10, v13, v17

    const/4 v10, 0x1

    aput-object v9, v13, v10

    const/4 v9, 0x2

    aput-object v8, v13, v9
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 140
    :try_start_1d
    invoke-static {v5, v6, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    move v13, v14

    move-object v6, v15

    move-object/from16 v10, v19

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    move-wide/from16 v8, v22

    const/4 v12, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    :catchall_9
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_a

    :catchall_a
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object v15, v6

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v15, v6

    goto :goto_a

    :catchall_c
    move-exception v0

    move-object v15, v6

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v15, v6

    goto :goto_a

    :catchall_d
    move-exception v0

    move-object/from16 v21, v5

    move-object v15, v6

    move-wide/from16 v22, v8

    :goto_8
    move-object v2, v0

    move-object v4, v15

    :goto_9
    move-object/from16 v3, v21

    goto/16 :goto_16

    :catch_d
    move-exception v0

    move-object/from16 v21, v5

    move-object v15, v6

    move-wide/from16 v22, v8

    :goto_a
    move-object v2, v0

    move-object v4, v15

    :goto_b
    move-object/from16 v3, v21

    goto/16 :goto_14

    :cond_6
    move-object/from16 v21, v5

    move-object v15, v6

    move-wide/from16 v22, v8

    .line 144
    :try_start_1e
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 145
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v17

    .line 231
    invoke-static {v3, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v15

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_e
    move-exception v0

    move-object v4, v15

    move-object/from16 v3, v21

    goto/16 :goto_12

    :catch_e
    move-exception v0

    move-object v4, v15

    move-object/from16 v3, v21

    goto/16 :goto_13

    :cond_7
    move-object v3, v5

    move-object v4, v6

    move-wide/from16 v22, v8

    .line 149
    :try_start_1f
    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    invoke-direct {v1, v2, v5}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->getFileSize(Ljava/util/ArrayList;I)J

    move-result-wide v5

    .line 150
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v9, "filesize"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileSizeParam:J

    cmp-long v12, v5, v8

    if-gtz v12, :cond_13

    const-wide/16 v8, 0x1

    cmp-long v12, v5, v8

    if-gez v12, :cond_8

    goto/16 :goto_11

    .line 160
    :cond_8
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 161
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_10

    .line 170
    :cond_9
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 171
    const-string v6, "%s/ENQSDK/zipfiles/"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v5, v12, v17

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 173
    :cond_a
    const-string v6, "%sENQSDK/zipfiles/"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v5, v12, v17

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 176
    :goto_c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    .line 178
    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_b
    const-string v6, "%s%s"

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v5, v12, v17

    const/4 v5, 0x1

    aput-object v10, v12, v5

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 183
    iget v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->maxFileNumParam:I

    invoke-direct {v1, v2, v5, v6}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->compressFile(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 185
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    if-ne v2, v6, :cond_11

    .line 187
    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_f

    .line 195
    :cond_c
    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v18, 0x1400000

    cmp-long v2, v14, v18

    if-gtz v2, :cond_10

    cmp-long v2, v14, v8

    if-gez v2, :cond_d

    goto/16 :goto_e

    .line 207
    :cond_d
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object v24

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->destNameParam:Ljava/lang/String;

    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->urlParam:Ljava/lang/String;

    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->authCodeParam:Ljava/lang/String;

    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->methodParam:Ljava/lang/String;

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    .line 208
    invoke-virtual/range {v24 .. v29}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->upload2Cos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 210
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo v8, "upload_time"

    sub-long/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v5

    if-ne v2, v5, :cond_e

    .line 213
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    goto :goto_d

    .line 214
    :cond_e
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v5

    if-ne v2, v5, :cond_f

    .line 215
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 216
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d Fail:response is null(timeout) "

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 217
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v17

    .line 216
    invoke-static {v5, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 219
    :cond_f
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 220
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d Faild:cos server error(reporter invalid/auth fail/parse fail) "

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 222
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v17

    .line 220
    invoke-static {v5, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 231
    :goto_d
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_15

    .line 199
    :cond_10
    :goto_e
    :try_start_20
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d Failed: compressed filesize is not ok: %d"

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 200
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v8, v12, v17

    const/4 v8, 0x1

    aput-object v9, v12, v8

    .line 199
    invoke-static {v5, v6, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 202
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 188
    :cond_11
    :goto_f
    :try_start_21
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "TaskId=%d Failed: Compress zip file %s"

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v9, v12, v17

    const/4 v9, 0x1

    aput-object v5, v12, v9

    .line 188
    invoke-static {v6, v8, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 191
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_COMPRESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 162
    :cond_12
    :goto_10
    :try_start_22
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d Failed: can not get exFileDir"

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v17

    .line 162
    invoke-static {v5, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 165
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 153
    :cond_13
    :goto_11
    :try_start_23
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "TaskId=%d Failed: Src fileSize is not ok: %d"

    iget-wide v12, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 154
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v10, v12, v17

    const/4 v6, 0x1

    aput-object v5, v12, v6

    .line 153
    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 156
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_f
    move-exception v0

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object v3, v5

    move-object v4, v6

    move-wide/from16 v22, v8

    :goto_12
    move-object v2, v0

    goto :goto_16

    :catch_10
    move-exception v0

    move-object v3, v5

    move-object v4, v6

    move-wide/from16 v22, v8

    :goto_13
    move-object v2, v0

    .line 226
    :goto_14
    :try_start_24
    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v5

    iput v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->status:I

    .line 227
    sget-object v5, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v5

    iput v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    .line 228
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "TaskId=%d Fail:%s"

    iget-wide v9, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 229
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v17

    const/4 v9, 0x1

    aput-object v2, v10, v9

    .line 228
    invoke-static {v6, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    .line 231
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v10, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v17

    .line 231
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_15
    invoke-static {v2, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_10
    move-exception v0

    goto :goto_12

    .line 231
    :goto_16
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->taskID:J

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v17

    .line 231
    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->errorCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    iget-object v6, v1, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    throw v2
.end method
