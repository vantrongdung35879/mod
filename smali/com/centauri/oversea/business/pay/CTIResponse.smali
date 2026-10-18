.class public Lcom/centauri/oversea/business/pay/CTIResponse;
.super Ljava/lang/Object;
.source "CTIResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CTIResponse"


# instance fields
.field private appExtends:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private innerCode:Ljava/lang/String;

.field needShowSuccess:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    .line 38
    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    .line 42
    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    .line 43
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTICommMethod;->isErrCode2InnerCode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    .line 48
    :goto_0
    iput-object p3, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CTIResponse() called with: resultCode = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], msgErrCode = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], resultMsg = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTIResponse"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAPPExtends()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerCode()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setAppExtends(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Lorg/json/JSONObject;)V
    .locals 0

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    return-void
.end method

.method public setInnerCode(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "resultCode"

    iget v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v1, "resultMsg"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "innerCode"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "extra"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    const-string v1, "appExtends"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toString() exception|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentauriResponse"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, ""

    return-object v0
.end method
