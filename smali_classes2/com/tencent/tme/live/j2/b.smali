.class public Lcom/tencent/tme/live/j2/b;
.super Lcom/tencent/tme/live/j2/c;


# static fields
.field public static final b:Lcom/tencent/tme/net/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/j2/b;

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/j2/b;->b:Lcom/tencent/tme/net/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/j2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/tme/live/j2/b;->b:Lcom/tencent/tme/net/slf4j/Logger;

    const-string v1, "Unexpected exception."

    invoke-interface {v0, v1, p1}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method
