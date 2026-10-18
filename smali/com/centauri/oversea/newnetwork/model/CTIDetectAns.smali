.class public Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;
.super Lcom/centauri/http/centaurihttp/CTIHttpAns;
.source "CTIDetectAns.java"


# instance fields
.field msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 20
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->msg:Landroid/os/Message;

    const/4 v0, 0x5

    .line 23
    iput v0, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method private progressJson(Ljava/lang/String;)V
    .locals 3

    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    const-string p1, "ret"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 38
    const-string/jumbo p1, "tasks"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->msg:Landroid/os/Message;

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 42
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->msg:Landroid/os/Message;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->msg:Landroid/os/Message;

    const/4 v1, 0x5

    iput v1, p1, Landroid/os/Message;->what:I

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDetuctMsg()Landroid/os/Message;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->msg:Landroid/os/Message;

    return-object v0
.end method

.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleFailure(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleStop(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 30
    iget-object v0, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->progressJson(Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleSuccess(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method
