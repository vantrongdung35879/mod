.class Lcom/centauri/oversea/business/pay/CTIPayModel$1;
.super Ljava/lang/Object;
.source "CTIPayModel.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/pay/CTIPayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Exception"

    const/16 v3, 0xbd0

    const/4 v4, -0x4

    invoke-static {v0, v3, v4, v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOrder onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APPayModel"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Order network cancel"

    const/16 v2, 0xbc9

    invoke-static {v0, v2, p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    .line 231
    const-string p1, "APPayModel"

    const-string v0, "getOrder onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 4

    .line 236
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v0

    .line 238
    sget v1, Lcom/centauri/oversea/TestConfig;->retCodeOrder:I

    const-string v2, "APPayModel"

    if-eqz v1, :cond_0

    .line 239
    sget v0, Lcom/centauri/oversea/TestConfig;->retCodeOrder:I

    .line 240
    const-string v1, "TestConfig"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getOrder onSuccess: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x479

    if-eq v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xbd0

    invoke-static {v0, v2, v1, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1200(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    goto/16 :goto_0

    .line 247
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    .line 248
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getBillno()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$102(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$202(Lcom/centauri/oversea/business/pay/CTIPayModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 250
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$302(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getCurrentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getOfferName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xbcf

    invoke-static {v0, v2, p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    .line 260
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v0, "offerid"

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "productid"

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "productname"

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$600(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v0, "price"

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$800(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v0, "paychannel"

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "currency"

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$900(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1002(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
