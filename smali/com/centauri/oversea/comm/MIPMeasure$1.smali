.class Lcom/centauri/oversea/comm/MIPMeasure$1;
.super Ljava/lang/Object;
.source "MIPMeasure.java"

# interfaces
.implements Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MIPMeasure;->measure(Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MIPMeasure;

.field final synthetic val$callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MIPMeasure;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->val$callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasureFinish(Ljava/lang/String;ZF)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ip: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";isUsable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIPMeasure"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MIPMeasure;->access$000(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {v0}, Lcom/centauri/oversea/comm/MIPMeasure;->access$100(Lcom/centauri/oversea/comm/MIPMeasure;)F

    move-result v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {v0, p3}, Lcom/centauri/oversea/comm/MIPMeasure;->access$102(Lcom/centauri/oversea/comm/MIPMeasure;F)F

    .line 52
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {v0, p1}, Lcom/centauri/oversea/comm/MIPMeasure;->access$202(Lcom/centauri/oversea/comm/MIPMeasure;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->val$callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;->onMeasureFinish(Ljava/lang/String;ZF)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {p1}, Lcom/centauri/oversea/comm/MIPMeasure;->access$304(Lcom/centauri/oversea/comm/MIPMeasure;)I

    move-result p1

    iget-object p2, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {p2}, Lcom/centauri/oversea/comm/MIPMeasure;->access$400(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    .line 62
    invoke-static {p1}, Lcom/centauri/oversea/comm/MIPMeasure;->access$500(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    invoke-static {p1}, Lcom/centauri/oversea/comm/MIPMeasure;->access$500(Lcom/centauri/oversea/comm/MIPMeasure;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 64
    iget-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$1;->this$0:Lcom/centauri/oversea/comm/MIPMeasure;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/centauri/oversea/comm/MIPMeasure;->access$502(Lcom/centauri/oversea/comm/MIPMeasure;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 65
    const-string p1, "Shutdown and destroy executorService"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
