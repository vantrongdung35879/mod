.class public final Lcom/tencent/qimei/ac/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ac/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ac/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ac/h;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 5
    iget-object v1, v1, Lcom/tencent/qimei/ac/h;->c:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v2, "ISO8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v2, "BEACONDEFAULTAES"

    invoke-static {v2}, Lcom/tencent/qimei/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    .line 12
    invoke-static {v1, v2, v3}, Lcom/tencent/qimei/s/a;->a([B[BI)[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 13
    monitor-exit v0

    return-void

    .line 17
    :cond_0
    array-length v2, v1

    const/16 v3, 0xa

    add-int/2addr v2, v3

    int-to-long v4, v2

    iget-object v2, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 18
    iget-wide v6, v2, Lcom/tencent/qimei/ac/h;->e:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 19
    array-length v4, v1

    add-int/2addr v4, v3

    int-to-long v9, v4

    .line 20
    iput-wide v9, v2, Lcom/tencent/qimei/ac/h;->e:J

    const-wide/32 v4, 0x200000

    cmp-long v6, v9, v4

    if-gtz v6, :cond_1

    .line 21
    iget-object v4, v2, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 22
    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    iget-object v5, v2, Lcom/tencent/qimei/ac/h;->b:Ljava/nio/channels/FileChannel;

    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file size to reach maximum!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 27
    iget-object v2, v2, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 28
    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v2, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 30
    iget-object v2, v2, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 31
    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    iget-object v2, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 33
    iget-object v2, v2, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 34
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    iget-object v1, p0, Lcom/tencent/qimei/ac/f;->a:Lcom/tencent/qimei/ac/h;

    .line 36
    iget-object v1, v1, Lcom/tencent/qimei/ac/h;->d:Ljava/nio/MappedByteBuffer;

    .line 37
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 38
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-void
.end method
