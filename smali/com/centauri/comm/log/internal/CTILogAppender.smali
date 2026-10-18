.class public Lcom/centauri/comm/log/internal/CTILogAppender;
.super Ljava/lang/Object;
.source "CTILogAppender.java"


# static fields
.field private static final AUTO_FLUSH_INTERVAL:I = 0x3a98

.field private static final BUFFER_BLOCK_SIZE:I = 0x25800

.field private static final POSITION_INIT:I = 0xc

.field private static instance:Lcom/centauri/comm/log/internal/CTILogAppender;

.field private static stopAutoFlush:Z


# instance fields
.field private EMPTY_BUFFER:[B

.field private FLAG_BEGIN:Ljava/lang/String;

.field private FLAG_END:Ljava/lang/String;

.field private final SPACE:Ljava/lang/String;

.field private final _bytes:[B

.field private autoFlushHandler:Landroid/os/Handler;

.field private autoFlushRunnable:Ljava/lang/Runnable;

.field private autoFlushThread:Landroid/os/HandlerThread;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private mCompressor:Lcom/centauri/comm/log/processor/CTILogCompressor;

.field private mEncryptor:Lcom/centauri/comm/log/processor/CTILogEncryptor;

.field private mWriter:Lcom/centauri/comm/log/processor/CTILogWriter;

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private volatile seq:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mCompressor:Lcom/centauri/comm/log/processor/CTILogCompressor;

    .line 31
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mEncryptor:Lcom/centauri/comm/log/processor/CTILogEncryptor;

    .line 32
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mWriter:Lcom/centauri/comm/log/processor/CTILogWriter;

    .line 34
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 35
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 36
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 38
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushThread:Landroid/os/HandlerThread;

    .line 39
    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/centauri/comm/log/internal/CTILogAppender$1;

    invoke-direct {v0, p0}, Lcom/centauri/comm/log/internal/CTILogAppender$1;-><init>(Lcom/centauri/comm/log/internal/CTILogAppender;)V

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc

    .line 62
    iput-wide v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->_bytes:[B

    .line 67
    const-string v0, " "

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->SPACE:Ljava/lang/String;

    const v0, 0x25800

    .line 68
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->EMPTY_BUFFER:[B

    .line 69
    const-string v0, "============mmap cache begin===========\r\n"

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->FLAG_BEGIN:Ljava/lang/String;

    .line 70
    const-string v0, "============mmap cache end=============\r\n"

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->FLAG_END:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LOG-FLUSH"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushThread:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/centauri/comm/log/internal/CTILogAppender;->stopAutoFlush:Z

    return v0
.end method

.method static synthetic access$100(Lcom/centauri/comm/log/internal/CTILogAppender;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/comm/log/internal/CTILogAppender;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private declared-synchronized checkAndFlushBuffer()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 208
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0xc

    if-gt v2, v1, :cond_1

    const-wide/16 v1, 0xc

    .line 214
    iput-wide v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :cond_1
    sub-int/2addr v2, v1

    .line 217
    :try_start_2
    invoke-direct {p0, v2}, Lcom/centauri/comm/log/internal/CTILogAppender;->flushBuffer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 219
    :try_start_3
    const-string v2, "centauriComm<Log>"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "check and flush buffer error: <%s>%s"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private createBufferProcessor()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/comm/CTILogInfo;->isCompressLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/centauri/comm/log/processor/CTILogCompressor;->create()Lcom/centauri/comm/log/processor/CTILogCompressor;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mCompressor:Lcom/centauri/comm/log/processor/CTILogCompressor;

    .line 126
    :cond_0
    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/comm/CTILogInfo;->isEncryptLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->create()Lcom/centauri/comm/log/processor/CTILogEncryptor;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mEncryptor:Lcom/centauri/comm/log/processor/CTILogEncryptor;

    .line 129
    :cond_1
    invoke-static {}, Lcom/centauri/comm/log/processor/CTILogWriter;->create()Lcom/centauri/comm/log/processor/CTILogWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mWriter:Lcom/centauri/comm/log/processor/CTILogWriter;

    return-void
.end method

.method private flushBuffer(I)V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x25800

    if-le p1, v1, :cond_1

    const p1, 0x25800

    .line 232
    :cond_1
    new-array v1, p1, [B

    const/16 v2, 0xc

    .line 234
    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "__flush and write data size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "centauriComm<Log>"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->FLAG_BEGIN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->process(Ljava/lang/String;)[B

    move-result-object v0

    .line 239
    iget-object v3, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->FLAG_END:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/centauri/comm/log/internal/CTILogAppender;->process(Ljava/lang/String;)[B

    move-result-object v3

    .line 240
    iget-object v4, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mWriter:Lcom/centauri/comm/log/processor/CTILogWriter;

    invoke-virtual {v4, v1, v0, v3}, Lcom/centauri/comm/log/processor/CTILogWriter;->write([B[B[B)V

    .line 243
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->EMPTY_BUFFER:[B

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 245
    iget-object p1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 246
    invoke-direct {p0}, Lcom/centauri/comm/log/internal/CTILogAppender;->resetPosAndSeq()V

    return-void
.end method

.method private initMmap()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/centauri/comm/log/internal/CTILogAppender;->checkAndFlushBuffer()V

    .line 117
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0x8

    const v2, 0x30da5

    invoke-virtual {v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 119
    invoke-direct {p0}, Lcom/centauri/comm/log/internal/CTILogAppender;->resetPosAndSeq()V

    return-void
.end method

.method public static open()Lcom/centauri/comm/log/internal/CTILogAppender;
    .locals 2

    .line 83
    const-string v0, "centauriComm<Log>"

    const-string v1, "open log appender"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;-><init>()V

    sput-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    .line 88
    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->createBufferProcessor()V

    .line 89
    sget-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->openMmapFile()V

    .line 90
    sget-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->initMmap()V

    .line 91
    sget-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-direct {v0}, Lcom/centauri/comm/log/internal/CTILogAppender;->startAutoFlush()V

    .line 92
    sget-object v0, Lcom/centauri/comm/log/internal/CTILogAppender;->instance:Lcom/centauri/comm/log/internal/CTILogAppender;

    return-object v0
.end method

.method private openMmapFile()V
    .locals 9

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/centauri/comm/log/CTILogFileInfo;->mmapName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 98
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 99
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x25800

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "open log mmap file error: <%s>%s"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "centauriComm<Log>"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private declared-synchronized process(Ljava/lang/String;)[B
    .locals 6

    monitor-enter p0

    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mCompressor:Lcom/centauri/comm/log/processor/CTILogCompressor;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/centauri/comm/log/processor/CTILogCompressor;->compress([B)[B

    move-result-object p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mEncryptor:Lcom/centauri/comm/log/processor/CTILogEncryptor;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, p1}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->encrypt([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    const-string v0, "centauriComm<Log>"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "process log error: <%s>%s"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->_bytes:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private resetPosAndSeq()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xc

    .line 253
    iput-wide v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    .line 254
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private startAutoFlush()V
    .locals 5

    .line 133
    const-string v0, "centauriComm<Log>"

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()Lcom/centauri/comm/CTILogInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/comm/CTILogInfo;->isAutoFlush()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    const-string/jumbo v1, "start auto flush"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->autoFlushRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start auto flush error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private stopAutoFlush()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    sput-boolean v0, Lcom/centauri/comm/log/internal/CTILogAppender;->stopAutoFlush:Z

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 4

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/centauri/comm/log/internal/CTILogAppender;->process(Ljava/lang/String;)[B

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/centauri/comm/log/internal/CTILogAppender;->updateMmap([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 157
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "append log error: <%s> %s"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public flushAndWrite()V
    .locals 5

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/centauri/comm/log/internal/CTILogAppender;->checkAndFlushBuffer()V

    .line 261
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mWriter:Lcom/centauri/comm/log/processor/CTILogWriter;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/centauri/comm/log/processor/CTILogWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 265
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "flush buffer and write error: <%s>%s"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "centauriComm<Log>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized updateMmap([B)V
    .locals 5

    monitor-enter p0

    .line 164
    :try_start_0
    array-length v0, p1

    .line 166
    iget-wide v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x19000

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/centauri/comm/log/internal/CTILogAppender;->checkAndFlushBuffer()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    iget-wide v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    .line 175
    iget-object p1, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iget-wide v0, p0, Lcom/centauri/comm/log/internal/CTILogAppender;->seq:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
