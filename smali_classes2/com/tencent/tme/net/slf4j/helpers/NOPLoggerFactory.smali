.class public Lcom/tencent/tme/net/slf4j/helpers/NOPLoggerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/net/slf4j/ILoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lcom/tencent/tme/net/slf4j/Logger;
    .locals 0

    sget-object p1, Lcom/tencent/tme/net/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lcom/tencent/tme/net/slf4j/helpers/NOPLogger;

    return-object p1
.end method
