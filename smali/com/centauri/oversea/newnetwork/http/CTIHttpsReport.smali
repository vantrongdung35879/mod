.class public Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;
.super Ljava/lang/Thread;
.source "CTIHttpsReport.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APHttpsReport"


# instance fields
.field private httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private reportData:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->url:Ljava/net/URL;

    .line 30
    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    return-void
.end method

.method private constructUrl()V
    .locals 3

    .line 166
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getReportDomain()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/heartbeat/overseas_common_android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APHttpsReport"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private createSSLConnection()V
    .locals 3

    .line 73
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 76
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v1, "APHttpsReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseResponse()Ljava/lang/String;
    .locals 7

    const-string v0, "responseCode = "

    .line 121
    const-string v1, ""

    const/4 v2, 0x0

    .line 126
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    .line 128
    const-string v5, "APHttpsReport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_1

    const/16 v0, 0x400

    .line 132
    new-array v0, v0, [B

    .line 133
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 135
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 145
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 148
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 155
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v3, v2

    .line 141
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 145
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    .line 148
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :goto_4
    return-object v1

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v2, :cond_6

    .line 145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 148
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_8

    .line 151
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 155
    :goto_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    :cond_8
    :goto_8
    throw v0
.end method

.method private post()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->url:Ljava/net/URL;

    const-string v1, "APHttpsReport"

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "url is null."

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 94
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->createSSLConnection()V

    .line 95
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 96
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Content-Length"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 105
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->parseResponse()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    return-void

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 113
    :cond_2
    throw v0
.end method

.method private startReport()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->constructUrl()V

    .line 67
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->post()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ReportData: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APHttpsReport"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->start()V

    return-void
.end method

.method public report(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/centauri/oversea/comm/CTITools;->map2UrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "reportData: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->reportData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APHttpsReport"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpsReport;->startReport()V

    return-void
.end method
