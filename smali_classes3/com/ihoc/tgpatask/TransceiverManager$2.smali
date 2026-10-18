.class Lcom/ihoc/tgpatask/TransceiverManager$2;
.super Ljava/lang/Object;
.source "TransceiverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/TransceiverManager;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/TransceiverManager;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/TransceiverManager;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->access$200(Lcom/ihoc/tgpatask/TransceiverManager;)V

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->access$300(Lcom/ihoc/tgpatask/TransceiverManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->access$400(Lcom/ihoc/tgpatask/TransceiverManager;)I

    move-result v0

    if-lez v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->access$500(Lcom/ihoc/tgpatask/TransceiverManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;

    .line 380
    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->TODO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DOING:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 381
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 382
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 384
    :cond_2
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->checkState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->checkExecuteNum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->checkPramaResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->executeTask()V

    .line 390
    :cond_3
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->reportResult()V

    .line 391
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;

    move-result-object v0

    iget-wide v1, v1, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;->taskID:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/TaskCacheManager;->delTask(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$2;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    goto :goto_0

    :cond_4
    return-void
.end method
