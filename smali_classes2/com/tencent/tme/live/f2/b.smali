.class public abstract Lcom/tencent/tme/live/f2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/f2/l;


# instance fields
.field private idleTimeForBoth:I

.field private idleTimeForRead:I

.field private idleTimeForWrite:I

.field private maxReadBufferSize:I

.field private minReadBufferSize:I

.field private readBufferSize:I

.field private throughputCalculationInterval:I

.field private useReadOperation:Z

.field private writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/tencent/tme/live/f2/b;->minReadBufferSize:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/tencent/tme/live/f2/b;->readBufferSize:I

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/tencent/tme/live/f2/b;->maxReadBufferSize:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/tencent/tme/live/f2/b;->writeTimeout:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/tme/live/f2/b;->throughputCalculationInterval:I

    return-void
.end method


# virtual methods
.method public final getBothIdleTime()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getBothIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTime(Lcom/tencent/tme/live/f2/f;)I
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForBoth:I

    return p1

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForRead:I

    return p1

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForWrite:I

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown idle status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/f2/b;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getMaxReadBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->maxReadBufferSize:I

    return v0
.end method

.method public getMinReadBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->minReadBufferSize:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->readBufferSize:I

    return v0
.end method

.method public final getReaderIdleTime()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getReaderIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThroughputCalculationInterval()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->throughputCalculationInterval:I

    return v0
.end method

.method public getThroughputCalculationIntervalInMillis()J
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getWriteTimeout()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->writeTimeout:I

    return v0
.end method

.method public getWriteTimeoutInMillis()J
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/f2/b;->writeTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getWriterIdleTime()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getWriterIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUseReadOperation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/f2/b;->useReadOperation:Z

    return v0
.end method

.method public setAll(Lcom/tencent/tme/live/f2/l;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->setReadBufferSize(I)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->getMinReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->setMinReadBufferSize(I)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->setMaxReadBufferSize(I)V

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/l;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/l;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/l;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->getWriteTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->setWriteTimeout(I)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/b;->setUseReadOperation(Z)V

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/l;->getThroughputCalculationInterval()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/f2/b;->setThroughputCalculationInterval(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBothIdleTime(I)V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    return-void
.end method

.method public setIdleTime(Lcom/tencent/tme/live/f2/f;I)V
    .locals 2

    if-ltz p2, :cond_3

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForBoth:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForRead:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_2

    iput p2, p0, Lcom/tencent/tme/live/f2/b;->idleTimeForWrite:I

    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown idle status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal idle time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxReadBufferSize(I)V
    .locals 3

    const-string v0, "maxReadBufferSize: "

    if-lez p1, :cond_1

    iget v1, p0, Lcom/tencent/tme/live/f2/b;->minReadBufferSize:I

    if-lt p1, v1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/f2/b;->maxReadBufferSize:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: greater than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/tme/live/f2/b;->minReadBufferSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMinReadBufferSize(I)V
    .locals 3

    const-string v0, "minReadBufferSize: "

    if-lez p1, :cond_1

    iget v1, p0, Lcom/tencent/tme/live/f2/b;->maxReadBufferSize:I

    if-gt p1, v1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/f2/b;->minReadBufferSize:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: smaller than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/tme/live/f2/b;->maxReadBufferSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setReadBufferSize(I)V
    .locals 3

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/f2/b;->readBufferSize:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readBufferSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReaderIdleTime(I)V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    return-void
.end method

.method public setThroughputCalculationInterval(I)V
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/f2/b;->throughputCalculationInterval:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "throughputCalculationInterval: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseReadOperation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/f2/b;->useReadOperation:Z

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/tencent/tme/live/f2/b;->writeTimeout:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal write timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriterIdleTime(I)V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/f2/b;->setIdleTime(Lcom/tencent/tme/live/f2/f;I)V

    return-void
.end method
