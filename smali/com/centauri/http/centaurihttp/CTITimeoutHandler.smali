.class public final Lcom/centauri/http/centaurihttp/CTITimeoutHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTITimeoutHandler.java"


# instance fields
.field private newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTITimeoutHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method


# virtual methods
.method public final onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpStart(Lcom/centauri/http/core/Request;)V

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTITimeoutHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez p1, :cond_1

    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->updateConnectAndReadTimeout()V

    return-void
.end method
