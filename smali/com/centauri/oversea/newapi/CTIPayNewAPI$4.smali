.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;
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

    .line 265
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name=net&result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdk.centauri.api.resp"

    invoke-virtual {p1, v0, p2}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetStop(Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$4;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "net"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method
