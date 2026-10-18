.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;
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

.field private final HTTP_CANNOT_FIND_FILE:I

.field private final HTTP_NO_HEADER_ERROR:I

.field private final HTTP_OK:I

.field private final HTTP_OPEN_FILE_OTERH_EXCEPTION:I

.field private final HTTP_OPEN_FILE_SECURITY_EXCEPTION:I

.field private final HTTP_POST_OTHER_EXCEPTION:I

.field private final HTTP_READ_AND_WRITE_DATA_EXCEPTION:I

.field private final HTTP_RESPONSE_ERROR_404:I

.field private final HTTP_RESPONSE_FILE_NOT_FOUND_EXCEPTION:I

.field private final HTTP_RESPONSE_OTHER_EXCEPTION:I

.field private final HTTP_TIMEOUT_EXCEPTION:I

.field private final HTTP_UNKNOWN_HOST_EXCEPTION:I

.field private final HTTP_WRITE_FILE_ACCESS_EXCEPTION:I

.field private final HTTP_WRITE_FILE_OTHER_EXCEPTION:I

.field private final HTTP_WRITE_FILE_SECURITY_EXCEPTION:I

.field private body:[B

.field private delegate:J

.field private getFilePath:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private postFilePath:Ljava/lang/String;

.field private reqConnURL:Ljava/net/URL;

.field private response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

.field private timeout:I

.field private urlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_SUCC:I

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_FAIL:I

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_TIMEOUT:I

    const/4 v1, 0x3

    .line 32
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_INVALIED_HOST:I

    const/4 v1, 0x4

    .line 33
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_INVALIED_URL:I

    const/4 v1, 0x5

    .line 34
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_NOHEADERS:I

    const/4 v1, 0x6

    .line 35
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_READBODY:I

    const/4 v1, 0x7

    .line 36
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_SEND_INCOMPLETE:I

    const/16 v1, 0x8

    .line 37
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_GET_CREATEFILE:I

    const/16 v1, 0x9

    .line 38
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_GET_WRITEFILE:I

    const/16 v1, 0xa

    .line 39
    iput v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_POST_READFILE:I

    .line 41
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_OK:I

    const/16 v0, -0x64

    .line 42
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_CANNOT_FIND_FILE:I

    const/16 v0, -0x65

    .line 43
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_OPEN_FILE_SECURITY_EXCEPTION:I

    const/16 v0, -0x66

    .line 44
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_OPEN_FILE_OTERH_EXCEPTION:I

    const/16 v0, -0x67

    .line 45
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_UNKNOWN_HOST_EXCEPTION:I

    const/16 v0, -0x68

    .line 46
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_TIMEOUT_EXCEPTION:I

    const/16 v0, -0x69

    .line 47
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_POST_OTHER_EXCEPTION:I

    const/16 v0, -0x6a

    .line 48
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_NO_HEADER_ERROR:I

    const/16 v0, -0x6b

    .line 49
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_RESPONSE_ERROR_404:I

    const/16 v0, -0x6c

    .line 50
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_RESPONSE_FILE_NOT_FOUND_EXCEPTION:I

    const/16 v0, -0x6d

    .line 51
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_RESPONSE_OTHER_EXCEPTION:I

    const/16 v0, -0x6e

    .line 52
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_WRITE_FILE_ACCESS_EXCEPTION:I

    const/16 v0, -0x6f

    .line 53
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_WRITE_FILE_SECURITY_EXCEPTION:I

    const/16 v0, -0x70

    .line 54
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_WRITE_FILE_OTHER_EXCEPTION:I

    const/16 v0, -0x71

    .line 55
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->HTTP_READ_AND_WRITE_DATA_EXCEPTION:I

    return-void
.end method

.method static synthetic access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)[B
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->body:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static native response(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
.end method


# virtual methods
.method public addHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getFile(Ljava/lang/String;)V
    .locals 1

    .line 133
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->setMethod(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public initWithURL(Ljava/lang/String;I)I
    .locals 3

    .line 71
    new-instance v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    .line 72
    iput-object p1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    .line 73
    const-string v0, "GET"

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->timeout:I

    .line 76
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v1, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->reqConnURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->reqConnURL:Ljava/net/URL;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 82
    const-string p1, "reqConnURL"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "After open Connection With URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_1

    .line 94
    const-string/jumbo p1, "urlConn == null"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v1

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/HttpsUtils;->connnectWithIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_2

    .line 104
    :try_start_2
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/HttpsUtils;->getHostNameVerify(Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 106
    const-string v0, "Maybe HttpsUtils\'s HostnameVerifier or SSLSocketFactory is null!"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 110
    :cond_2
    const-string/jumbo p1, "urlConn is not an instance of HttpsURLConnection."

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 115
    :cond_3
    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 123
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    const-string v0, "POST"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 124
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return v1

    :catch_2
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    return v1

    :catch_3
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public postFile(Ljava/lang/String;)V
    .locals 1

    .line 138
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->setMethod(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public response2cpp(I)V
    .locals 12

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]response2cpp with result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 155
    iget-wide v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget v3, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v4, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget v5, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I

    iget-object v6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v6, v6, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCodeMsg:Ljava/lang/String;

    iget-object v7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v7, v7, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, ""

    move v0, p1

    invoke-static/range {v0 .. v10}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    iget-wide v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget v4, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v5, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    iget-object v6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget v6, v6, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I

    iget-object v7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v7, v7, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCodeMsg:Ljava/lang/String;

    iget-object v8, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v8, v8, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    iget-object v9, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v9, v9, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->version:Ljava/lang/String;

    iget-object v10, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    iget-object v10, v10, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->body:[B

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    move v0, p1

    move-wide v1, v2

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-static/range {v0 .. v10}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public sendRequest()V
    .locals 1

    .line 143
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendRequest(Ljava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;

    invoke-direct {v1, p0, p1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;-><init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;Ljava/lang/String;)V

    const-string p1, "GVoiceRequest"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBody([B)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->body:[B

    return-void
.end method

.method public setDelegate(J)V
    .locals 0

    .line 184
    iput-wide p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    .line 173
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    return-void
.end method
