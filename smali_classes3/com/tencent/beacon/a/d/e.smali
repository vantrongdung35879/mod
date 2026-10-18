.class Lcom/tencent/beacon/a/d/e;
.super Ljava/lang/Object;
.source "PropertiesFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/d/g;->d()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/a/d/g;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/a/d/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v0}, Lcom/tencent/beacon/a/d/g;->a(Lcom/tencent/beacon/a/d/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v1}, Lcom/tencent/beacon/a/d/g;->b(Lcom/tencent/beacon/a/d/g;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "ISO8859-1"

    .line 3
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/tencent/beacon/a/d/g;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    array-length v2, v1

    const/16 v3, 0xa

    add-int/2addr v2, v3

    int-to-long v4, v2

    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->c(Lcom/tencent/beacon/a/d/g;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    array-length v4, v1

    add-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lcom/tencent/beacon/a/d/g;->a(Lcom/tencent/beacon/a/d/g;J)J

    .line 8
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->c(Lcom/tencent/beacon/a/d/g;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/tencent/beacon/a/d/g;->b(Lcom/tencent/beacon/a/d/g;J)V

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object v2, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v2}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v1, p0, Lcom/tencent/beacon/a/d/e;->a:Lcom/tencent/beacon/a/d/g;

    invoke-static {v1}, Lcom/tencent/beacon/a/d/g;->d(Lcom/tencent/beacon/a/d/g;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 13
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object v1

    const-string v2, "504"

    const-string v3, "[properties] write to file error!"

    .line 15
    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/beacon/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
