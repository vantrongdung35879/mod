.class public final Lcom/tencent/qimei/ac/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/RandomAccessFile;

.field public final b:Ljava/nio/channels/FileChannel;

.field public c:Lorg/json/JSONObject;

.field public d:Ljava/nio/MappedByteBuffer;

.field public e:J

.field public f:Lcom/tencent/qimei/ac/f;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ac/h;->g:Ljava/lang/Object;

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/ac/h;->a:Ljava/io/RandomAccessFile;

    .line 56
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/ac/h;->b:Ljava/nio/channels/FileChannel;

    .line 57
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qimei/ac/h;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/qimei/ac/h;
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "beacon"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-nez p0, :cond_2

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "mkdir "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    sget-object v2, Lcom/tencent/qimei/ad/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[strict] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    :goto_1
    const-string p0, "Q_V3V1"

    .line 14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 17
    new-instance p0, Lcom/tencent/qimei/ac/h;

    invoke-direct {p0, v2}, Lcom/tencent/qimei/ac/h;-><init>(Ljava/io/File;)V

    .line 18
    iget-wide v2, p0, Lcom/tencent/qimei/ac/h;->e:J

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    .line 19
    iput-boolean v1, p0, Lcom/tencent/qimei/ac/h;->i:Z

    const-wide/16 v2, 0x4

    .line 20
    iput-wide v2, p0, Lcom/tencent/qimei/ac/h;->e:J

    .line 22
    :cond_3
    iget-object v4, p0, Lcom/tencent/qimei/ac/h;->b:Ljava/nio/channels/FileChannel;

    if-nez v4, :cond_4

    goto/16 :goto_6

    .line 26
    :cond_4
    :try_start_0
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v8, p0, Lcom/tencent/qimei/ac/h;->e:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    :goto_2
    iget-object v2, p0, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    if-nez v2, :cond_5

    goto/16 :goto_6

    .line 33
    :cond_5
    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 34
    iget-boolean v2, p0, Lcom/tencent/qimei/ac/h;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 35
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->f:Lcom/tencent/qimei/ac/f;

    if-nez v0, :cond_6

    .line 37
    new-instance v0, Lcom/tencent/qimei/ac/f;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/ac/f;-><init>(Lcom/tencent/qimei/ac/h;)V

    iput-object v0, p0, Lcom/tencent/qimei/ac/h;->f:Lcom/tencent/qimei/ac/f;

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->f:Lcom/tencent/qimei/ac/f;

    .line 68
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/ac/g;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qimei/ac/g;-><init>(Lcom/tencent/qimei/ac/h;Lcom/tencent/qimei/ac/f;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 69
    :cond_7
    iget-object v2, p0, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 70
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-le v4, v1, :cond_9

    const/high16 v1, 0x200000

    if-gt v4, v1, :cond_9

    .line 73
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/16 v5, 0xa

    if-le v1, v5, :cond_9

    .line 74
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/lit8 v6, v4, 0xa

    if-ge v1, v6, :cond_8

    goto :goto_3

    .line 77
    :cond_8
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    new-array v0, v4, [B

    .line 79
    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    goto :goto_6

    .line 80
    :cond_a
    :try_start_1
    const-string v1, "BEACONDEFAULTAES"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ac/h;->a([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_4

    .line 86
    :cond_b
    const-class v1, Lcom/tencent/qimei/v/c;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :try_start_2
    sget-object v2, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    .line 88
    invoke-virtual {v2}, Lcom/tencent/qimei/v/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qimei/ac/h;->a([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 94
    :cond_c
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/qimei/ac/h;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 95
    :goto_4
    new-instance v0, Ljava/lang/String;

    const-string v2, "ISO8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    :goto_5
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :goto_6
    move-object v0, p0

    :cond_d
    return-object v0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    .line 101
    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 102
    invoke-static {p0, p1, v0}, Lcom/tencent/qimei/s/a;->a([B[BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 103
    invoke-static {p0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iput-object v0, p0, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/tencent/qimei/ac/h;->h:Z

    .line 106
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    iget-object v0, p0, Lcom/tencent/qimei/ac/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/tencent/qimei/ac/h;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/h;->c()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    const-string v0, "Q_V3"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qimei/ac/h;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-object v1
.end method
