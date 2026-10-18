.class public final Lcom/tencent/qimei/ag/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/tencent/qimei/ag/p;


# instance fields
.field public a:Lcom/tencent/qimei/ag/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/ag/q;

    invoke-direct {v0}, Lcom/tencent/qimei/ag/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    return-void
.end method

.method public static a()Lcom/tencent/qimei/ag/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/ag/p;->b:Lcom/tencent/qimei/ag/p;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/qimei/ag/p;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ag/p;->b:Lcom/tencent/qimei/ag/p;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qimei/ag/p;

    invoke-direct {v1}, Lcom/tencent/qimei/ag/p;-><init>()V

    sput-object v1, Lcom/tencent/qimei/ag/p;->b:Lcom/tencent/qimei/ag/p;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qimei/ag/p;->b:Lcom/tencent/qimei/ag/p;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;
    .locals 2

    .line 9
    const-class v0, Ljava/lang/String;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    invoke-virtual {v1, p1}, Lcom/tencent/qimei/ag/q;->a(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qimei/ag/p;->b(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "qmprishamem"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/v/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;)Z

    .line 7
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/tencent/qimei/v/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :try_start_2
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const/16 v5, 0x400

    int-to-long v10, v5

    const-wide/16 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v4, v0

    .line 16
    :goto_0
    invoke-static {v5}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    move-object v6, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_0

    goto :goto_2

    .line 17
    :cond_0
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    if-eqz v8, :cond_3

    if-le v8, v5, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    new-array v9, v8, [B

    .line 26
    invoke-virtual {v6, v9, v3, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v9, v2

    goto :goto_3

    :catch_3
    move-exception v8

    .line 29
    invoke-static {v8}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    const/16 v8, 0xc

    if-nez v9, :cond_4

    goto :goto_a

    .line 30
    :cond_4
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 31
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    .line 34
    :cond_5
    new-instance v9, Lcom/tencent/qimei/ag/q;

    invoke-direct {v9}, Lcom/tencent/qimei/ag/q;-><init>()V

    .line 37
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v10

    .line 39
    invoke-static {v10}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    move-object v11, v2

    :goto_4
    if-nez v11, :cond_6

    :goto_5
    move-object v9, v2

    goto :goto_9

    :cond_6
    const/4 v10, 0x1

    :goto_6
    if-ge v10, v8, :cond_8

    .line 45
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 46
    :try_start_5
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    nop

    move-object v12, v2

    :goto_7
    if-nez v12, :cond_7

    goto :goto_8

    .line 47
    :cond_7
    invoke-virtual {v9, v10, v12}, Lcom/tencent/qimei/ag/q;->a(ILjava/lang/String;)Z

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    :goto_9
    if-nez v9, :cond_9

    goto :goto_a

    .line 48
    :cond_9
    iget-object v10, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    invoke-virtual {v9, v10}, Lcom/tencent/qimei/ag/q;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 49
    iput-object v9, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    .line 50
    :cond_a
    :goto_a
    iget-object v9, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    invoke-virtual {v9, p1}, Lcom/tencent/qimei/ag/q;->a(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_11

    .line 54
    invoke-interface {p2}, Lcom/tencent/qimei/ag/r;->a()Ljava/lang/String;

    move-result-object v9

    .line 57
    iget-object p2, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    invoke-virtual {p2, p1, v9}, Lcom/tencent/qimei/ag/q;->a(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 58
    iget-object p1, p0, Lcom/tencent/qimei/ag/p;->a:Lcom/tencent/qimei/ag/q;

    .line 59
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :goto_b
    if-ge v1, v8, :cond_c

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    invoke-virtual {p1, v1}, Lcom/tencent/qimei/ag/q;->a(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_c

    .line 68
    :cond_b
    :try_start_6
    invoke-virtual {p2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_c

    :catch_6
    move-exception v10

    .line 70
    invoke-static {v10}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 74
    :cond_c
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    goto :goto_d

    :cond_e
    if-nez v7, :cond_f

    goto :goto_d

    .line 77
    :cond_f
    array-length p1, v2

    if-le p1, v5, :cond_10

    goto :goto_d

    .line 81
    :cond_10
    :try_start_7
    invoke-virtual {v6, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 83
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 84
    array-length p1, v2

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    if-eqz v0, :cond_12

    .line 88
    :try_start_8
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto :goto_e

    :catch_8
    move-exception p1

    goto :goto_f

    :cond_12
    :goto_e
    if-eqz v4, :cond_13

    .line 92
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_10

    .line 96
    :goto_f
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :cond_13
    :goto_10
    return-object v9
.end method
