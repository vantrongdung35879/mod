.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;
.super Ljava/lang/Object;
.source "ChunkedURLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;


# direct methods
.method constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 181
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_10

    :catch_1
    move-object v1, v2

    goto/16 :goto_12

    :catch_2
    move-object v1, v2

    goto/16 :goto_14

    .line 183
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2

    if-nez v2, :cond_1

    .line 184
    const-string/jumbo v2, "urlConn is null"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 205
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    :cond_2
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v1, :cond_b

    .line 220
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_f

    .line 226
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 232
    const-string v4, ""

    if-eqz v2, :cond_5

    .line 233
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_4

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->header(JLjava/lang/String;)V

    goto :goto_3

    .line 244
    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    :goto_6
    :try_start_7
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    const/16 v0, 0x5dc

    .line 267
    new-array v0, v0, [B

    .line 270
    :goto_7
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)J

    move-result-wide v3

    invoke-static {v3, v4, v0, v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->chunkeddata(J[BI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 281
    :cond_7
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    :goto_8
    :try_start_a
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    .line 276
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 281
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    :goto_a
    :try_start_d
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_b
    return-void

    .line 281
    :goto_c
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_d

    :catch_c
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    :goto_d
    :try_start_f
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    :cond_a
    :goto_e
    throw v0

    :catch_e
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V

    return-void

    .line 222
    :cond_b
    :goto_f
    const-string v0, "headerFields == null || headerFields.entrySet() == null"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_16

    :catch_f
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 200
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v2, :cond_c

    .line 205
    :try_start_11
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_11
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_16

    .line 195
    :catch_11
    :goto_12
    :try_start_12
    const-string v0, "SocketTimeoutException"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v1, :cond_d

    .line 205
    :try_start_13
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_13
    return-void

    .line 191
    :catch_13
    :goto_14
    :try_start_14
    const-string v0, "UnknownHost"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/ChunkedURLRequest;->response2cpp(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v1, :cond_e

    .line 205
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    goto :goto_15

    :catch_14
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_15
    return-void

    :goto_16
    if-eqz v1, :cond_f

    .line 205
    :try_start_16
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    goto :goto_17

    :catch_15
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_f
    :goto_17
    throw v0
.end method
