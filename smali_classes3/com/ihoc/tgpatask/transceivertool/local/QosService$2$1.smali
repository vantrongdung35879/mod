.class Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;
.super Ljava/lang/Object;
.source "QosService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

.field final synthetic val$finalMonitorDuration:I

.field final synthetic val$finalMonitorFreq:I


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iput p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->val$finalMonitorDuration:I

    iput p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->val$finalMonitorFreq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string/jumbo v0, "startQosApp ip:"

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->stopMonitor()I

    .line 652
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",stop old pingMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    new-instance v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-direct {v1}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;-><init>()V

    .line 656
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v3, v2, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    iget v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->val$finalMonitorDuration:I

    iget v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->val$finalMonitorFreq:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->startMonitor(Ljava/lang/String;IILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I

    .line 657
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/QosService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",create new pingMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 660
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/QosService$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",start local pingMonitor error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
