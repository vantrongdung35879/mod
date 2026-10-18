.class public Lcom/centauri/oversea/comm/MCycleTimer$Builder;
.super Ljava/lang/Object;
.source "MCycleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/MCycleTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-direct {v0}, Lcom/centauri/oversea/comm/MCycleTimer;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$Builder;->cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;

    return-void
.end method


# virtual methods
.method public build()Lcom/centauri/oversea/comm/MCycleTimer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$Builder;->cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;

    return-object v0
.end method

.method public setCount(I)Lcom/centauri/oversea/comm/MCycleTimer$Builder;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$Builder;->cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0, p1}, Lcom/centauri/oversea/comm/MCycleTimer;->access$002(Lcom/centauri/oversea/comm/MCycleTimer;I)I

    return-object p0
.end method

.method public setPeriod(J)Lcom/centauri/oversea/comm/MCycleTimer$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$Builder;->cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0, p1, p2}, Lcom/centauri/oversea/comm/MCycleTimer;->access$302(Lcom/centauri/oversea/comm/MCycleTimer;J)J

    return-object p0
.end method

.method public setUpdateNotifier(Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;)Lcom/centauri/oversea/comm/MCycleTimer$Builder;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$Builder;->cycleTimer:Lcom/centauri/oversea/comm/MCycleTimer;

    new-instance v1, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    invoke-direct {v1, p1}, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;-><init>(Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;)V

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/MCycleTimer;->access$102(Lcom/centauri/oversea/comm/MCycleTimer;Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;)Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    return-object p0
.end method
