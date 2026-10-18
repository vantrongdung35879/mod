.class public final Lcom/tencent/qimei/ac/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ac/f;

.field public final synthetic b:Lcom/tencent/qimei/ac/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ac/h;Lcom/tencent/qimei/ac/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ac/g;->b:Lcom/tencent/qimei/ac/h;

    iput-object p2, p0, Lcom/tencent/qimei/ac/g;->a:Lcom/tencent/qimei/ac/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ac/g;->b:Lcom/tencent/qimei/ac/h;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qimei/ac/g;->b:Lcom/tencent/qimei/ac/h;

    .line 6
    iget-object v2, v2, Lcom/tencent/qimei/ac/h;->b:Ljava/nio/channels/FileChannel;

    .line 7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/tencent/qimei/ac/g;->a:Lcom/tencent/qimei/ac/f;

    invoke-virtual {v2}, Lcom/tencent/qimei/ac/f;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 14
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catch_1
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :goto_1
    if-eqz v1, :cond_1

    .line 27
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    :catch_2
    :cond_1
    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
