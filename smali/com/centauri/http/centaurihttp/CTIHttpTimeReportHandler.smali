.class public Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIHttpTimeReportHandler.java"


# instance fields
.field private final centauriNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;->centauriNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 26
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 28
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;->centauriNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;->centauriNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->notifyNetworkSuccess(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpTimeReportHandler;->centauriNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->notifyNetworkFailure(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    :goto_0
    return-void
.end method
