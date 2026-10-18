.class public Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;
.super Ljava/lang/Object;
.source "CTINetAvailableInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Interceptor;


# static fields
.field private static final ERROR_NETWORK_UNREACHABLE:I = 0x4e26


# instance fields
.field private final newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method

.method private static getNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 58
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v0

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 65
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez p1, :cond_0

    return-object p2

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTINetAvailableInterceptor;->getNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x4e26

    .line 41
    const-string p2, "The network is not connected, please check"

    invoke-static {p1, p2}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->generateFakeCentauriResponse(ILjava/lang/String;)Lcom/centauri/http/core/Response;

    move-result-object p1

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p1, Lcom/centauri/http/core/Response;->needBreakOtherInterceptors:Z

    return-object p1

    :cond_2
    return-object p2
.end method
