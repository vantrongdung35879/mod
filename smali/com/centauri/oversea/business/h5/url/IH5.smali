.class public abstract Lcom/centauri/oversea/business/h5/url/IH5;
.super Ljava/lang/Object;
.source "IH5.java"


# static fields
.field public static final URL_SCHEME:Ljava/lang/String; = "oversea://jsbridge?"


# instance fields
.field private interceptItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/oversea/business/h5/webview/InterceptItem;",
            ">;"
        }
    .end annotation
.end field

.field private localCacheIP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/url/IH5;->localCacheIP:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/url/IH5;->interceptItems:Ljava/util/ArrayList;

    return-void
.end method

.method private parseInterceptProtocol(Ljava/lang/String;)V
    .locals 5

    .line 87
    const-string v0, "IH5"

    .line 0
    const-string v1, "interceptMsg: "

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 94
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    new-instance v3, Lcom/centauri/oversea/business/h5/webview/InterceptItem;

    invoke-direct {v3}, Lcom/centauri/oversea/business/h5/webview/InterceptItem;-><init>()V

    .line 96
    const-string v4, "rule"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/business/h5/webview/InterceptItem;->pattern:Ljava/lang/String;

    .line 97
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/business/h5/webview/InterceptItem;->redirectUrl:Ljava/lang/String;

    .line 98
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/centauri/oversea/business/h5/webview/InterceptItem;->type:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/centauri/oversea/business/h5/url/IH5;->interceptItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseInterceptProtocol JSONException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseInterceptProtocol UnsupportedEncodingException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public getInterceptItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/centauri/oversea/business/h5/webview/InterceptItem;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/url/IH5;->interceptItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalCacheIP()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/url/IH5;->localCacheIP:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRetCode()I
.end method

.method public abstract getRetMsg()Ljava/lang/String;
.end method

.method public abstract getUrl(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract handleMJsAlert(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public ifSetLocalCacheIP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onJsAlert(Ljava/lang/String;)V
    .locals 2

    .line 70
    const-string v0, "oversea://jsbridge?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1}, Lcom/centauri/oversea/comm/CTITools;->url2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const-string v1, "response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "intercept"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/h5/url/IH5;->parseInterceptProtocol(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/url/IH5;->handleMJsAlert(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public abstract setJsResource(Ljava/lang/String;)V
.end method

.method public setLocalCacheIP(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/url/IH5;->localCacheIP:Ljava/lang/String;

    return-void
.end method
