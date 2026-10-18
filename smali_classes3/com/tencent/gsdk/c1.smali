.class public final Lcom/tencent/gsdk/c1;
.super Ljava/lang/Object;
.source "URLConnections.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 3
    invoke-static {p0}, Lcom/tencent/gsdk/c1;->a(Ljava/net/HttpURLConnection;)V

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/16 v0, 0x1388

    .line 4
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/gsdk/c1;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 2
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method
