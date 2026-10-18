.class public Lcom/tencent/tme/live/v/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/v/a$d;
    }
.end annotation


# static fields
.field public static h:Lcom/tencent/tme/live/v/g;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public final e:Lorg/apache/http/protocol/HttpContext;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/v/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/v/f;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/tme/live/v/a;->a:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/tencent/tme/live/v/a;->b:I

    iput v1, p0, Lcom/tencent/tme/live/v/a;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/v/a;->g:Z

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget v3, p0, Lcom/tencent/tme/live/v/a;->b:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v4, p0, Lcom/tencent/tme/live/v/a;->a:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    iget v0, p0, Lcom/tencent/tme/live/v/a;->c:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget v0, p0, Lcom/tencent/tme/live/v/a;->b:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2000

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/live/v/a;->a(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/params/BasicHttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/a;->a()Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/v/a;->f:Ljava/util/Map;

    new-instance v0, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v/a;->e:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p1, Lcom/tencent/tme/live/v/a$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/v/a$a;-><init>(Lcom/tencent/tme/live/v/a;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance p1, Lcom/tencent/tme/live/v/a$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/v/a$b;-><init>(Lcom/tencent/tme/live/v/a;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance p1, Lcom/tencent/tme/live/v/a$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/v/a$c;-><init>(Lcom/tencent/tme/live/v/a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    new-instance p1, Lcom/tencent/tme/live/v/l;

    const/4 v1, 0x5

    const/16 v2, 0x5dc

    invoke-direct {p1, v1, v2}, Lcom/tencent/tme/live/v/l;-><init>(II)V

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/tencent/tme/live/v/a;->a(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/v/a;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public static a(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    const/4 v0, 0x2

    const-string v1, "AsyncHttpClient"

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    sget-object v3, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    const-string v4, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    check-cast v3, Lcom/tencent/tme/live/v/f;

    .line 6
    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    .line 7
    sget-object p1, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    const-string v4, "Invalid HTTP port number specified, defaulting to 80"

    check-cast p1, Lcom/tencent/tme/live/v/f;

    .line 8
    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x50

    :cond_1
    if-ge p2, v3, :cond_2

    .line 9
    sget-object p2, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    const-string v3, "Invalid HTTPS port number specified, defaulting to 443"

    check-cast p2, Lcom/tencent/tme/live/v/f;

    .line 10
    invoke-virtual {p2, v0, v1, v3, v2}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p2, 0x1bb

    :cond_2
    if-eqz p0, :cond_3

    .line 11
    sget p0, Lcom/tencent/tme/live/v/h;->b:I

    .line 12
    :try_start_0
    new-instance p0, Lcom/tencent/tme/live/v/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    .line 14
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/tme/live/v/h;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p0

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p0

    :goto_2
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const-string v3, "http"

    invoke-direct {v1, v3, v2, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance p1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    invoke-direct {p1, v1, p0, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    check-cast v0, Lcom/tencent/tme/live/v/f;

    const/4 v1, 0x5

    .line 16
    const-string v2, "AsyncHttpClient"

    const-string v3, "Cannot close input stream"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 6

    instance-of v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v0, :cond_2

    :try_start_0
    const-class v0, Lorg/apache/http/entity/HttpEntityWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wrappedEntity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/HttpEntity;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    check-cast v0, Lcom/tencent/tme/live/v/f;

    .line 1
    const-string v1, "AsyncHttpClient"

    const-string v2, "wrappedEntity consume"

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/tme/live/v/k;)Lcom/tencent/tme/live/v/j;
    .locals 13

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/v/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/tencent/tme/live/v/a;->e:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lcom/tencent/tme/live/v/e;

    iget-boolean v0, p0, Lcom/tencent/tme/live/v/a;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v9

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/tencent/tme/live/v/a;->h:Lcom/tencent/tme/live/v/g;

    check-cast v4, Lcom/tencent/tme/live/v/f;

    .line 4
    const-string v5, "AsyncHttpClient"

    const-string v6, "getUrlWithQueryString encoding URL"

    const/4 v7, 0x6

    invoke-virtual {v4, v7, v5, v6, v0}, Lcom/tencent/tme/live/v/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    :goto_0
    invoke-direct {v3, p1}, Lcom/tencent/tme/live/v/e;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tme/live/v/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/tencent/tme/live/v/k;Landroid/content/Context;)Lcom/tencent/tme/live/v/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/tencent/tme/live/v/k;Landroid/content/Context;)Lcom/tencent/tme/live/v/j;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/params/BasicHttpParams;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p2, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/tme/live/v/l;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tme/live/v/l;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method
