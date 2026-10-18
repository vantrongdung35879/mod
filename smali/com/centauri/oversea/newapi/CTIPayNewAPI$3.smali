.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;
.super Ljava/lang/Object;
.source "CTIPayNewAPI.java"

# interfaces
.implements Lcom/centauri/oversea/api/ICTINetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->net(Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field final synthetic val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name=net&reqType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.centauri.api.resp"

    invoke-virtual {v0, p2, p1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetStop(Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "net"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method
