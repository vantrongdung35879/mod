.class public abstract Lcom/tencent/tme/net/slf4j/helpers/MarkerIgnoringBase;
.super Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;


# static fields
.field private static final serialVersionUID:J = 0x7d83b1554e5d279bL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/net/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 0

    invoke-interface {p0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 0

    invoke-interface {p0}, Lcom/tencent/tme/net/slf4j/Logger;->isErrorEnabled()Z

    move-result p1

    return p1
.end method

.method public isInfoEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 0

    invoke-interface {p0}, Lcom/tencent/tme/net/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    return p1
.end method

.method public isTraceEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 0

    invoke-interface {p0}, Lcom/tencent/tme/net/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    return p1
.end method

.method public isWarnEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 0

    invoke-interface {p0}, Lcom/tencent/tme/net/slf4j/Logger;->isWarnEnabled()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/MarkerIgnoringBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
