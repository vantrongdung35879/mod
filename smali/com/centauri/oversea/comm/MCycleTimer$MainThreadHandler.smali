.class Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;
.super Landroid/os/Handler;
.source "MCycleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/MCycleTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainThreadHandler"
.end annotation


# instance fields
.field private notifier:Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;->notifier:Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 107
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;->notifier:Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;

    if-eqz p1, :cond_0

    .line 109
    const-string p1, "MCycleTimer"

    const-string/jumbo v0, "timer update."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;->notifier:Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;

    invoke-interface {p1}, Lcom/centauri/oversea/comm/MCycleTimer$CycleTimerUpdateNotifier;->onUpdate()V

    :cond_0
    return-void
.end method
