.class public Lcom/tencent/tme/live/e2/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/g;


# static fields
.field public static final a:Lcom/tencent/tme/net/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/e2/h;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/e2/h;->a:Lcom/tencent/tme/net/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/f2/f;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p1, Lcom/tencent/tme/live/e2/h;->a:Lcom/tencent/tme/net/slf4j/Logger;

    invoke-interface {p1}, Lcom/tencent/tme/net/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXCEPTION, please implement "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".exceptionCaught() for proper handling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    return-void
.end method

.method public d(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    return-void
.end method
