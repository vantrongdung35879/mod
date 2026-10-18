.class final Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIHostHeaderHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CentauriHostHeader"


# instance fields
.field private final hasSetHostHeader:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTINetworkManager;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 24
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler$1;

    invoke-direct {v0, p0}, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler$1;-><init>(Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->hasSetHostHeader:Ljava/lang/ThreadLocal;

    .line 32
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    return-void
.end method


# virtual methods
.method public final onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 93
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 95
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->hasSetHostHeader:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "Host"

    invoke-virtual {p1, v0, p2}, Lcom/centauri/http/core/Request;->removeHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->hasSetHostHeader:Ljava/lang/ThreadLocal;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpStart(Lcom/centauri/http/core/Request;)V

    .line 39
    const-string v0, "CentauriHostHeader"

    if-nez p1, :cond_0

    .line 40
    const-string p1, "Set host header, request null"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v1, :cond_1

    .line 46
    const-string p1, "Set host header, not centauri request"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    if-nez v1, :cond_2

    .line 51
    const-string p1, "Set host header, net manager null"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    .line 56
    iget-boolean v2, v1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->needCentauriHostHeader:Z

    if-nez v2, :cond_3

    .line 57
    const-string p1, "Set host header, request set no need centauri header!"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->newNetworkManager:Lcom/centauri/http/centaurihttp/CTINetworkManager;

    invoke-virtual {v2}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->getCentauriCommonInfoGetter()Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;

    move-result-object v2

    if-nez v2, :cond_4

    .line 63
    const-string p1, "Set host header, common info getter null"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_4
    invoke-interface {v2, v1}, Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;->getHttpHostHeaderDomain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    const-string p1, "Set host header, got empty host"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_5
    invoke-static {v1}, Lcom/centauri/http/utils/CTIIPValidator;->isIPAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Set host header, host is ip address = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_6
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_7

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Set host header, host not web url = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_7
    const-string v2, "Host"

    invoke-virtual {p1, v2, v1}, Lcom/centauri/http/core/Request;->addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHostHeaderHandler;->hasSetHostHeader:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Set host = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
