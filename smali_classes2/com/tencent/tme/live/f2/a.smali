.class public abstract Lcom/tencent/tme/live/f2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/f2/j;


# static fields
.field public static final CLOSE_REQUEST:Lcom/tencent/tme/live/g2/d;

.field public static final MESSAGE_SENT_REQUEST:Lcom/tencent/tme/live/g2/d;

.field private static final READY_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

.field private static final SCHEDULED_COUNTER_RESETTER:Lcom/tencent/tme/live/c2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c2/i<",
            "Lcom/tencent/tme/live/c2/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAITING_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private attributes:Lcom/tencent/tme/live/f2/k;

.field private final closeFuture:Lcom/tencent/tme/live/c2/a;

.field private volatile closing:Z

.field public config:Lcom/tencent/tme/live/f2/l;

.field private final creationTime:J

.field private currentWriteRequest:Lcom/tencent/tme/live/g2/d;

.field private deferDecreaseReadBuffer:Z

.field private final handler:Lcom/tencent/tme/live/e2/g;

.field private idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lastIdleTimeForBoth:J

.field private lastIdleTimeForRead:J

.field private lastIdleTimeForWrite:J

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private final lock:Ljava/lang/Object;

.field private readBytes:J

.field private readBytesThroughput:D

.field private readMessages:J

.field private readMessagesThroughput:D

.field private readSuspended:Z

.field private final scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final service:Lcom/tencent/tme/live/e2/j;

.field private sessionId:J

.field private writeRequestQueue:Lcom/tencent/tme/live/g2/e;

.field private writeSuspended:Z

.field private writtenBytes:J

.field private writtenBytesThroughput:D

.field private writtenMessages:J

