.class public Lco/datadome/sdk/DataDomeInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static b:Lco/datadome/sdk/DataDomeSDK$Builder;

.field private static final c:Ljava/nio/charset/Charset;

.field private static d:Lokhttp3/CookieJar;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lco/datadome/sdk/DataDomeInterceptor;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lco/datadome/sdk/DataDomeSDK$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lco/datadome/sdk/DataDomeInterceptor;->a(Lco/datadome/sdk/DataDomeSDK$Builder;)V

    iput-object p1, p0, Lco/datadome/sdk/DataDomeInterceptor;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    if-nez v0, :cond_0

    invoke-static {p1, p3, p4}, Lco/datadome/sdk/DataDomeSDK;->with(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->listener(Lco/datadome/sdk/DataDomeSDKListener;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p2

    invoke-static {p2}, Lco/datadome/sdk/DataDomeInterceptor;->a(Lco/datadome/sdk/DataDomeSDK$Builder;)V

    :cond_0
    iput-object p1, p0, Lco/datadome/sdk/DataDomeInterceptor;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    if-nez v0, :cond_0

    invoke-static {p1, p3, p4}, Lco/datadome/sdk/DataDomeSDK;->with(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p3

    invoke-virtual {p3, p5}, Lco/datadome/sdk/DataDomeSDK$Builder;->bypassAcceptHeader(Ljava/lang/Boolean;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->listener(Lco/datadome/sdk/DataDomeSDKListener;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p2

    invoke-static {p2}, Lco/datadome/sdk/DataDomeInterceptor;->a(Lco/datadome/sdk/DataDomeSDK$Builder;)V

    :cond_0
    iput-object p1, p0, Lco/datadome/sdk/DataDomeInterceptor;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 4

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "X-DD-B"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "X-SF-CC-X-dd-b"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v2, 0x191

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lco/datadome/sdk/DataDomeUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lco/datadome/sdk/DataDomeUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private a(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;
    .locals 9

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lco/datadome/sdk/DataDomeInterceptor;->a(Lokhttp3/Response;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v5, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v5, p1}, Lco/datadome/sdk/d;->a(Lokhttp3/Response;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lco/datadome/sdk/DataDomeInterceptor;->d:Lokhttp3/CookieJar;

    if-nez v5, :cond_3

    const-string v5, "DataDome"

    const-string v6, "Implement the \"CookieJar\" interface to handle SFCC cookies, otherwise DataDome might not work correctly.\n Refer to https://docs.datadome.co/docs/sdk-android#cookiejar-interface-implementation."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/Cookie;

    invoke-virtual {v6}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dwsid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    const-wide/16 v5, 0x7fff

    invoke-interface {v1, v5, v6}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v1, Lokio/GzipSource;

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v5

    invoke-direct {v1, v5}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    :try_start_0
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lokio/Buffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Lokio/GzipSource;->close()V

    move-object v5, v6

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v5}, Lokio/Buffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v1}, Lokio/GzipSource;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1

    :cond_6
    const-string v7, "br"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v0, Lorg/brotli/dec/BrotliInputStream;

    invoke-interface {v1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    sget-object v0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v0, v3}, Lco/datadome/sdk/DataDomeSDK$Builder;->agent(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/datadome/sdk/DataDomeSDK$Builder;->b(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v1, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->process(Lokhttp3/Response;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_5
    sget-object v1, Lco/datadome/sdk/DataDomeInterceptor;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {v5, v1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lokio/Buffer;->close()V

    sget-object v1, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v1, v3}, Lco/datadome/sdk/DataDomeSDK$Builder;->agent(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/datadome/sdk/DataDomeSDK$Builder;->b(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v0, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->process(Lokhttp3/Response;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {v5}, Lokio/Buffer;->close()V

    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_b
    sget-object v0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v0, v3}, Lco/datadome/sdk/DataDomeSDK$Builder;->agent(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/datadome/sdk/DataDomeSDK$Builder;->b(Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v4, v1, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->process(Lokhttp3/Response;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lco/datadome/sdk/DataDomeSDK$Builder;)V
    .locals 0

    sput-object p0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lco/datadome/sdk/DataDomeInterceptor;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getDataDomeCookieJar(Lokhttp3/CookieJar;)Lokhttp3/CookieJar;
    .locals 2

    sput-object p1, Lco/datadome/sdk/DataDomeInterceptor;->d:Lokhttp3/CookieJar;

    new-instance v0, Lco/datadome/sdk/c;

    sget-object v1, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-direct {v0, p1, v1}, Lco/datadome/sdk/c;-><init>(Lokhttp3/CookieJar;Lco/datadome/sdk/DataDomeSDK$Builder;)V

    return-object v0
.end method

.method public getDataDomeSDK()Lco/datadome/sdk/DataDomeSDK$Builder;
    .locals 1

    sget-object v0, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    invoke-virtual {v4, v1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "datadome="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v7}, Lco/datadome/sdk/DataDomeSDK$Builder;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lco/datadome/sdk/DataDomeUtils;->mergeCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v1, v2}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_0
    sget-object v1, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v1}, Lco/datadome/sdk/DataDomeSDK$Builder;->isBypassingAcceptHeader()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v4, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "Adding application/json accept header"

    invoke-static {v1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Request cookie: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cookie"

    invoke-virtual {v1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFor request "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lco/datadome/sdk/DataDomeUtils;->isValidCookie(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lco/datadome/sdk/DataDomeInterceptor;->b:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v2, v3}, Lco/datadome/sdk/DataDomeSDK$Builder;->setCookie(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Response set-cookie: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->clone()Lokhttp3/Call;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lco/datadome/sdk/DataDomeInterceptor;->a(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
