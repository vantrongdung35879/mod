.class final Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIIPMeasureHandler.java"


# instance fields
.field private final newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v0, :cond_2

    return-void

    .line 38
    :cond_2
    instance-of v0, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v0, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 48
    :cond_4
    invoke-virtual {p2}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 49
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIIPMeasureHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {p2, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->updateIPTimes(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
