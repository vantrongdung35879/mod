.class Lcom/centauri/oversea/business/CTIBaseRestore$3;
.super Ljava/lang/Object;
.source "CTIBaseRestore.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;->postProvide(Ljava/util/List;)V
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

    .line 160
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$3;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3

    .line 164
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reprovide="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&receiptList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.oversea.gw.result"

    invoke-virtual {v0, v2, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/CTIBaseRestore$3$1;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/CTIBaseRestore$3$1;-><init>(Lcom/centauri/oversea/business/CTIBaseRestore$3;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 183
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$3;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    return-void
.end method
