.class Lcom/centauri/http/centaurihttp/CTIRetryHostHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIRetryHostHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 24
    invoke-virtual {p1, p2}, Lcom/centauri/http/core/Request;->onHttpEnd(Lcom/centauri/http/core/Response;)V

    return-void
.end method

.method public onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    if-nez p3, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p3, p1, p2, p3, p4}, Lcom/centauri/http/core/Request;->onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    return-void
.end method

.method public onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpStart(Lcom/centauri/http/core/Request;)V

    .line 17
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->onHttpStart()V

    return-void
.end method
