.class public Lcom/centauri/oversea/comm/MCycleTimer;
.super Ljava/lang/Object;
.source "MCycleTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;,
        Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;,
        Lcom/centauri/oversea/comm/MCycleTimer$Builder;
    }
.end annotation


# static fields
.field private static final MSG_TIMER_UPDATE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MCycleTimer"

.field private static isGlobalTiming:Z


# instance fields
.field private count:I

.field private mainThreadHandler:Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

.field private period:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->count:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->period:J

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    .line 23
    iput-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->mainThreadHandler:Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/centauri/oversea/comm/MCycleTimer;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->count:I

    return p1
.end method

.method static synthetic access$010(Lcom/centauri/oversea/comm/MCycleTimer;)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->count:I

    return v0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/comm/MCycleTimer;)Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->mainThreadHandler:Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/centauri/oversea/comm/MCycleTimer;Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;)Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->mainThreadHandler:Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/centauri/oversea/comm/MCycleTimer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/centauri/oversea/comm/MCycleTimer;->release()V

    return-void
.end method

.method static synthetic access$302(Lcom/centauri/oversea/comm/MCycleTimer;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->period:J

    return-wide p1
.end method

.method private release()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/centauri/oversea/comm/MCycleTimer;->isGlobalTiming:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 53
    sput-boolean v2, Lcom/centauri/oversea/comm/MCycleTimer;->isGlobalTiming:Z

    .line 54
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 55
    iput-object v1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    .line 58
    :cond_0
    iput-object v1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->mainThreadHandler:Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 7

    .line 29
    sget-boolean v0, Lcom/centauri/oversea/comm/MCycleTimer;->isGlobalTiming:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->period:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 30
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/centauri/oversea/comm/MCycleTimer;->isGlobalTiming:Z

    .line 35
    iget-object v1, p0, Lcom/centauri/oversea/comm/MCycleTimer;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/centauri/oversea/comm/MCycleTimer$1;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/comm/MCycleTimer$1;-><init>(Lcom/centauri/oversea/comm/MCycleTimer;)V

    iget-wide v5, p0, Lcom/centauri/oversea/comm/MCycleTimer;->period:J

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method
