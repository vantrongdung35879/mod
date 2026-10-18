.class Lcom/centauri/oversea/business/CTIBaseRestore$2;
.super Ljava/lang/Object;
.source "CTIBaseRestore.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;->startReProvide(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIPayReceipt;",
            ">;)V"
        }
    .end annotation

    .line 79
    const-string v0, "APBaseRestore"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$102(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/util/List;)Ljava/util/List;

    .line 85
    :cond_0
    const-string v1, "1"

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->subscribeSaveCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase list size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    return-void

    .line 97
    :cond_2
    const-string p1, "purchase list is empty"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$2;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x6

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    return-void
.end method
