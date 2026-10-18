.class public Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;
.super Ljava/lang/Object;
.source "CTIHttpsIPDirectHandler.java"

# interfaces
.implements Lcom/centauri/http/core/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;,
        Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTITlsSniSocketFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APHttpsIPDirectHandler"


# instance fields
.field private final hasSet:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$1;-><init>(Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;)V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;->hasSet:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 71
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;->hasSet:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "APHttpsIPDirectHandler"

    if-eqz p2, :cond_0

    .line 72
    const-string p2, "On http end, need reset host name verifier and ssl socket factory"

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;->hasSet:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->clearCustomHostnameVerifier()V

    .line 76
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->clearCustomSSLSocketFactory()V

    goto :goto_0

    .line 78
    :cond_0
    const-string p1, "On http end, no need reset host name verifier and ssl socket factory"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 0

    return-void
.end method

.method public onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 3

    .line 43
    const-string v0, "APHttpsIPDirectHandler"

    if-nez p1, :cond_0

    .line 44
    const-string p1, "On http start, null request"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On http start, type error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    check-cast p1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    .line 55
    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->isRequestWithIP()Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string p1, "On http start, not request with ip, no need to set custom verifier and ssl socket factory"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_2
    const-string v1, "On http start, set custom host name verifier and ssl socket factory"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;

    .line 63
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTIHostNameVerifier;-><init>(Ljava/lang/String;Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$1;)V

    .line 62
    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setCustomHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 64
    new-instance v0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTITlsSniSocketFactory;

    .line 65
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$CTITlsSniSocketFactory;-><init>(Ljava/lang/String;Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler$1;)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->setCustomSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 66
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIHttpsIPDirectHandler;->hasSet:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
