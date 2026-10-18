.class public Lcom/tencent/tme/live/i2/a;
.super Lcom/tencent/tme/live/b2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/i2/a$b;,
        Lcom/tencent/tme/live/i2/a$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/tme/net/slf4j/Logger;

.field public static final b:Lcom/tencent/tme/live/f2/c;

.field public static final c:Lcom/tencent/tme/live/f2/c;

.field public static final d:Lcom/tencent/tme/live/f2/c;

.field public static final e:Lcom/tencent/tme/live/f2/c;

.field public static final f:Lcom/tencent/tme/live/i2/a$c;

.field public static final g:Lcom/tencent/tme/live/f2/c;

.field public static final h:Lcom/tencent/tme/live/f2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/tencent/tme/live/i2/a;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "session"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->b:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "disableOnce"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->c:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "useNotification"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->d:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "peerAddress"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->e:Lcom/tencent/tme/live/f2/c;

    .line 1
    new-instance v1, Lcom/tencent/tme/live/i2/a$c;

    .line 2
    const-string v2, "SESSION_UNSECURED"

    invoke-direct {v1, v2}, Lcom/tencent/tme/live/i2/a$c;-><init>(Ljava/lang/String;)V

    .line 3
    sput-object v1, Lcom/tencent/tme/live/i2/a;->f:Lcom/tencent/tme/live/i2/a$c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "nextFilter"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->g:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "handler"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v1

    instance-of v1, v1, Lcom/tencent/tme/live/e2/e;

    if-eqz v1, :cond_0

    const-string v1, "Session Server"

    goto :goto_0

    :cond_0
    const-string v1, "Session Client"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v1}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/i2/b;

    if-nez v1, :cond_1

    const-string p1, "(no sslEngine)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/f2/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    const-string p1, "(ssl...)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 4

    sget-object v0, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Writing Message : {}"

    invoke-interface {v0, v2, v1, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;

    move-result-object v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/f2/j;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object p2, v0, Lcom/tencent/tme/live/i2/b;->d:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/tme/live/b2/g;

    sget-object v2, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    iget-object v3, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/tencent/tme/live/i2/a;->c:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v1}, Lcom/tencent/tme/live/f2/j;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, v0, Lcom/tencent/tme/live/i2/b;->d:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/tme/live/b2/g;

    sget-object v2, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    iget-object v3, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/z1/b;

    .line 7
    iget-boolean v1, v0, Lcom/tencent/tme/live/i2/b;->k:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object p2, v0, Lcom/tencent/tme/live/i2/b;->d:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/tme/live/b2/g;

    sget-object v2, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    iget-object v3, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    .line 3
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    iget-object p2, v0, Lcom/tencent/tme/live/i2/b;->c:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/tme/live/b2/g;

    sget-object v2, Lcom/tencent/tme/live/f2/i;->h:Lcom/tencent/tme/live/f2/i;

    iget-object v3, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->c()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->f()V

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Message received : {}"

    invoke-interface {v0, v2, v1, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/f2/j;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object p2, v0, Lcom/tencent/tme/live/i2/b;->e:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/tme/live/b2/g;

    sget-object v2, Lcom/tencent/tme/live/f2/i;->d:Lcom/tencent/tme/live/f2/i;

    iget-object v3, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_1
    check-cast p3, Lcom/tencent/tme/live/z1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tme/live/i2/b;->a(Lcom/tencent/tme/live/b2/c$a;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/i2/b;)V

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/i2/a;->f(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/c2/k;

    :goto_0
    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, v0, Lcom/tencent/tme/live/i2/b;->e:Ljava/util/Queue;

    new-instance v2, Lcom/tencent/tme/live/b2/g;

    sget-object v3, Lcom/tencent/tme/live/f2/i;->d:Lcom/tencent/tme/live/f2/i;

    iget-object v4, v0, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v2, p1, v3, v4, p3}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->c()V

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "SSL handshake failed."

    invoke-direct {p3, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    throw p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 4

    instance-of v0, p3, Lcom/tencent/tme/live/g2/h;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lcom/tencent/tme/live/g2/h;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/g2/c;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/i2/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/g2/d;

    invoke-interface {v2}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/i2/a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Lcom/tencent/tme/live/g2/h;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v0, v1, v2, p3}, Lcom/tencent/tme/live/g2/h;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    :cond_5
    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/i2/b;)V
    .locals 4

    sget-object v0, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p2, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    .line 14
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/i2/a;->a(Lcom/tencent/tme/live/f2/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Processing the SSL Data "

    invoke-interface {v0, v2, v1}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/i2/b;->b(Lcom/tencent/tme/live/b2/c$a;)Lcom/tencent/tme/live/c2/k;

    .line 15
    iget-object v0, p2, Lcom/tencent/tme/live/i2/b;->h:Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/tencent/tme/live/i2/b;->h:Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->r()Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p2, Lcom/tencent/tme/live/i2/b;->e:Ljava/util/Queue;

    new-instance v2, Lcom/tencent/tme/live/b2/g;

    sget-object v3, Lcom/tencent/tme/live/f2/i;->d:Lcom/tencent/tme/live/f2/i;

    iget-object p2, p2, Lcom/tencent/tme/live/i2/b;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v2, p1, v3, p2, v0}, Lcom/tencent/tme/live/b2/g;-><init>(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/i;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/i2/b;

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/i2/b;->a:Lcom/tencent/tme/live/i2/a;

    if-ne v0, p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not managed by this filter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;

    move-result-object v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->d(Lcom/tencent/tme/live/f2/j;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->d(Lcom/tencent/tme/live/f2/j;)V

    throw v0
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    instance-of v0, p3, Lcom/tencent/tme/live/i2/a$b;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/tencent/tme/live/i2/a$b;

    .line 3
    iget-object p3, p3, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 4

    sget-object v0, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v0}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/i2/b;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/f2/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/i2/a;->f(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/c2/k;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/i2/a$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/tme/live/i2/a$a;-><init>(Lcom/tencent/tme/live/i2/a;Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V

    move-object v3, v1

    check-cast v3, Lcom/tencent/tme/live/c2/g;

    invoke-virtual {v3, v2}, Lcom/tencent/tme/live/c2/g;->c(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/k;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->c()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Lcom/tencent/tme/live/i2/b;->f()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    :cond_3
    throw v0
.end method

.method public c(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    .locals 1

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/i2/a;->b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;

    move-result-object p2

    sget-object p3, Lcom/tencent/tme/live/i2/a;->g:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p3}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/b2/c$a;

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/i2/a;->f(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/c2/k;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lcom/tencent/tme/live/i2/b;->c()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2
    invoke-interface {p1, p3}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/i2/b;->f()V

    throw p1
.end method

.method public c(Lcom/tencent/tme/live/f2/j;)Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/i2/a;->h:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/i2/b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    monitor-enter p1

    :try_start_0
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    .locals 2

    const-class v0, Lcom/tencent/tme/live/i2/a;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/e;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    const-string v1, "Adding the SSL Filter {} to the chain"

    invoke-interface {v0, v1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    sget-object p2, Lcom/tencent/tme/live/i2/a;->g:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/tencent/tme/live/i2/b;

    invoke-direct {p2, p0, p1}, Lcom/tencent/tme/live/i2/b;-><init>(Lcom/tencent/tme/live/i2/a;Lcom/tencent/tme/live/f2/j;)V

    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_0
    sget-object p1, Lcom/tencent/tme/live/i2/a;->a:Lcom/tencent/tme/net/slf4j/Logger;

    const-string p2, "Only one SSL filter is permitted in a chain."

    invoke-interface {p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/c2/k;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/i2/a;->b(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/i2/b;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSL session is shut down already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/tencent/tme/live/c2/g;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/k;

    move-result-object p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/tme/live/i2/b;->f()V

    throw p2
.end method
