.class public final Lcom/ihoc/mgpa/vendor/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/q;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/utils/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    const v2, 0x7a120

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v2, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v2, v1, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v3, v3, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x400

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    .line 1
    iput-boolean v4, v2, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    .line 2
    iget-object v3, v2, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v3, v2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v2, v2, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Lcom/ihoc/mgpa/vendor/utils/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    .line 4
    iput-boolean v0, v1, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    .line 5
    iget-object v2, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v2, v1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectFail(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    .line 8
    iput-boolean v0, v1, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    .line 9
    iget-object v0, v1, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectFail(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_4
    return-void

    .line 11
    :goto_4
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/p;->a:Lcom/ihoc/mgpa/vendor/utils/q;

    iget-object v1, v1, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_6
    throw v0
.end method
