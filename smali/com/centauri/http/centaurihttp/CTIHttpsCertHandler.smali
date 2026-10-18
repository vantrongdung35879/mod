.class public Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;
.super Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;
.source "CTIHttpsCertHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateSSLSocket;,
        Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat;,
        Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;,
        Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;,
        Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$MyTrustManager;
    }
.end annotation


# instance fields
.field private final certification:Ljava/lang/String;

.field private hasSetHostnameVerifier:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasSetHttpsHeader:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasSetSSLSocketFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;-><init>()V

    .line 51
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$1;

    invoke-direct {v0, p0}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$1;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHttpsHeader:Ljava/lang/ThreadLocal;

    .line 60
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$2;

    invoke-direct {v0, p0}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$2;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHostnameVerifier:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$3;

    invoke-direct {v0, p0}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$3;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;)V

    iput-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetSSLSocketFactory:Ljava/lang/ThreadLocal;

    .line 78
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->certification:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    return-void
.end method

.method private createSSLConnection(Lcom/centauri/http/core/Request;)V
    .locals 6

    .line 170
    :try_start_0
    const-string v0, "TLSv1"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->isRequestWithIP()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 175
    new-array v1, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$MyTrustManager;

    iget-object v5, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->certification:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$MyTrustManager;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 177
    new-instance v1, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;

    iget-object v4, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    invoke-direct {v1, v4, v3}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$1;)V

    .line 179
    invoke-virtual {p1, v1}, Lcom/centauri/http/core/Request;->setCustomHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 180
    iget-object v1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHostnameVerifier:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 190
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/http/core/Request;->setCustomSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 191
    iget-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetSSLSocketFactory:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private needCustomCert(Lcom/centauri/http/core/Request;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->isHttpsRequest()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->isRequestWithIP()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 106
    :cond_2
    instance-of v1, p1, Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    if-nez v1, :cond_3

    return v0

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_4

    return v0

    .line 116
    :cond_4
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->getCustomSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method


# virtual methods
.method public onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 2

    .line 146
    invoke-super {p0, p1, p2}, Lcom/centauri/http/centaurihttp/CTIBaseHttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 149
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHttpsHeader:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHttpsHeader:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 152
    const-string p2, "https.protocols"

    const-string v1, "TLSv1"

    invoke-virtual {p1, p2, v1}, Lcom/centauri/http/core/Request;->removeHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHostnameVerifier:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 157
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHostnameVerifier:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->clearCustomHostnameVerifier()V

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetSSLSocketFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 163
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetSSLSocketFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->clearCustomSSLSocketFactory()V

    :cond_2
    return-void
.end method

.method public onHttpStart(Lcom/centauri/http/core/Request;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->needCustomCert(Lcom/centauri/http/core/Request;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "https.protocols"

    const-string v1, "TLSv1"

    invoke-virtual {p1, v0, v1}, Lcom/centauri/http/core/Request;->hasHttpHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/centauri/http/core/Request;->addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->hasSetHttpsHeader:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;->createSSLConnection(Lcom/centauri/http/core/Request;)V

    :cond_2
    return-void
.end method
