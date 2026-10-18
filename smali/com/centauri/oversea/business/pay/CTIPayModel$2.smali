.class Lcom/centauri/oversea/business/pay/CTIPayModel$2;
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

    .line 298
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Exception"

    const/16 v3, 0xbd3

    const/16 v4, -0xbba

    invoke-static {v0, v3, v4, v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "provide onFailure: "

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

    .line 302
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Provide network cancel"

    const/16 v2, 0xbc9

    invoke-static {v0, v2, p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string p1, "APPayModel"

    const-string v0, "provide onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 6

    .line 308
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    move-object v2, p1

    check-cast v2, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    invoke-virtual {v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getVerifyRes()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getProvideSdkRet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x472

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1399

    if-ne v0, v1, :cond_1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1702(Lcom/centauri/oversea/business/pay/CTIPayModel;Z)Z

    .line 319
    :cond_1
    sget v1, Lcom/centauri/oversea/TestConfig;->retCodeProvide:I

    const-string v2, "APPayModel"

    if-eqz v1, :cond_2

    .line 320
    sget v0, Lcom/centauri/oversea/TestConfig;->retCodeProvide:I

    .line 321
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "test error msg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    const-string v1, "TestConfig"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_4

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbd3

    const/16 v5, -0xbb9

    invoke-static {v1, v4, v5, p1, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    goto :goto_0

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getMsgErrorCode()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/16 v4, 0xbd2

    invoke-static {v1, v4, p1, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    .line 336
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "provide onSuccess: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
