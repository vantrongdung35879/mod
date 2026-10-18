.class Lcom/centauri/oversea/business/CTIPayManager$2;
.super Ljava/lang/Object;
.source "CTIPayManager.java"

# interfaces
.implements Lcom/centauri/oversea/comm/IabBroadcastReceiver$IabBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIPayManager;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/CTIPayManager;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/CTIPayManager;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedBroadcast()V
    .locals 4

    .line 288
    const-string v0, "APPayManager"

    const-string v1, "Receiver received broadcast."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$500(Lcom/centauri/oversea/business/CTIPayManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    .line 292
    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$600(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    .line 293
    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$600(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/CTIPayManager;->access$202(Lcom/centauri/oversea/business/CTIPayManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$600(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    new-instance v2, Lcom/centauri/oversea/data/RestoreItem;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/CTIPayManager;->channelHelper()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createRestoreChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/CTIBaseRestore;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/centauri/oversea/data/RestoreItem;-><init>(Ljava/lang/String;Lcom/centauri/oversea/business/CTIBaseRestore;)V

    .line 301
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIPayManager;->access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$2;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$700(Lcom/centauri/oversea/business/CTIPayManager;)V

    :cond_2
    return-void
.end method
