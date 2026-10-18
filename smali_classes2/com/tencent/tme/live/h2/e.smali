.class public Lcom/tencent/tme/live/h2/e;
.super Lcom/tencent/tme/live/b2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/h2/e$d;,
        Lcom/tencent/tme/live/h2/e$c;,
        Lcom/tencent/tme/live/h2/e$b;,
        Lcom/tencent/tme/live/h2/e$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/tencent/tme/net/slf4j/Logger;

.field public static final c:Lcom/tencent/tme/live/z1/b;

.field public static final d:Lcom/tencent/tme/live/f2/c;

.field public static final e:Lcom/tencent/tme/live/f2/c;

.field public static final f:Lcom/tencent/tme/live/f2/c;

.field public static final g:Lcom/tencent/tme/live/f2/c;


# instance fields
.field public final a:Lcom/tencent/tme/live/g/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/tencent/tme/live/h2/e;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/tencent/tme/live/h2/e;->b:Lcom/tencent/tme/net/slf4j/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    check-cast v2, Lcom/tencent/tme/live/z1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v3, Lcom/tencent/tme/live/z1/e$a;

    invoke-direct {v3, v2, v1}, Lcom/tencent/tme/live/z1/e$a;-><init>(Lcom/tencent/tme/live/z1/e;Ljava/nio/ByteBuffer;)V

    .line 4
    sput-object v3, Lcom/tencent/tme/live/h2/e;->c:Lcom/tencent/tme/live/z1/b;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "encoder"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/h2/e;->d:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "decoder"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/h2/e;->e:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "decoderOut"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/h2/e;->f:Lcom/tencent/tme/live/f2/c;

    new-instance v1, Lcom/tencent/tme/live/f2/c;

    const-string v2, "encoderOut"

    invoke-direct {v1, v0, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/h2/e;->g:Lcom/tencent/tme/live/f2/c;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/b2/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h2/e;->a:Lcom/tencent/tme/live/g/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 5

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/tme/live/z1/b;

    if-nez v1, :cond_8

    instance-of v1, v0, Lcom/tencent/tme/live/a2/b;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/h2/e;->a:Lcom/tencent/tme/live/g/a;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/g/a;->b:Lcom/tencent/tme/live/g/c;

    .line 5
    sget-object v2, Lcom/tencent/tme/live/h2/e;->g:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v2}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/h2/k;

    if-nez v3, :cond_1

    new-instance v3, Lcom/tencent/tme/live/h2/e$d;

    invoke-direct {v3, p2, p1, p3}, Lcom/tencent/tme/live/h2/e$d;-><init>(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/g2/d;)V

    invoke-interface {p2, v2, v3}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_7

    .line 6
    :try_start_0
    check-cast v0, Lcom/tencent/tme/live/z1/b;

    invoke-interface {v3, v0}, Lcom/tencent/tme/live/h2/k;->write(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/tencent/tme/live/h2/k;->flush()Lcom/tencent/tme/live/c2/k;

    .line 7
    check-cast v3, Lcom/tencent/tme/live/h2/b;

    .line 8
    iget-object v0, v3, Lcom/tencent/tme/live/h2/b;->a:Ljava/util/Queue;

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lcom/tencent/tme/live/z1/b;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->d()Ljava/net/SocketAddress;

    move-result-object v2

    new-instance v3, Lcom/tencent/tme/live/h2/e$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/tencent/tme/live/h2/e$a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    invoke-interface {p1, p2, v3}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    :cond_5
    :goto_1
    new-instance v0, Lcom/tencent/tme/live/h2/e$b;

    invoke-direct {v0, p3}, Lcom/tencent/tme/live/h2/e$b;-><init>(Lcom/tencent/tme/live/g2/d;)V

    invoke-interface {p1, p2, v0}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    instance-of p2, p1, Lcom/tencent/tme/live/h2/j;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/tencent/tme/live/h2/j;

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/tencent/tme/live/h2/j;

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/h2/j;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    throw p1

    :cond_7
    new-instance p1, Lcom/tencent/tme/live/h2/j;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The encoder is null for the session "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/h2/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/tencent/tme/live/h2/e;->b:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Processing a MESSAGE_RECEIVED for session {}"

    invoke-interface {v0, v2, v1}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p3, Lcom/tencent/tme/live/z1/b;

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p3, Lcom/tencent/tme/live/z1/b;

    iget-object v0, p0, Lcom/tencent/tme/live/h2/e;->a:Lcom/tencent/tme/live/g/a;

    .line 10
    iget-object v0, v0, Lcom/tencent/tme/live/g/a;->a:Lcom/tencent/tme/live/g/b;

    .line 11
    sget-object v1, Lcom/tencent/tme/live/h2/e;->f:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v1}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/h2/h;

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/tme/live/h2/e$c;

    invoke-direct {v2}, Lcom/tencent/tme/live/h2/e$c;-><init>()V

    invoke-interface {p2, v1, v2}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v1

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p2, p3, v2}, Lcom/tencent/tme/live/h2/c;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2, p1, p2}, Lcom/tencent/tme/live/h2/h;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    instance-of v3, v0, Lcom/tencent/tme/live/h2/g;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/tencent/tme/live/h2/g;

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/tencent/tme/live/h2/g;

    invoke-direct {v3, v0}, Lcom/tencent/tme/live/h2/g;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 13
    :goto_1
    iget-object v3, v0, Lcom/tencent/tme/live/h2/g;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 14
    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v3

    invoke-virtual {p3, v1}, Lcom/tencent/tme/live/z1/b;->e(I)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p3}, Lcom/tencent/tme/live/z1/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v4, v0, Lcom/tencent/tme/live/h2/g;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    iput-object v1, v0, Lcom/tencent/tme/live/h2/g;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p3, v3}, Lcom/tencent/tme/live/z1/b;->e(I)Lcom/tencent/tme/live/z1/b;

    goto :goto_2

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Hexdump cannot be set more than once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    :goto_2
    invoke-interface {v2, p1, p2}, Lcom/tencent/tme/live/h2/h;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {p1, p2, v0}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/tencent/tme/live/f2/j;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/tme/live/h2/e;->d:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/h2/i;

    const/16 v1, 0x29

    const-string v2, " ("

    const-string v3, "Failed to dispose: "

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tme/live/h2/i;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v4, Lcom/tencent/tme/live/h2/e;->b:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/h2/e;->e:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/h2/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Lcom/tencent/tme/live/h2/f;->a(Lcom/tencent/tme/live/f2/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v4, Lcom/tencent/tme/live/h2/e;->b:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 3
    :goto_1
    sget-object v0, Lcom/tencent/tme/live/h2/e;->f:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/h2/e;->a:Lcom/tencent/tme/live/g/a;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/g/a;->a:Lcom/tencent/tme/live/g/b;

    .line 4
    sget-object v1, Lcom/tencent/tme/live/h2/e;->f:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v1}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/h2/h;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/tme/live/h2/e$c;

    invoke-direct {v2}, Lcom/tencent/tme/live/h2/e$c;-><init>()V

    invoke-interface {p2, v1, v2}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/h2/e;->a(Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {v2, p1, p2}, Lcom/tencent/tme/live/h2/h;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/c$a;->d(Lcom/tencent/tme/live/f2/j;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Lcom/tencent/tme/live/h2/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/tme/live/h2/g;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/tme/live/h2/g;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/h2/g;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/h2/e;->a(Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {v2, p1, p2}, Lcom/tencent/tme/live/h2/h;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V

    throw v0
.end method

.method public b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    instance-of v0, p3, Lcom/tencent/tme/live/h2/e$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p3, Lcom/tencent/tme/live/h2/e$b;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/tencent/tme/live/h2/e$b;

    .line 1
    iget-object p3, p3, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    .line 2
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/b2/c$a;->b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    .locals 0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/h2/e;->a(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/tencent/tme/live/b2/e;->contains(Lcom/tencent/tme/live/b2/c;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
