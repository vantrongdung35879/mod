.class public Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;
.super Ljava/lang/Object;


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String;

.field private static final SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;

    invoke-direct {v0}, Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;-><init>()V

    sput-object v0, Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;

    const-string v0, "1.6.99"

    sput-object v0, Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSingleton()Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticLoggerBinder;

    return-object v0
.end method


# virtual methods
.method public getLoggerFactory()Lcom/tencent/tme/net/slf4j/ILoggerFactory;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This code should never make it into slf4j-api.jar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLoggerFactoryClassStr()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This code should never make it into slf4j-api.jar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
