.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;->startSecInfo(Ljava/lang/String;Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
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

    .line 260
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    iput-object p3, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$reqType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Fail"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$reqType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Stop"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$reqType:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Succ"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 269
    :try_start_0
    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v1, "err_code"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "msg"

    new-instance v2, Lorg/json/JSONObject;

    check-cast p1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getInfoMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$reqType:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$callBack:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$4;->val$reqType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
