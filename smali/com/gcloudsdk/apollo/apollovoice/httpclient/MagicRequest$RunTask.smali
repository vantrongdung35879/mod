.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;
.super Ljava/lang/Object;
.source "MagicRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunTask"
.end annotation


# instance fields
.field private mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    return-void
.end method

.method private dealTask()V
    .locals 9

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rsts http begin, seq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget v1, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget-object v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 115
    const-string v1, "reqConnURL"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    const/4 v1, 0x4

    move-object v3, v0

    const/4 v4, 0x4

    goto/16 :goto_11

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 127
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "After open Connection With URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget-object v3, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 129
    const-string/jumbo v1, "urlConn == null"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    const/4 v1, 0x3

    move-object v3, v0

    const/4 v4, 0x3

    goto/16 :goto_11

    .line 136
    :cond_1
    :try_start_2
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_12

    .line 144
    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget-object v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mToken:Ljava/lang/String;

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 149
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget v2, v2, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 153
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    .line 163
    :try_start_4
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget-object v3, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mContent:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 174
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :goto_2
    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    .line 188
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x1000

    .line 189
    new-array v4, v4, [B

    .line 192
    :goto_3
    :try_start_7
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2

    .line 193
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 195
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz v1, :cond_3

    .line 215
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v4

    .line 198
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 203
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :goto_7
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    if-eqz v1, :cond_4

    .line 215
    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_9
    const/4 v1, 0x6

    const/4 v4, 0x6

    goto :goto_11

    .line 203
    :goto_a
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_b

    :catch_a
    move-exception v3

    .line 205
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :goto_b
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    if-eqz v1, :cond_5

    .line 215
    :try_start_11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_d

    :catch_c
    move-exception v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    :cond_5
    :goto_d
    throw v0

    :catch_d
    move-exception v1

    .line 183
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x1

    move-object v3, v0

    const/4 v4, 0x1

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v1

    .line 167
    :try_start_12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 172
    :try_start_13
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_e

    :catch_f
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    const/4 v1, 0x7

    move-object v3, v0

    const/4 v4, 0x7

    goto :goto_11

    .line 172
    :goto_f
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    :goto_10
    throw v0

    :catch_11
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x9

    move-object v3, v0

    const/16 v4, 0x9

    goto :goto_11

    :catch_12
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    const/16 v1, 0xa

    move-object v3, v0

    const/16 v4, 0xa

    .line 223
    :goto_11
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;->access$006(Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;)I

    .line 224
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;)J

    move-result-wide v1

    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget-object v5, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mSession:Ljava/lang/String;

    iget-object v6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget v6, v6, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mSeq:I

    iget-object v7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->mTask:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;

    iget v7, v7, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mEnd:I

    if-nez v3, :cond_6

    goto :goto_12

    :cond_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_12
    move-object v8, v0

    move-wide v2, v1

    invoke-static/range {v2 .. v8}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;->response(JILjava/lang/String;II[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$RunTask;->dealTask()V

    return-void
.end method
