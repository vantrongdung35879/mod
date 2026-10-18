.class public Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;
.super Lcom/centauri/http/centaurihttp/CTIHttpAns;
.source "CTIDataReportAns.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APDataReportAns"


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void
.end method

.method private progressJson(Ljava/lang/String;Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;)V
    .locals 3

    .line 37
    const-string/jumbo p2, "}"

    .line 0
    const-string v0, "data report: retCode ="

    const-string/jumbo v1, "{"

    .line 37
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string p1, "ret"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;->resultCode:I

    .line 47
    const-string p1, "APDataReportAns"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;->resultCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;->resultCode:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleFailure(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleStop(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 2

    .line 21
    iget-object v0, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/http/core/Response;->request()Lcom/centauri/http/core/Request;

    move-result-object v1

    check-cast v1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportAns;->progressJson(Ljava/lang/String;Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;)V

    .line 22
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->handleSuccess(Lcom/centauri/http/core/Response;)Z

    move-result p1

    return p1
.end method
