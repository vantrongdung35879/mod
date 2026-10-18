.class public interface abstract Lcom/tencent/tme/live/e2/j;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addListener(Lcom/tencent/tme/live/e2/k;)V
.end method

.method public abstract broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Lcom/tencent/tme/live/c2/k;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract dispose(Z)V
.end method

.method public abstract getActivationTime()J
.end method

.method public abstract getFilterChain()Lcom/tencent/tme/live/b2/b;
.end method

.method public abstract getFilterChainBuilder()Lcom/tencent/tme/live/b2/f;
.end method

.method public abstract getHandler()Lcom/tencent/tme/live/e2/g;
.end method

.method public abstract getManagedSessionCount()I
.end method

.method public abstract getManagedSessions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/tencent/tme/live/f2/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduledWriteBytes()I
.end method

.method public abstract getScheduledWriteMessages()I
.end method

.method public abstract getSessionConfig()Lcom/tencent/tme/live/f2/l;
.end method

.method public abstract getSessionDataStructureFactory()Lcom/tencent/tme/live/f2/m;
.end method

.method public abstract getStatistics()Lcom/tencent/tme/live/e2/m;
.end method

.method public abstract getTransportMetadata()Lcom/tencent/tme/live/e2/o;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract isDisposing()Z
.end method

.method public abstract removeListener(Lcom/tencent/tme/live/e2/k;)V
.end method

.method public abstract setFilterChainBuilder(Lcom/tencent/tme/live/b2/f;)V
.end method

.method public abstract setHandler(Lcom/tencent/tme/live/e2/g;)V
.end method

.method public abstract setSessionDataStructureFactory(Lcom/tencent/tme/live/f2/m;)V
.end method
