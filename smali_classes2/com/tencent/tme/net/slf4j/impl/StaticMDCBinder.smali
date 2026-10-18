.class public Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;
.super Ljava/lang/Object;


# static fields
.field public static final SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;

    invoke-direct {v0}, Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;-><init>()V

    sput-object v0, Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;->SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This code should never make it into the jar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getSingleton()Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;->SINGLETON:Lcom/tencent/tme/net/slf4j/impl/StaticMDCBinder;

    return-object v0
.end method


# virtual methods
.method public getMDCA()Lcom/tencent/tme/net/slf4j/spi/MDCAdapter;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This code should never make it into the jar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMDCAdapterClassStr()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This code should never make it into the jar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
