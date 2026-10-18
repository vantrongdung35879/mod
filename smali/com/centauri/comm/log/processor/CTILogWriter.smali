.class public Lcom/centauri/comm/log/processor/CTILogWriter;
.super Ljava/lang/Object;
.source "CTILogWriter.java"


# instance fields
.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 25
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 26
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public static create()Lcom/centauri/comm/log/processor/CTILogWriter;
    .locals 1

    .line 30
    new-instance v0, Lcom/centauri/comm/log/processor/CTILogWriter;

    invoke-direct {v0}, Lcom/centauri/comm/log/processor/CTILogWriter;-><init>()V

    .line 32
    invoke-direct {v0}, Lcom/centauri/comm/log/processor/CTILogWriter;->openLogFile()V

    return-object v0
.end method

.method private openLogFile()V
    .locals 3

    const-string v0, "open log file: "

    .line 39
    :try_start_0
    const-string v1, "centauriComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/centauri/comm/log/CTILogFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/centauri/comm/log/CTILogFileInfo;->fileName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 42
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->fileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refreshFileChannel(J)J
    .locals 11

    .line 86
    const-string v0, "centauriComm<Log>"

    const-wide/16 v1, 0x0

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 90
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    const-string v3, "get file channel size error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/centauri/comm/log/CTILogFileInfo;->updateFileName()V

    .line 93
    invoke-direct {p0}, Lcom/centauri/comm/log/processor/CTILogWriter;->openLogFile()V

    move-wide v3, v1

    :goto_0
    add-long v5, p1, v3

    .line 97
    sget v7, Lcom/centauri/comm/log/util/CTILogFileUtil;->maxLogFileSizeMB:I

    const/high16 v8, 0x100000

    mul-int v7, v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    .line 99
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v8, v10

    const/4 p1, 0x1

    aput-object p2, v8, p1

    const/4 p1, 0x2

    aput-object v7, v8, p1

    const-string/jumbo p1, "size to write: %d, channel size: %d, limit: %d"

    invoke-static {v9, p1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v5, v1

    if-lez p1, :cond_0

    .line 101
    const-string/jumbo p1, "should refresh file name"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/centauri/comm/log/CTILogFileInfo;->updateFileName()V

    .line 103
    invoke-direct {p0}, Lcom/centauri/comm/log/processor/CTILogWriter;->openLogFile()V

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 125
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    :cond_0
    return-void
.end method

.method public write([B[B[B)V
    .locals 10

    .line 56
    const-string v0, "centauriComm<Log>"

    .line 0
    const-string/jumbo v1, "write map time: "

    .line 56
    :try_start_0
    array-length v2, p1

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/centauri/comm/log/processor/CTILogWriter;->refreshFileChannel(J)J

    move-result-wide v6

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    iget-object v4, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    array-length v8, p1

    array-length v9, p2

    add-int/2addr v8, v9

    array-length v9, p3

    add-int/2addr v8, v9

    int-to-long v8, v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    iget-object v6, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v6, p2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    iget-object p2, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    iget-object p1, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    iget-object p1, p0, Lcom/centauri/comm/log/processor/CTILogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sync time: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p1, Lcom/centauri/comm/log/CTILogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {p1}, Lcom/centauri/comm/log/util/CTILogFileUtil;->deleteOldFileToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 78
    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "cache log to file error: <%s>%s"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
