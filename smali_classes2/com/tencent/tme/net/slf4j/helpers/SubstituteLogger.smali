.class public Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/net/slf4j/Logger;


# instance fields
.field private volatile _delegate:Lcom/tencent/tme/net/slf4j/Logger;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public delegate()Lcom/tencent/tme/net/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->_delegate:Lcom/tencent/tme/net/slf4j/Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->_delegate:Lcom/tencent/tme/net/slf4j/Logger;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/tme/net/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lcom/tencent/tme/net/slf4j/helpers/NOPLogger;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;

    iget-object v2, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->isDebugEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->isErrorEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isInfoEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->isInfoEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isTraceEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->isTraceEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isWarnEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/net/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->isWarnEnabled(Lcom/tencent/tme/net/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public setDelegate(Lcom/tencent/tme/net/slf4j/Logger;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->_delegate:Lcom/tencent/tme/net/slf4j/Logger;

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Lcom/tencent/tme/net/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/net/slf4j/helpers/SubstituteLogger;->delegate()Lcom/tencent/tme/net/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/net/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
