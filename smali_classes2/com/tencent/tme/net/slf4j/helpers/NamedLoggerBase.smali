.class abstract Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/net/slf4j/Logger;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68929dc81c4e557dL


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/net/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method