.field private writtenMessagesThroughput:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/f2/c;

    const-string v1, "readyReadFutures"

    const-class v2, Lcom/tencent/tme/live/f2/a;

    invoke-direct {v0, v2, v1}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/f2/a;->READY_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

    new-instance v0, Lcom/tencent/tme/live/f2/c;

    const-string v1, "waitingReadFutures"

    invoke-direct {v0, v2, v1}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/f2/a;->WAITING_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

    new-instance v0, Lcom/tencent/tme/live/f2/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/f2/a$a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/f2/a;->SCHEDULED_COUNTER_RESETTER:Lcom/tencent/tme/live/c2/i;

    new-instance v0, Lcom/tencent/tme/live/g2/a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/tme/live/g2/a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    .line 2
    sput-object v0, Lcom/tencent/tme/live/f2/a;->CLOSE_REQUEST:Lcom/tencent/tme/live/g2/d;

    new-instance v0, Lcom/tencent/tme/live/g2/a;

    sget-object v1, Lcom/tencent/tme/live/g2/a;->d:[B

    .line 3
    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/tme/live/g2/a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    .line 4
    sput-object v0, Lcom/tencent/tme/live/f2/a;->MESSAGE_SENT_REQUEST:Lcom/tencent/tme/live/g2/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/tencent/tme/live/f2/a;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/e2/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/a;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/tme/live/c2/c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/c2/c;-><init>(Lcom/tencent/tme/live/f2/j;)V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tme/live/f2/a;->readSuspended:Z

    iput-boolean v1, p0, Lcom/tencent/tme/live/f2/a;->writeSuspended:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/f2/a;->deferDecreaseReadBuffer:Z

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->service:Lcom/tencent/tme/live/e2/j;

    invoke-interface {p1}, Lcom/tencent/tme/live/e2/j;->getHandler()Lcom/tencent/tme/live/e2/g;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->handler:Lcom/tencent/tme/live/e2/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->creationTime:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastThroughputCalculationTime:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastReadTime:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastWriteTime:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForBoth:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForRead:J

    iput-wide v1, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForWrite:J

    sget-object p1, Lcom/tencent/tme/live/f2/a;->SCHEDULED_COUNTER_RESETTER:Lcom/tencent/tme/live/c2/i;

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/c2/a;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/a;

    sget-object p1, Lcom/tencent/tme/live/f2/a;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/f2/a;->sessionId:J

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tme/live/f2/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/f2/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/tencent/tme/live/f2/a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/f2/a;->readBytesThroughput:D

    return-wide p1
.end method

.method public static synthetic access$302(Lcom/tencent/tme/live/f2/a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/f2/a;->readMessagesThroughput:D

    return-wide p1
.end method

.method public static synthetic access$402(Lcom/tencent/tme/live/f2/a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/f2/a;->writtenBytesThroughput:D

    return-wide p1
.end method

.method public static synthetic access$502(Lcom/tencent/tme/live/f2/a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/f2/a;->writtenMessagesThroughput:D

    return-wide p1
.end method

.method private decreaseScheduledWriteMessages()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/e2/m;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/tencent/tme/live/e2/m;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private getIdAsString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xa

    const-string v3, "0x00000000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "0x"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReadyReadFutures()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/c2/j;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/tme/live/f2/a;->READY_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/f2/a;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/e2/d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e2/d;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWaitingReadFutures()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/c2/j;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/tme/live/f2/a;->WAITING_READ_FUTURES_KEY:Lcom/tencent/tme/live/f2/c;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/f2/a;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private newReadFuture()Lcom/tencent/tme/live/c2/j;
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/c2/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/c2/f;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/c2/f;-><init>(Lcom/tencent/tme/live/f2/j;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static notifyIdleSession(Lcom/tencent/tme/live/f2/j;J)V
    .locals 9

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    sget-object v6, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-interface {v0, v6}, Lcom/tencent/tme/live/f2/l;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v4

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getLastIoTime()J

    move-result-wide v0

    invoke-interface {p0, v6}, Lcom/tencent/tme/live/f2/j;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v8}, Lcom/tencent/tme/live/f2/a;->notifyIdleSession0(Lcom/tencent/tme/live/f2/j;JJLcom/tencent/tme/live/f2/f;J)V

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    sget-object v6, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-interface {v0, v6}, Lcom/tencent/tme/live/f2/l;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v4

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getLastReadTime()J

    move-result-wide v0

    invoke-interface {p0, v6}, Lcom/tencent/tme/live/f2/j;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v8}, Lcom/tencent/tme/live/f2/a;->notifyIdleSession0(Lcom/tencent/tme/live/f2/j;JJLcom/tencent/tme/live/f2/f;J)V

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    sget-object v6, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-interface {v0, v6}, Lcom/tencent/tme/live/f2/l;->getIdleTimeInMillis(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v4

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getLastWriteTime()J

    move-result-wide v0

    invoke-interface {p0, v6}, Lcom/tencent/tme/live/f2/j;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v8}, Lcom/tencent/tme/live/f2/a;->notifyIdleSession0(Lcom/tencent/tme/live/f2/j;JJLcom/tencent/tme/live/f2/f;J)V

    invoke-static {p0, p1, p2}, Lcom/tencent/tme/live/f2/a;->notifyWriteTimeout(Lcom/tencent/tme/live/f2/j;J)V

    return-void
.end method

.method private static notifyIdleSession0(Lcom/tencent/tme/live/f2/j;JJLcom/tencent/tme/live/f2/f;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    cmp-long v2, p6, v0

    if-eqz v2, :cond_0

    sub-long/2addr p1, p6

    cmp-long p6, p1, p3

    if-ltz p6, :cond_0

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p0

    invoke-interface {p0, p5}, Lcom/tencent/tme/live/b2/e;->fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V

    :cond_0
    return-void
.end method

.method public static notifyIdleness(Ljava/util/Iterator;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/tencent/tme/live/f2/j;",
            ">;J)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/f2/j;

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/j;->getCloseFuture()Lcom/tencent/tme/live/c2/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/c2/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/tencent/tme/live/f2/a;->notifyIdleSession(Lcom/tencent/tme/live/f2/j;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static notifyWriteTimeout(Lcom/tencent/tme/live/f2/j;J)V
    .locals 5

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getWriteTimeoutInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getLastWriteTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getCurrentWriteRequest()Lcom/tencent/tme/live/g2/d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/tencent/tme/live/f2/j;->setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V

    new-instance p2, Lcom/tencent/tme/live/g2/g;

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/g2/g;-><init>(Lcom/tencent/tme/live/g2/d;)V

    invoke-interface {p1}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/c2/k;->a(Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()Lcom/tencent/tme/live/c2/a;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;

    move-result-object v0

    return-object v0
.end method

.method public final close(Z)Lcom/tencent/tme/live/c2/a;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->closeNow()Lcom/tencent/tme/live/c2/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->closeOnFlush()Lcom/tencent/tme/live/c2/a;

    move-result-object p1

    return-object p1
.end method

.method public final closeNow()Lcom/tencent/tme/live/c2/a;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/f2/a;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/tme/live/b2/e;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/b2/e;->fireFilterClose()V

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final closeOnFlush()Lcom/tencent/tme/live/c2/a;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/f2/a;->CLOSE_REQUEST:Lcom/tencent/tme/live/g2/d;

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->flush(Lcom/tencent/tme/live/f2/j;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    return-object v0
.end method

.method public final containsAttribute(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final decreaseReadBufferSize()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->deferDecreaseReadBuffer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->deferDecreaseReadBuffer:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/l;->getMinReadBufferSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v1

    ushr-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/f2/l;->setReadBufferSize(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/tencent/tme/live/f2/a;->deferDecreaseReadBuffer:Z

    return-void
.end method

.method public final decreaseScheduledBytesAndMessages(Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/f2/a;->increaseScheduledWriteBytes(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->decreaseScheduledWriteMessages()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->writeRequestQueue:Lcom/tencent/tme/live/g2/e;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->writeRequestQueue:Lcom/tencent/tme/live/g2/e;

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->writeRequestQueue:Lcom/tencent/tme/live/g2/e;

    check-cast v0, Lcom/tencent/tme/live/f2/d$b;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/f2/d$b;->a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/k;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAttachment()Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/f2/a;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAttributeMap()Lcom/tencent/tme/live/f2/k;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    return-object v0
.end method

.method public final getBothIdleCount()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getIdleCount(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getCloseFuture()Lcom/tencent/tme/live/c2/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    return-object v0
.end method

.method public getConfig()Lcom/tencent/tme/live/f2/l;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->config:Lcom/tencent/tme/live/f2/l;

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->creationTime:J

    return-wide v0
.end method

.method public final getCurrentWriteMessage()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getCurrentWriteRequest()Lcom/tencent/tme/live/g2/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentWriteRequest()Lcom/tencent/tme/live/g2/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->currentWriteRequest:Lcom/tencent/tme/live/g2/d;

    return-object v0
.end method

.method public getHandler()Lcom/tencent/tme/live/e2/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->handler:Lcom/tencent/tme/live/e2/g;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->sessionId:J

    return-wide v0
.end method

.method public final getIdleCount(Lcom/tencent/tme/live/f2/f;)I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/f2/l;->getIdleTime(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    :cond_5
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

.method public final getLastBothIdleTime()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForBoth:J

    return-wide v0

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForRead:J

    return-wide v0

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForWrite:J

    return-wide v0

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

.method public final getLastIoTime()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastReadTime:J

    iget-wide v2, p0, Lcom/tencent/tme/live/f2/a;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastReadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastReadTime:J

    return-wide v0
.end method

.method public final getLastReaderIdleTime()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->lastWriteTime:J

    return-wide v0
.end method

.method public final getLastWriterIdleTime()J
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getLastIdleTime(Lcom/tencent/tme/live/f2/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getProcessor()Lcom/tencent/tme/live/e2/i;
.end method

.method public final getReadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readBytes:J

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readBytesThroughput:D

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readMessages:J

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readMessagesThroughput:D

    return-wide v0
.end method

.method public final getReaderIdleCount()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getIdleCount(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getScheduledWriteBytes()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getService()Lcom/tencent/tme/live/e2/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->service:Lcom/tencent/tme/live/e2/j;

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/SocketAddress;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/tme/live/e2/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/e2/e;

    invoke-interface {v0}, Lcom/tencent/tme/live/e2/e;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getWriteRequestQueue()Lcom/tencent/tme/live/g2/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->writeRequestQueue:Lcom/tencent/tme/live/g2/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getWriterIdleCount()I
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->getIdleCount(Lcom/tencent/tme/live/f2/f;)I

    move-result v0

    return v0
.end method

.method public final getWrittenBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenBytes:J

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenBytesThroughput:D

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenMessages:J

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenMessagesThroughput:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final increaseIdleCount(Lcom/tencent/tme/live/f2/f;J)V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-wide p2, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForBoth:J

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-wide p2, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForRead:J

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-wide p2, p0, Lcom/tencent/tme/live/f2/a;->lastIdleTimeForWrite:J

    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown idle status: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final increaseReadBufferSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->getReadBufferSize()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/tme/live/f2/l;->setReadBufferSize(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/tme/live/f2/l;->getMaxReadBufferSize()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/tencent/tme/live/f2/l;->setReadBufferSize(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/tme/live/f2/a;->deferDecreaseReadBuffer:Z

    return-void
.end method

.method public final increaseReadBytes(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readBytes:J

    iput-wide p3, p0, Lcom/tencent/tme/live/f2/a;->lastReadTime:J

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, v0, Lcom/tencent/tme/live/e2/m;->e:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/tencent/tme/live/e2/m;->e:J

    iput-wide p3, v0, Lcom/tencent/tme/live/e2/m;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final increaseReadMessages(J)V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/f2/a;->readMessages:J

    iput-wide p1, p0, Lcom/tencent/tme/live/f2/a;->lastReadTime:J

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v4, v0, Lcom/tencent/tme/live/e2/m;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/tencent/tme/live/e2/m;->g:J

    iput-wide p1, v0, Lcom/tencent/tme/live/e2/m;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/e2/m;->p:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/tencent/tme/live/e2/m;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, v0, Lcom/tencent/tme/live/e2/m;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/e2/m;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 6

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenBytes:J

    iput-wide p2, p0, Lcom/tencent/tme/live/f2/a;->lastWriteTime:J

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/tme/live/e2/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v4, v0, Lcom/tencent/tme/live/e2/m;->f:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/tencent/tme/live/e2/m;->f:J

    iput-wide p2, v0, Lcom/tencent/tme/live/e2/m;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, v0, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_0
    neg-int p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/f2/a;->increaseScheduledWriteBytes(I)V

    return-void
.end method

.method public final increaseWrittenMessages(Lcom/tencent/tme/live/g2/d;J)V
    .locals 4

    invoke-interface {p1}, Lcom/tencent/tme/live/g2/d;->c()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/f2/a;->writtenMessages:J

    iput-wide p2, p0, Lcom/tencent/tme/live/f2/a;->lastWriteTime:J

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/tme/live/e2/c;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/e2/c;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/c;->getStatistics()Lcom/tencent/tme/live/e2/m;

    move-result-object p1

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v0, p1, Lcom/tencent/tme/live/e2/m;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/tme/live/e2/m;->h:J

    iput-wide p2, p1, Lcom/tencent/tme/live/e2/m;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p1, p1, Lcom/tencent/tme/live/e2/m;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->decreaseScheduledWriteMessages()V

    return-void
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isBothIdle()Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->isIdle(Lcom/tencent/tme/live/f2/f;)Z

    move-result v0

    return v0
.end method

.method public final isClosing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->closing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->closeFuture:Lcom/tencent/tme/live/c2/a;

    invoke-interface {v0}, Lcom/tencent/tme/live/c2/a;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isIdle(Lcom/tencent/tme/live/f2/f;)Z
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/f2/a;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_5
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

.method public isReadSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->readSuspended:Z

    return v0
.end method

.method public final isReaderIdle()Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->isIdle(Lcom/tencent/tme/live/f2/f;)Z

    move-result v0

    return v0
.end method

.method public final isScheduledForFlush()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSecured()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWriteSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->writeSuspended:Z

    return v0
.end method

.method public final isWriterIdle()Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/f2/a;->isIdle(Lcom/tencent/tme/live/f2/f;)Z

    move-result v0

    return v0
.end method

.method public final offerClosedReadFuture()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->newReadFuture()Lcom/tencent/tme/live/c2/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/c2/j;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final offerFailedReadFuture(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->newReadFuture()Lcom/tencent/tme/live/c2/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/c2/j;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final offerReadFuture(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->newReadFuture()Lcom/tencent/tme/live/c2/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/c2/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final read()Lcom/tencent/tme/live/c2/j;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tme/live/f2/l;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/c2/j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/tme/live/c2/j;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tme/live/c2/f;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/c2/f;-><init>(Lcom/tencent/tme/live/f2/j;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "useReadOperation is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final resumeRead()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->readSuspended:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resumeWrite()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->writeSuspended:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final scheduledForFlush()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tme/live/f2/a;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/f2/a;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/f2/a;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    check-cast v0, Lcom/tencent/tme/live/f2/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/f2/d$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAttributeMap(Lcom/tencent/tme/live/f2/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->attributes:Lcom/tencent/tme/live/f2/k;

    return-void
.end method

.method public final setCurrentWriteRequest(Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->currentWriteRequest:Lcom/tencent/tme/live/g2/d;

    return-void
.end method

.method public final setScheduledForFlush(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setScheduledWriteBytes(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setScheduledWriteMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final setWriteRequestQueue(Lcom/tencent/tme/live/g2/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/a;->writeRequestQueue:Lcom/tencent/tme/live/g2/e;

    return-void
.end method

.method public final suspendRead()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->readSuspended:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final suspendWrite()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/f2/a;->writeSuspended:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getProcessor()Lcom/tencent/tme/live/e2/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tme/live/e2/i;->updateTrafficControl(Lcom/tencent/tme/live/f2/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    const-string v1, "("

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getIdAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Session disconnected ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Cannot get the remote address informations: "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    :try_start_1
    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->getService()Lcom/tencent/tme/live/e2/j;

    move-result-object v3

    instance-of v3, v3, Lcom/tencent/tme/live/e2/e;

    const/16 v4, 0x29

    const-string v5, " => "

    const-string v6, ": "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getIdAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", server, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getIdAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/tme/live/f2/a;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", client, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unscheduledForFlush()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/a;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final updateThroughput(JZ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lcom/tencent/tme/live/f2/a;->lastThroughputCalculationTime:J

    sub-long v3, v1, v3

    long-to-int v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/f2/a;->getConfig()Lcom/tencent/tme/live/f2/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tme/live/f2/l;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    int-to-long v7, v4

    cmp-long v3, v7, v5

    if-gez v3, :cond_1

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-wide v5, v0, Lcom/tencent/tme/live/f2/a;->readBytes:J

    iget-wide v7, v0, Lcom/tencent/tme/live/f2/a;->lastReadBytes:J

    sub-long v7, v5, v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v9

    int-to-double v3, v4

    div-double/2addr v7, v3

    iput-wide v7, v0, Lcom/tencent/tme/live/f2/a;->readBytesThroughput:D

    iget-wide v7, v0, Lcom/tencent/tme/live/f2/a;->writtenBytes:J

    iget-wide v11, v0, Lcom/tencent/tme/live/f2/a;->lastWrittenBytes:J

    sub-long v11, v7, v11

    long-to-double v11, v11

    mul-double v11, v11, v9

    div-double/2addr v11, v3

    iput-wide v11, v0, Lcom/tencent/tme/live/f2/a;->writtenBytesThroughput:D

    iget-wide v11, v0, Lcom/tencent/tme/live/f2/a;->readMessages:J

    iget-wide v13, v0, Lcom/tencent/tme/live/f2/a;->lastReadMessages:J

    sub-long v13, v11, v13

    long-to-double v13, v13

    mul-double v13, v13, v9

    div-double/2addr v13, v3

    iput-wide v13, v0, Lcom/tencent/tme/live/f2/a;->readMessagesThroughput:D

    iget-wide v13, v0, Lcom/tencent/tme/live/f2/a;->writtenMessages:J

    iget-wide v9, v0, Lcom/tencent/tme/live/f2/a;->lastWrittenMessages:J

    sub-long v9, v13, v9

    long-to-double v9, v9

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v15

    div-double/2addr v9, v3

    iput-wide v9, v0, Lcom/tencent/tme/live/f2/a;->writtenMessagesThroughput:D

    iput-wide v5, v0, Lcom/tencent/tme/live/f2/a;->lastReadBytes:J

    iput-wide v7, v0, Lcom/tencent/tme/live/f2/a;->lastWrittenBytes:J

    iput-wide v11, v0, Lcom/tencent/tme/live/f2/a;->lastReadMessages:J

    iput-wide v13, v0, Lcom/tencent/tme/live/f2/a;->lastWrittenMessages:J

    iput-wide v1, v0, Lcom/tencent/tme/live/f2/a;->lastThroughputCalculationTime:J

    return-void
.end method

.method public write(Ljava/lang/Object;)Lcom/tencent/tme/live/c2/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/f2/a;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/k;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/k;
    .locals 9

    if-eqz p1, :cond_9

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-boolean v0, v0, Lcom/tencent/tme/live/e2/d;->c:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isClosing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/tme/live/f2/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    :try_start_0
    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message is empty. Forgot to call flip()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    instance-of v0, p1, Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v3, p1

    check-cast v3, Ljava/nio/channels/FileChannel;

    new-instance p1, Lcom/tencent/tme/live/a2/a;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tme/live/a2/a;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_6

    move-object v3, p1

    check-cast v3, Ljava/io/File;

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/a2/c;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tme/live/a2/c;-><init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    move-object p1, v0

    :cond_6
    :goto_2
    new-instance v0, Lcom/tencent/tme/live/c2/g;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/c2/g;-><init>(Lcom/tencent/tme/live/f2/j;)V

    new-instance v2, Lcom/tencent/tme/live/g2/a;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/tme/live/g2/a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    invoke-interface {p0}, Lcom/tencent/tme/live/f2/j;->getFilterChain()Lcom/tencent/tme/live/b2/e;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/tencent/tme/live/b2/e;->fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V

    if-eqz v1, :cond_7

    new-instance p1, Lcom/tencent/tme/live/f2/a$b;

    invoke-direct {p1, p0, v1}, Lcom/tencent/tme/live/f2/a$b;-><init>(Lcom/tencent/tme/live/f2/a;Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/c2/g;->c(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/k;

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    .line 3
    sget-object p2, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 4
    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lcom/tencent/tme/live/c2/g;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/k;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_3
    new-instance v0, Lcom/tencent/tme/live/c2/g;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/c2/g;-><init>(Lcom/tencent/tme/live/f2/j;)V

    new-instance v1, Lcom/tencent/tme/live/g2/a;

    invoke-direct {v1, p1, v0, p2}, Lcom/tencent/tme/live/g2/a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    new-instance p1, Lcom/tencent/tme/live/g2/h;

    invoke-direct {p1, v1}, Lcom/tencent/tme/live/g2/h;-><init>(Lcom/tencent/tme/live/g2/d;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/c2/g;->a(Ljava/lang/Throwable;)V

    return-object v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying to write a null message : not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
