.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;
.super Ljava/lang/Object;
.source "ChunkedURLRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;
    }
.end annotation


# instance fields
.field private final AV_HTTP_STATUS_FAIL:I

.field private final AV_HTTP_STATUS_GET_CREATEFILE:I

.field private final AV_HTTP_STATUS_GET_WRITEFILE:I

.field private final AV_HTTP_STATUS_INVALIED_HOST:I

.field private final AV_HTTP_STATUS_INVALIED_URL:I

.field private final AV_HTTP_STATUS_NOHEADERS:I

.field private final AV_HTTP_STATUS_POST_READFILE:I

.field private final AV_HTTP_STATUS_READBODY:I

.field private final AV_HTTP_STATUS_SEND_INCOMPLETE:I

.field private final AV_HTTP_STATUS_SUCC:I

.field private final AV_HTTP_STATUS_TIMEOUT:I

.field private body:[B

.field private delegate:J

.field private method:Ljava/lang/String;

.field private reqConnURL:Ljava/net/URL;

.field private timeout:I

.field private url:Ljava/lang/String;

.field private urlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_SUCC:I

    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_FAIL:I

    const/4 v1, 0x2

    .line 25
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_TIMEOUT:I

    const/4 v1, 0x3

    .line 26
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_INVALIED_HOST:I

    const/4 v1, 0x4

    .line 27
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_INVALIED_URL:I

    const/4 v1, 0x5

    .line 28
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_NOHEADERS:I

    const/4 v1, 0x6

    .line 29
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_READBODY:I

    const/4 v1, 0x7

    .line 30
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_SEND_INCOMPLETE:I

    const/16 v1, 0x8

    .line 31
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_GET_CREATEFILE:I

    const/16 v1, 0x9

    .line 32
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_GET_WRITEFILE:I

    const/16 v1, 0xa

    .line 33
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->AV_HTTP_STATUS_POST_READFILE:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->reqConnURL:Ljava/net/URL;

    .line 36
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    .line 37
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->body:[B

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->delegate:J

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->method:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->url:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->timeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)[B
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->body:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->delegate:J

    return-wide v0
.end method

.method public static native chunkeddata(J[BI)V
.end method

.method public static native header(JLjava/lang/String;)V
.end method

.method public static native response(JI)V
.end method


# virtual methods
.method public addHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initWithURL(Ljava/lang/String;I)I
    .locals 4

    .line 48
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->url:Ljava/lang/String;

    .line 49
    const-string v0, "POST"

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->method:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->timeout:I

    const/4 v1, -0x1

    .line 52
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->reqConnURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 68
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "After open Connection With URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    if-nez p1, :cond_0

    .line 76
    const-string/jumbo p1, "urlConn == null"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v1

    .line 81
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 93
    :try_start_3
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_0
    :try_start_4
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    .line 107
    :try_start_5
    iget-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->method:Ljava/lang/String;

    if-ne p2, v0, :cond_1

    .line 108
    iget-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 109
    iget-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 113
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return p1

    :catch_3
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :catch_4
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    return v1

    :catch_5
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :catch_6
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :catch_7
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return v1
.end method

.method public quitHttp()V
    .locals 1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public response2cpp(I)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "url["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]response2cpp with result :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->delegate:J

    invoke-static {v0, v1, p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response(JI)V

    return-void
.end method

.method public sendRequest()V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;

    invoke-direct {v1, p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)V

    const-string v2, "GVoiceChunkedRequest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBody([B)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->body:[B

    return-void
.end method

.method public setDelegate(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->delegate:J

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->method:Ljava/lang/String;

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    return-void
.end method
