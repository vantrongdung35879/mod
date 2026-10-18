.class public Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;
.super Ljava/lang/Object;
.source "CTIEndGetKeyInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Interceptor;


# static fields
.field public static final SECRET_KEY_ERR:I = 0x446

.field public static final SECRET_KEY_INVALID:I = 0x44b

.field public static final TAG:Ljava/lang/String; = "APEndGetKeyInterceptor"


# instance fields
.field private networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method

.method private clearAllKey(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "4.05.422a"

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->clearAllKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private needGetKeyAgain(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    const-string p1, "get_key"

    const-string v1, "info"

    const-string v2, "order"

    const-string v3, "provide"

    const-string v4, "get_ip"

    filled-new-array {v2, v3, v4, p1, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 67
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    const-string v4, "ret"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x446

    if-eq v3, v4, :cond_0

    const/16 v4, 0x44b

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private requestAgain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 1

    .line 81
    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    if-eqz v0, :cond_0

    .line 82
    move-object p2, p1

    check-cast p2, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    invoke-virtual {p2}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->addGetKey()V

    .line 85
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->networkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->executeRequestSyncWithNoCustomInterceptors(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 3

    const-string v0, "NeedChangeKey|"

    if-eqz p1, :cond_2

    .line 35
    instance-of v1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    check-cast p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-eqz p2, :cond_2

    .line 40
    iget-object v1, p2, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    :try_start_0
    iget-object v1, p2, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->needGetKeyAgain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const-string v1, "APEndGetKeyInterceptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->clearAllKey(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/newnetwork/model/CTIEndGetKeyInterceptor;->requestAgain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object p2
.end method
