.class public Lcom/centauri/oversea/comm/MIPMeasure;
.super Ljava/lang/Object;
.source "MIPMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;,
        Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MIPMeasure"


# instance fields
.field private callbackCount:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private highestSpeed:F

.field private highestSpeedIP:Ljava/lang/String;

.field private ipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usableIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 24
    iput-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeedIP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeed:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->callbackCount:I

    .line 31
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/centauri/oversea/comm/GlobalData;->ipMeasureSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    .line 38
    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/comm/MIPMeasure;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeed:F

    return p0
.end method

.method static synthetic access$102(Lcom/centauri/oversea/comm/MIPMeasure;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeed:F

    return p1
.end method

.method static synthetic access$202(Lcom/centauri/oversea/comm/MIPMeasure;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeedIP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$304(Lcom/centauri/oversea/comm/MIPMeasure;)I
    .locals 1

    .line 19
    iget v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->callbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->callbackCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/centauri/oversea/comm/MIPMeasure;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method


# virtual methods
.method public getHighestSpeedIP()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HighestSpeedIP: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeedIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HighestSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIPMeasure"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->highestSpeedIP:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUsableIPList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public measure(Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/centauri/oversea/comm/MIPMeasure$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/comm/MIPMeasure$1;-><init>(Lcom/centauri/oversea/comm/MIPMeasure;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V

    .line 71
    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/comm/MIPMeasure;->measure(Ljava/lang/String;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public measure(Ljava/lang/String;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V
    .locals 2

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;

    invoke-direct {v1, p1, p2}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;-><init>(Ljava/lang/String;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iput-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->ipList:Ljava/util/ArrayList;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iput-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->usableIPList:Ljava/util/ArrayList;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 115
    iput-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    return-void
.end method
