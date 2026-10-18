.class Lcom/centauri/oversea/business/CTIPayManager$1;
.super Ljava/lang/Object;
.source "CTIPayManager.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIPayManager;->init()V
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

    .line 82
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$100(Lcom/centauri/oversea/business/CTIPayManager;)Lcom/centauri/oversea/newapi/response/ICTICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIPayManager;->access$100(Lcom/centauri/oversea/business/CTIPayManager;)Lcom/centauri/oversea/newapi/response/ICTICallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIPayManager;->access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIPayManager;->access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIPayManager;->access$200(Lcom/centauri/oversea/business/CTIPayManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/data/RestoreItem;

    if-eqz p1, :cond_2

    .line 94
    const-string p2, "APPayManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " start reProvide."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p2, p1, Lcom/centauri/oversea/data/RestoreItem;->restore:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0}, Lcom/centauri/oversea/business/CTIBaseRestore;->restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/centauri/oversea/business/CTIPayManager;->access$202(Lcom/centauri/oversea/business/CTIPayManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 104
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIPayManager;->access$300(Lcom/centauri/oversea/business/CTIPayManager;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIPayManager$1;->this$0:Lcom/centauri/oversea/business/CTIPayManager;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIPayManager;->access$400(Lcom/centauri/oversea/business/CTIPayManager;)V

    :cond_2
    :goto_0
    return-void
.end method
