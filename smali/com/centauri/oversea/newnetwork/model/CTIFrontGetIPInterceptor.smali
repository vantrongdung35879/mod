.class public Lcom/centauri/oversea/newnetwork/model/CTIFrontGetIPInterceptor;
.super Ljava/lang/Object;
.source "CTIFrontGetIPInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Interceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "APFrontGetIPInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 5

    if-eqz p1, :cond_3

    .line 22
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;

    if-eqz v0, :cond_3

    .line 29
    const-string v0, "overseas_cmd"

    invoke-virtual {p1, v0}, Lcom/centauri/http/core/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "get_ip"

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    .line 37
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lcom/centauri/oversea/newnetwork/http/CTIIPManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newnetwork/http/CTIIPManager;->isIPOutdated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "need get_ip."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "APFrontGetIPInterceptor"

    invoke-static {v4, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/centauri/http/core/Request;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object p2
.end method
