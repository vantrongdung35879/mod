.class public Lcom/tencent/tme/live/i2/b;
.super Ljava/lang/Object;


# static fields
.field public static final n:Lcom/tencent/tme/net/slf4j/Logger;


# instance fields
.field public final a:Lcom/tencent/tme/live/i2/a;

.field public final b:Lcom/tencent/tme/live/f2/j;

.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/b2/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/b2/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/b2/g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/tencent/tme/live/z1/b;

.field public g:Lcom/tencent/tme/live/z1/b;

.field public h:Lcom/tencent/tme/live/z1/b;

.field public final i:Lcom/tencent/tme/live/z1/b;

.field public j:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public k:Z

.field public l:Ljava/util/concurrent/locks/ReentrantLock;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/i2/b;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/i2/a;Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/i2/b;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/i2/b;->d:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/i2/b;->e:Ljava/util/Queue;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->i:Lcom/tencent/tme/live/z1/b;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->l:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iput-object p2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;)V
    .locals 3

    sget-object p1, Lcom/tencent/tme/live/i2/b$a;->a:[I

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->j:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p1}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} processing the NEED_WRAP state"

    invoke-interface {p1, v2, v0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1
    :cond_1
    throw v1

    .line 0
    :cond_2
    const-string p1, "Invalid Handshaking State"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->j:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while processing the Handshake for session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_3
    sget-object p1, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p1}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} processing the NEED_UNWRAP state"

    invoke-interface {p1, v2, v0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    :cond_5
    iget-object p1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tme/live/i2/b;->g()Ljavax/net/ssl/SSLEngineResult;

    throw v1

    :cond_7
    :goto_0
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 4
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-void

    :cond_8
    sget-object p1, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p1}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} processing the NEED_TASK state"

    invoke-interface {p1, v2, v0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_9
    throw v1

    .line 6
    :cond_a
    sget-object p1, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p1}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} processing the FINISHED state"

    invoke-interface {p1, v2, v0}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    sget-object p1, Lcom/tencent/tme/live/i2/a;->b:Lcom/tencent/tme/live/f2/c;

    throw v1
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Ljava/nio/ByteBuffer;)V
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/i2/b;->n:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/i2/b;->e()Z

    iget-object v1, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Processing the received message"

    invoke-interface {v0, v2, v1}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/z1/b;->a(Z)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/z1/b;->a(Ljava/nio/ByteBuffer;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/i2/b;->a(Lcom/tencent/tme/live/b2/c$a;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/i2/b;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result p1

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->g()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    :cond_3
    return-void
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;)Lcom/tencent/tme/live/c2/k;
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/i2/b;->k:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/i2/b;->b()Lcom/tencent/tme/live/z1/b;

    move-result-object v2

    new-instance v3, Lcom/tencent/tme/live/c2/g;

    iget-object v4, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v3, v4}, Lcom/tencent/tme/live/c2/g;-><init>(Lcom/tencent/tme/live/f2/j;)V

    iget-object v5, p0, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    new-instance v6, Lcom/tencent/tme/live/g2/a;

    .line 1
    invoke-direct {v6, v2, v3, v1}, Lcom/tencent/tme/live/g2/a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    .line 2
    invoke-virtual {v5, p1, v4, v6}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    .line 3
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/tme/live/i2/b;->k:Z

    return-object v3

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/tencent/tme/live/i2/b;->k:Z

    throw p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public b()Lcom/tencent/tme/live/z1/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->i:Lcom/tencent/tme/live/z1/b;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->r()Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/b2/g;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/b2/g;->d:Lcom/tencent/tme/live/b2/c$a;

    .line 2
    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v1, v2, v0}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/b2/g;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, v0, Lcom/tencent/tme/live/b2/g;->d:Lcom/tencent/tme/live/b2/c$a;

    .line 6
    iget-object v2, p0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/f2/h;->c:Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v2, v0}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tme/live/i2/b;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->g()V

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->g()V

    iput-object v1, p0, Lcom/tencent/tme/live/i2/b;->g:Lcom/tencent/tme/live/z1/b;

    :cond_1
    return-void
.end method

.method public final g()Ljavax/net/ssl/SSLEngineResult;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->h:Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/i2/b;->h:Lcom/tencent/tme/live/z1/b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/z1/b;->b(I)Lcom/tencent/tme/live/z1/b;

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->f:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/tme/live/i2/b;->h:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSLStatus <Processing Handshake; Status : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/i2/b;->j:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; , HandshakeComplete :false, >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
