.class public Lcom/tencent/tme/live/b2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/b2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/b2/a$b;,
        Lcom/tencent/tme/live/b2/a$d;,
        Lcom/tencent/tme/live/b2/a$c;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

.field public static final SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;


# instance fields
.field private final head:Lcom/tencent/tme/live/b2/a$b;

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/b2/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lcom/tencent/tme/live/f2/a;

.field private final tail:Lcom/tencent/tme/live/b2/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/c;

    const-string v1, "connectFuture"

    const-class v2, Lcom/tencent/tme/live/b2/a;

    invoke-direct {v0, v2, v1}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/b2/a;->SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;

    invoke-static {v2}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/b2/a;->LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/f2/a;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    new-instance p1, Lcom/tencent/tme/live/b2/a$b;

    new-instance v6, Lcom/tencent/tme/live/b2/a$c;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/tencent/tme/live/b2/a$c;-><init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$a;)V

    const-string v5, "head"

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/live/b2/a$b;-><init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;Lcom/tencent/tme/live/b2/a$a;)V

    iput-object p1, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    new-instance v8, Lcom/tencent/tme/live/b2/a$b;

    new-instance v6, Lcom/tencent/tme/live/b2/a$d;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/b2/a$d;-><init>(Lcom/tencent/tme/live/b2/a$a;)V

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/live/b2/a$b;-><init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;Lcom/tencent/tme/live/b2/a$a;)V

    iput-object v8, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    invoke-static {p1, v8}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;)Lcom/tencent/tme/live/b2/a$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1000(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->callNextSessionIdle(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->callNextExceptionCaught(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/b2/a;->callNextInputClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->callNextMessageReceived(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->callNextMessageSent(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->callPreviousFilterWrite(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/b2/a;->callPreviousFilterClose(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/b2/a;->callNextSessionCreated(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/b2/a;->callNextSessionOpened(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/b2/a;->callNextSessionClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method private callNextExceptionCaught(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/b2/a;->SESSION_CREATED_FUTURE:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p2, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/b;

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/tme/live/b2/a;->LOGGER:Lcom/tencent/tme/net/slf4j/Logger;

    const-string p3, "Unexpected exception from exceptionCaught handler."

    invoke-interface {p2, p3, p1}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->isClosing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    :cond_1
    invoke-interface {v0, p3}, Lcom/tencent/tme/live/c2/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextInputClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/b2/c;->d(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageReceived(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageSent(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/live/b2/c;->b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/b2/c;->b(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private callNextSessionCreated(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionIdle(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionOpened(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/b2/c;->e(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterClose(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/live/b2/c;->c(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterWrite(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Other filter is using the same name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOldName(Ljava/lang/String;)Lcom/tencent/tme/live/b2/a$b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/b2/a$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter not found:"

    invoke-static {v1, p1}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deregister(Lcom/tencent/tme/live/b2/a$b;)V
    .locals 6

    const-string v0, " in "

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    const/16 v2, 0x3a

    .line 2
    :try_start_0
    iget-object v3, p1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 3
    iget-object v4, p1, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 4
    invoke-interface {v1, p0, v3, v4}, Lcom/tencent/tme/live/b2/c;->c(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->deregister0(Lcom/tencent/tme/live/b2/a$b;)V

    .line 5
    :try_start_1
    iget-object v3, p1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 6
    iget-object v4, p1, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 7
    invoke-interface {v1, p0, v3, v4}, Lcom/tencent/tme/live/b2/c;->b(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lcom/tencent/tme/live/b2/h;

    const-string v5, "onPostRemove(): "

    invoke-static {v5}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8
    iget-object p1, p1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lcom/tencent/tme/live/b2/h;

    const-string v5, "onPreRemove(): "

    invoke-static {v5}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 10
    iget-object p1, p1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private deregister0(Lcom/tencent/tme/live/b2/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    iget-object v1, p1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 3
    iput-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 4
    iput-object v0, v1, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 5
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private register(Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 8

    const-string v0, " in "

    new-instance v7, Lcom/tencent/tme/live/b2/a$b;

    .line 1
    iget-object v4, p1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/tencent/tme/live/b2/a$b;-><init>(Lcom/tencent/tme/live/b2/a;Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V

    const/16 v1, 0x3a

    .line 3
    :try_start_0
    iget-object v2, v7, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 4
    invoke-interface {p3, p0, p2, v2}, Lcom/tencent/tme/live/b2/c;->d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    iget-object v2, p1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 6
    iput-object v7, v2, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 7
    iput-object v7, p1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 8
    iget-object p1, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_1
    iget-object p1, v7, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 10
    invoke-interface {p3, p0, p2, p1}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, v7}, Lcom/tencent/tme/live/b2/a;->deregister0(Lcom/tencent/tme/live/b2/a$b;)V

    new-instance v2, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostAdd(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    new-instance v2, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPreAdd(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkOldName(Ljava/lang/String;)Lcom/tencent/tme/live/b2/a$b;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/b2/a;->checkAddable(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->register(Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkOldName(Ljava/lang/String;)Lcom/tencent/tme/live/b2/a$b;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/b2/a;->checkAddable(Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/b2/a;->register(Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized addFirst(Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkAddable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/live/b2/a;->register(Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized addLast(Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkAddable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tme/live/b2/a;->register(Lcom/tencent/tme/live/b2/a$b;Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/b2/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Lcom/tencent/tme/live/b2/a$b;

    invoke-direct {p0, v2}, Lcom/tencent/tme/live/b2/a;->deregister(Lcom/tencent/tme/live/b2/a$b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/tencent/tme/live/b2/h;

    const-string v3, "clear(): "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/tencent/tme/live/b2/e$a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public contains(Lcom/tencent/tme/live/b2/c;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/String;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/b2/a;->callNextExceptionCaught(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireFilterClose()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/b2/a;->callPreviousFilterClose(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/b2/a;->callPreviousFilterWrite(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    return-void
.end method

.method public fireInputClosed()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/b2/a;->callNextInputClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    move-object v1, p1

    check-cast v1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/tme/live/f2/a;->increaseReadBytes(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/b2/a;->callNextMessageReceived(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    return-void
.end method

.method public fireMessageSent(Lcom/tencent/tme/live/g2/d;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/k;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    invoke-interface {p1}, Lcom/tencent/tme/live/g2/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/b2/a;->callNextMessageSent(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    :cond_0
    return-void
.end method

.method public fireSessionClosed()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/f2/a;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/b2/a;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/b2/a;->callNextSessionClosed(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public fireSessionCreated()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/b2/a;->callNextSessionCreated(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/tme/live/f2/a;->increaseIdleCount(Lcom/tencent/tme/live/f2/f;J)V

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tme/live/b2/a;->callNextSessionIdle(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V

    return-void
.end method

.method public fireSessionOpened()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/b2/a;->callNextSessionOpened(Lcom/tencent/tme/live/b2/e$a;Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public get(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)",
            "Lcom/tencent/tme/live/b2/c;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/tencent/tme/live/b2/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/String;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->b()Lcom/tencent/tme/live/b2/c;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/b2/e$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    :goto_0
    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    iget-object v2, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/b2/e$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    :goto_0
    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->a:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    iget-object v2, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEntry(Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/e$a;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    if-ne v1, p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)",
            "Lcom/tencent/tme/live/b2/e$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/String;)Lcom/tencent/tme/live/b2/e$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/b2/e$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getNextFilter(Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/c$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)",
            "Lcom/tencent/tme/live/b2/c$a;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/String;)Lcom/tencent/tme/live/b2/c$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/b2/a;->getEntry(Ljava/lang/String;)Lcom/tencent/tme/live/b2/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/tencent/tme/live/b2/e$a;->a()Lcom/tencent/tme/live/b2/c$a;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lcom/tencent/tme/live/f2/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->session:Lcom/tencent/tme/live/f2/a;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)",
            "Lcom/tencent/tme/live/b2/c;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 6
    invoke-direct {p0, v0}, Lcom/tencent/tme/live/b2/a;->deregister(Lcom/tencent/tme/live/b2/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter not found: "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lcom/tencent/tme/live/b2/c;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkOldName(Ljava/lang/String;)Lcom/tencent/tme/live/b2/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->deregister(Lcom/tencent/tme/live/b2/a$b;)V

    .line 9
    iget-object p1, p1, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/tencent/tme/live/b2/c;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 10
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    if-ne v1, p1, :cond_0

    .line 13
    invoke-direct {p0, v0}, Lcom/tencent/tme/live/b2/a;->deregister(Lcom/tencent/tme/live/b2/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter not found: "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;",
            "Lcom/tencent/tme/live/b2/c;",
            ")",
            "Lcom/tencent/tme/live/b2/c;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 6
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3a

    .line 7
    :try_start_1
    iget-object v3, v0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 8
    invoke-interface {p2, p0, v1, v3}, Lcom/tencent/tme/live/b2/c;->d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, p2}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object v3, v0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 10
    invoke-interface {p2, p0, v1, v3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception v3

    :try_start_4
    invoke-static {v0, p1}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V

    new-instance p1, Lcom/tencent/tme/live/b2/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_2
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto/16 :goto_0

    .line 12
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter not found: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)Lcom/tencent/tme/live/b2/c;
    .locals 6

    const-string v0, "onPostAdd(): "

    const-string v1, "onPreAdd(): "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/b2/a;->checkOldName(Ljava/lang/String;)Lcom/tencent/tme/live/b2/a$b;

    move-result-object v2

    .line 13
    iget-object v3, v2, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x3a

    .line 14
    :try_start_1
    iget-object v5, v2, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 15
    invoke-interface {p2, p0, p1, v5}, Lcom/tencent/tme/live/b2/c;->d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, p2}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    iget-object v1, v2, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 17
    invoke-interface {p2, p0, p1, v1}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {v2, v3}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V

    new-instance v2, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized replace(Lcom/tencent/tme/live/b2/c;Lcom/tencent/tme/live/b2/c;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    .line 18
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v0, v1, :cond_3

    .line 20
    iget-object v1, v0, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    if-ne v1, p1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3a

    .line 22
    :try_start_1
    iget-object v3, v0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 23
    invoke-interface {p2, p0, v1, v3}, Lcom/tencent/tme/live/b2/c;->d(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, p2}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    iget-object v3, v0, Lcom/tencent/tme/live/b2/a$b;->e:Lcom/tencent/tme/live/b2/c$a;

    .line 25
    invoke-interface {p2, p0, v1, v3}, Lcom/tencent/tme/live/b2/c;->a(Lcom/tencent/tme/live/b2/e;Ljava/lang/String;Lcom/tencent/tme/live/b2/c$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    invoke-static {v0, p1}, Lcom/tencent/tme/live/b2/a$b;->a(Lcom/tencent/tme/live/b2/a$b;Lcom/tencent/tme/live/b2/c;)V

    new-instance p1, Lcom/tencent/tme/live/b2/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/tencent/tme/live/b2/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/b2/a;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/tencent/tme/live/b2/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 26
    :cond_2
    iget-object v0, v0, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    goto/16 :goto_0

    .line 27
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter not found: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/b2/a;->head:Lcom/tencent/tme/live/b2/a$b;

    const/4 v2, 0x1

    .line 1
    :goto_0
    iget-object v1, v1, Lcom/tencent/tme/live/b2/a$b;->b:Lcom/tencent/tme/live/b2/a$b;

    .line 2
    iget-object v3, p0, Lcom/tencent/tme/live/b2/a;->tail:Lcom/tencent/tme/live/b2/a$b;

    if-eq v1, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v3, v1, Lcom/tencent/tme/live/b2/a$b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, v1, Lcom/tencent/tme/live/b2/a$b;->d:Lcom/tencent/tme/live/b2/c;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
