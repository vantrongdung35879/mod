.class public Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;
.super Ljava/io/OutputStream;
.source "CachedByteArrayStream.java"


# instance fields
.field private final BUFFER_SIZE:I

.field private final _bytes:[B

.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x200

    .line 22
    iput v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->BUFFER_SIZE:I

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    .line 32
    iput-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x200

    .line 22
    iput v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->BUFFER_SIZE:I

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    if-ltz p1, :cond_0

    .line 46
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkOffsetAndCount(III)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arrayLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", offset: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", count: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .locals 4

    .line 69
    iget v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    return-void

    :cond_0
    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 73
    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 74
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object p1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    iput-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 4

    monitor-enter p0

    .line 105
    :try_start_0
    iget v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    new-array v1, v0, [B

    .line 106
    iget-object v2, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->size()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 140
    iget-object v4, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 196
    :try_start_0
    iget v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    iget-object v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->expand(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 2

    monitor-enter p0

    .line 172
    :try_start_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 174
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->expand(I)V

    .line 177
    iget-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget p1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
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

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v1, p0, Lcom/centauri/comm/log/util/compressor/CachedByteArrayStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
