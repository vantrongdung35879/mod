.class public Lcom/tencent/mna/z3;
.super Ljava/lang/Object;
.source "VivoLocalSocket.java"


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Landroid/net/LocalSocket;

.field private d:Lcom/tencent/mna/y;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/mna/z3;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/mna/z3;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/z3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/mna/z3;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/z3;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/mna/z3;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mna/z3;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/z3;->e:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/mna/z3;)Lcom/tencent/mna/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/z3;->d:Lcom/tencent/mna/y;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 54
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/mna/z3;->b:Z

    .line 55
    iput-boolean v0, p0, Lcom/tencent/mna/z3;->a:Z

    .line 57
    iget-object v2, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 59
    iget-object v2, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 60
    iget-object v2, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    const/4 v2, 0x0

    .line 61
    iput-object v2, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    return v0
.end method

.method public a(Lcom/tencent/mna/y;)Z
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/tencent/mna/z3;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    .line 8
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "netopt"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 10
    iget-object v2, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 11
    iput-object p1, p0, Lcom/tencent/mna/z3;->d:Lcom/tencent/mna/y;

    .line 12
    iput-boolean v1, p0, Lcom/tencent/mna/z3;->a:Z

    .line 13
    iget-object p1, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/z3;->e:Ljava/io/InputStream;

    .line 14
    iget-object p1, p0, Lcom/tencent/mna/z3;->c:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/z3;->f:Ljava/io/OutputStream;

    .line 16
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/mna/z3$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/z3$a;-><init>(Lcom/tencent/mna/z3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 38
    :catch_0
    const-string p1, "LocalSocket connect failed"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 39
    iget-boolean v0, p0, Lcom/tencent/mna/z3;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/z3;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 45
    array-length v0, p1

    .line 46
    iget-object v2, p0, Lcom/tencent/mna/z3;->f:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    iget-object p1, p0, Lcom/tencent/mna/z3;->f:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 53
    :catch_0
    const-string p1, "LocalSocket send failed"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return v1
.end method
