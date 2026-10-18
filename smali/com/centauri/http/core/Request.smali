.class public Lcom/centauri/http/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/http/core/Request$Method;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field public connectTimeout:I

.field public currentGetInputStreamTime:J

.field public currentGetOutputStreamTime:J

.field public currentTryTime:J

.field public currentTryTimeConsume:J

.field public delivery:Lcom/centauri/http/core/Delivery;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field httpURLConnection:Ljava/net/HttpURLConnection;

.field private httpUrl:Lcom/centauri/http/core/HttpURL;

.field public isAllRetriesFailed:Z

.field public maxRetryTime:I

.field public method:Ljava/lang/String;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readTimeout:I

.field public retryTimes:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field public startTime:J

.field private stopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->startTime:J

    .line 30
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentTryTime:J

    .line 36
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentGetOutputStreamTime:J

    .line 41
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentGetInputStreamTime:J

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/centauri/http/core/Request;->retryTimes:I

    .line 47
    iput-boolean v0, p0, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lcom/centauri/http/core/Request;->maxRetryTime:I

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/centauri/http/core/Request;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    const-string v1, "POST"

    iput-object v1, p0, Lcom/centauri/http/core/Request;->method:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    .line 78
    iput v0, p0, Lcom/centauri/http/core/Request;->connectTimeout:I

    .line 79
    iput v0, p0, Lcom/centauri/http/core/Request;->readTimeout:I

    return-void
.end method


# virtual methods
.method public final addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final clearCustomHostnameVerifier()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/centauri/http/core/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public final clearCustomSSLSocketFactory()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/centauri/http/core/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructAllParams()Ljava/lang/String;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, ""

    if-gtz v0, :cond_0

    return-object v1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructAllParams = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/centauri/http/core/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getCustomSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/centauri/http/core/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getFullURLString()Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-nez v0, :cond_0

    .line 301
    const-string v0, ""

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/centauri/http/core/HttpURL;->getFullUrlString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/centauri/http/core/Request;->isGetRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/centauri/http/core/Request;->hasParameters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/centauri/http/core/Request;->constructAllParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, v0, Lcom/centauri/http/core/HttpURL;->host:Ljava/lang/String;

    return-object v0

    .line 336
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpUrl()Lcom/centauri/http/core/HttpURL;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUrlSuffix()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, v0, Lcom/centauri/http/core/HttpURL;->suffix:Ljava/lang/String;

    return-object v0

    .line 344
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final hasHttpHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasParameters()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/centauri/http/core/Request;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGetRequest()Z
    .locals 2

    .line 287
    const-string v0, "GET"

    iget-object v1, p0, Lcom/centauri/http/core/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHttpsRequest()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/http/core/HttpURL;->isSchemaHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPostRequest()Z
    .locals 2

    .line 273
    const-string v0, "POST"

    iget-object v1, p0, Lcom/centauri/http/core/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRequestWithIP()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/http/core/HttpURL;->hostIsIP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/centauri/http/core/Request;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onHttpEnd(Lcom/centauri/http/core/Response;)V
    .locals 0

    return-void
.end method

.method public onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 0

    return-void
.end method

.method public onHttpStart()V
    .locals 0

    return-void
.end method

.method public final removeHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    .line 199
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 200
    iget-object p2, p0, Lcom/centauri/http/core/Request;->headers:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public resetGetOutputStreamTimeAndGetInputStreamTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 97
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentGetOutputStreamTime:J

    .line 98
    iput-wide v0, p0, Lcom/centauri/http/core/Request;->currentGetInputStreamTime:J

    return-void
.end method

.method public final setCustomHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/centauri/http/core/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :cond_0
    return-void
.end method

.method public setCustomSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lcom/centauri/http/core/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    .line 318
    iput-object p1, v0, Lcom/centauri/http/core/HttpURL;->host:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    if-eqz v0, :cond_0

    .line 324
    iput-object p1, v0, Lcom/centauri/http/core/HttpURL;->port:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setURL(Lcom/centauri/http/core/HttpURL;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/centauri/http/core/Request;->httpUrl:Lcom/centauri/http/core/HttpURL;

    return-void
.end method

.method public stopRequest()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/centauri/http/core/Request;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 382
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/http/core/Request$1;

    invoke-direct {v1, p0}, Lcom/centauri/http/core/Request$1;-><init>(Lcom/centauri/http/core/Request;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return-void
.end method
