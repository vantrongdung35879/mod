.class public Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "TransferFileV2SubTask.java"


# static fields
.field private static final DEFAUT_FILE_MAX_NUM:I = 0x14


# instance fields
.field private authCodeParam:Ljava/lang/String;

.field private destNameParam:Ljava/lang/String;

.field private methodParam:Ljava/lang/String;

.field private uploadFileListParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private urlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
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
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->authCodeParam:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->urlParam:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->destNameParam:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->methodParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFileListParam:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->name:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskScene:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    .line 45
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->type:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFileListParam:Ljava/util/ArrayList;

    .line 47
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    .line 48
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 49
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    .line 214
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 221
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 223
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

    .line 224
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    :try_start_2
    new-instance p2, Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileHandle:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p2, 0x400

    .line 227
    new-array p2, p2, [B

    .line 229
    :goto_1
    invoke-virtual {v5, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 230
    invoke-virtual {v2, p2, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 232
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

    .line 238
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    if-eqz p2, :cond_5

    .line 250
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 253
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

    .line 243
    :goto_4
    :try_start_5
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_3

    .line 247
    :try_start_6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_3
    if-eqz v5, :cond_5

    .line 250
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_6
    move-object v5, p2

    .line 241
    :goto_5
    :try_start_7
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_4

    .line 247
    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 250
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

    .line 247
    :try_start_9
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_8

    :catch_7
    move-exception p2

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    .line 253
    :goto_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    :cond_7
    :goto_a
    throw p1
.end method

.method private getFileSize(Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;)J"
        }
    .end annotation

    .line 151
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

    .line 152
    iget-wide v2, v2, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->fileSize:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private uploadFilesToCos(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;",
            ">;)I"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->getFileSize(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 159
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    const-string v3, "filesize"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filenum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 169
    :cond_0
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "%s/ENQSDK/zipfiles/"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "%sENQSDK/zipfiles/"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->destNameParam:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    const-string v0, "%s%s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x14

    .line 181
    invoke-direct {p0, p1, v7, v0}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->compressFile(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result p1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 183
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 189
    :cond_3
    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v8, 0x1

    cmp-long p1, v5, v8

    if-gez p1, :cond_4

    .line 192
    iget-wide v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    const-string p1, "TaskId=%d Failed: compressed filesize is not ok: %d"

    invoke-static {p1, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 194
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 196
    :cond_4
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object v6

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->destNameParam:Ljava/lang/String;

    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->urlParam:Ljava/lang/String;

    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->authCodeParam:Ljava/lang/String;

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->methodParam:Ljava/lang/String;

    .line 197
    invoke-virtual/range {v6 .. v11}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->upload2Cos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 198
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "upload_time"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 201
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    goto :goto_1

    .line 202
    :cond_5
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 203
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 204
    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "TaskId=%d Fail:response is null(timeout) "

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 206
    :cond_6
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 207
    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    .line 208
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 207
    const-string v0, "TaskId=%d Faild:cos server error(reporter invalid/auth fail/parse fail) "

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return p1

    .line 184
    :cond_7
    :goto_2
    iget-wide v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v7, v0, v2

    const-string p1, "TaskId=%d Failed: Compress zip file %s"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 186
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_COMPRESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    .line 164
    :cond_8
    :goto_3
    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "TaskId=%d Failed: can not get exFileDir"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 166
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFileListParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return v1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v2, "authCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    goto/16 :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->authCodeParam:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_4

    goto/16 :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->urlParam:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v2, "destName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_5

    goto/16 :goto_0

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->destNameParam:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v1, "bucket"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "transceivertoolsg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "tdm-binary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->methodParam:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return v3

    :cond_c
    :goto_0
    return v1
.end method

.method public executeTask()V
    .locals 15

    .line 69
    const-string v0, "event_total_time"

    const-string v1, "event_code"

    const-string v2, "TaskId=%d End "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 71
    :try_start_0
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFileListParam:Ljava/util/ArrayList;

    .line 72
    const-string v9, "TaskId=%d Begin: msg=%s, startTimeStamp=%d, filelist: %s"

    iget-wide v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    .line 73
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFileListParam:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/UploadFileInfo;->getAllFileName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v6

    aput-object v11, v14, v7

    aput-object v12, v14, v5

    const/4 v10, 0x3

    aput-object v13, v14, v10

    .line 72
    invoke-static {v9, v14}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 75
    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->tag:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "TaskId=%d Failed: Get src filelist is empty"

    iget-wide v12, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v12, v13, v6

    invoke-static {v10, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-static {v9, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v9

    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 78
    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILELIST_EMPTY:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I

    .line 80
    :cond_0
    invoke-direct {p0, v8}, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->uploadFilesToCos(Ljava/util/ArrayList;)I

    move-result v8

    iput v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v8

    .line 82
    :try_start_1
    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v9

    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->status:I

    .line 83
    sget-object v9, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I

    .line 84
    const-string v9, "TaskId=%d Fail:%s"

    iget-wide v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v6

    aput-object v8, v5, v7

    invoke-static {v9, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    iget v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 86
    :goto_1
    iget-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    invoke-static {v2, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    iget v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->errorCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/transferfile/TransferFileV2SubTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    throw v5
.end method
