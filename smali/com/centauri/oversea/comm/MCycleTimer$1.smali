.class Lcom/centauri/oversea/comm/MCycleTimer$1;
.super Ljava/util/TimerTask;
.source "MCycleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MCycleTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MCycleTimer;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MCycleTimer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/centauri/oversea/comm/MCycleTimer$1;->this$0:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$1;->this$0:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MCycleTimer;->access$010(Lcom/centauri/oversea/comm/MCycleTimer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$1;->this$0:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MCycleTimer;->access$100(Lcom/centauri/oversea/comm/MCycleTimer;)Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$1;->this$0:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MCycleTimer;->access$100(Lcom/centauri/oversea/comm/MCycleTimer;)Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/MCycleTimer$MainThreadHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MCycleTimer$1;->this$0:Lcom/centauri/oversea/comm/MCycleTimer;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MCycleTimer;->access$200(Lcom/centauri/oversea/comm/MCycleTimer;)V

    :cond_1
    :goto_0
    return-void
.end method
