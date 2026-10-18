.class public Lcom/centauri/http/centaurihttp/CTIHttpResponseHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIHttpResponseHandler.java"


# instance fields
.field private newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponseHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 25
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpResponseHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v0, :cond_2

    return-void

    .line 41
    :cond_2
    instance-of p1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez p1, :cond_3

    return-void

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpResponse;

    invoke-direct {v0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;-><init>(Landroid/content/Context;Lcom/centauri/http/core/Response;)V

    .line 51
    invoke-virtual {p2, v0}, Lcom/centauri/http/core/Response;->setTag(Ljava/lang/Object;)V

    return-void
.end method
