.class public Lcom/centauri/comm/log/processor/CTILogCompressor;
.super Ljava/lang/Object;
.source "CTILogCompressor.java"


# instance fields
.field private gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

.field private out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    .line 16
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    return-void
.end method

.method public static create()Lcom/centauri/comm/log/processor/CTILogCompressor;
    .locals 3

    .line 19
    new-instance v0, Lcom/centauri/comm/log/processor/CTILogCompressor;

    invoke-direct {v0}, Lcom/centauri/comm/log/processor/CTILogCompressor;-><init>()V

    .line 21
    :try_start_0
    new-instance v1, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;-><init>(I)V

    iput-object v1, v0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    .line 22
    new-instance v1, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    iget-object v2, v0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    invoke-direct {v1, v2}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->close()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->close()V

    :cond_1
    return-void
.end method

.method public declared-synchronized compress([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->continued()V

    .line 41
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    invoke-virtual {v0}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->reset()V

    .line 44
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->writeHeader()V

    .line 46
    iget-object v0, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->write([BII)V

    .line 48
    iget-object p1, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {p1}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->finish()V

    .line 50
    iget-object p1, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->gziper:Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {p1}, Lcom/centauri/comm/log/util/compressor/GzipCompressorOutputStream;->flush()V

    .line 52
    iget-object p1, p0, Lcom/centauri/comm/log/processor/CTILogCompressor;->out:Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;

    invoke-virtual {p1}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
