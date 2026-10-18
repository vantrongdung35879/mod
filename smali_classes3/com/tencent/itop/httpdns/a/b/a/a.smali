.class public Lcom/tencent/itop/httpdns/a/b/a/a;
.super Ljava/lang/Object;
.source "HttpDnsImpl.java"

# interfaces
.implements Lcom/tencent/itop/httpdns/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/itop/httpdns/a/b/a<",
        "Lcom/tencent/itop/httpdns/a/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/tencent/itop/httpdns/a/b/a/a;->b(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;
    .locals 6

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "qq.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 32
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "HttpDns(domain:%s) start."

    invoke-static {v3, v1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {p1, v3}, Lcom/tencent/itop/httpdns/base/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    const-string v4, "httpDnsUrl: %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->c()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->c()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 42
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 43
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string v1, "rspContent: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {p1, v3}, Lcom/tencent/itop/httpdns/base/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/b/c/b;->a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 49
    :catch_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 53
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    :goto_1
    return-object p1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 57
    :catch_3
    :cond_2
    throw p1

    .line 30
    :cond_3
    :goto_3
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1

    return-object p1
.end method
