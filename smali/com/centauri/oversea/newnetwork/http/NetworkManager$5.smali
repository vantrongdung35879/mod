.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;->net(Ljava/lang/String;Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

.field final synthetic val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

.field final synthetic val$reqType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    iput-object p3, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$reqType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "netFail"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v1

    check-cast v1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    invoke-virtual {v1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getHttpRequestKey()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-interface {v0, v1, v2, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "netStop"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getHttpRequestKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "netSucc"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 326
    :try_start_0
    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v1, "err_code"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v1, "msg"

    new-instance v2, Lorg/json/JSONObject;

    check-cast p1, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->getMpJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 333
    :goto_0
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz p1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$reqType:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$5;->val$reqType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
