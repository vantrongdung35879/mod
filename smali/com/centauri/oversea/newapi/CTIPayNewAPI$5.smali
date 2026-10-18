.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;
.super Ljava/lang/Object;
.source "CTIPayNewAPI.java"

# interfaces
.implements Lcom/centauri/oversea/api/ICTICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->mall(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/MallParams;Lcom/centauri/oversea/api/ICTICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field final synthetic val$callback:Lcom/centauri/oversea/api/ICTICallBack;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 320
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name=mall&resultMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk.centauri.api.resp"

    invoke-virtual {v0, v1, p1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "mall"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriPayNeedLogin()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$5;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayNeedLogin()V

    return-void
.end method
