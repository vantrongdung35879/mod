.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
.end annotation


# instance fields
.field private filepath:Ljava/lang/String;

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_34
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v4, "POST"

    const-string v5, ""

    if-eq v3, v5, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_34
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-ne v3, v4, :cond_0

    const/16 v3, 0xa

    .line 210
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_37
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 227
    :try_start_3
    const-string v5, "Post File,open file other exception"

    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const/16 v5, -0x66

    iput v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 230
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const-string v5, "open file other exception"

    iput-object v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v4, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    return-void

    :catch_1
    move-exception v4

    .line 220
    const-string v5, "Post File,open file security exception"

    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 222
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const/16 v5, -0x65

    iput v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 223
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const-string v5, "open file security exception"

    iput-object v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v4, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    return-void

    :catch_2
    move-exception v4

    .line 213
    const-string v5, "Post File,open file cannot find file"

    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 215
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const/16 v5, -0x64

    iput v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 216
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const-string v5, "open file cannot find file"

    iput-object v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v4, v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_34
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    return-void

    :cond_0
    move-object v6, v2

    .line 236
    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)[B

    move-result-object v3

    const/4 v7, -0x1

    const/16 v8, 0x5dc

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_31
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 238
    :try_start_5
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 239
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_33

    :catch_3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2a

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2d

    :catch_5
    move-exception v1

    move-object v2, v3

    goto/16 :goto_30

    .line 240
    :cond_1
    :try_start_6
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v3

    if-ne v3, v4, :cond_3

    if-eqz v6, :cond_3

    .line 241
    new-array v3, v8, [B

    .line 243
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v10}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_31
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 244
    :goto_1
    :try_start_7
    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-eq v10, v7, :cond_2

    .line 245
    invoke-virtual {v4, v3, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 246
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_33

    :catch_6
    move-exception v0

    move-object v2, v4

    goto/16 :goto_2a

    :catch_7
    move-exception v0

    move-object v2, v4

    goto/16 :goto_2d

    :catch_8
    move-exception v1

    move-object v2, v4

    goto/16 :goto_30

    .line 249
    :cond_3
    :try_start_8
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v3

    if-nez v3, :cond_5

    .line 250
    const-string/jumbo v3, "urlConn is null"

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_31
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v6, :cond_4

    .line 286
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_2

    :catch_9
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    .line 253
    :cond_5
    :try_start_a
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_31
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_6

    .line 280
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_4

    :catch_a
    move-exception v3

    .line 282
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 286
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_5

    :catch_b
    move-exception v3

    .line 288
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    :cond_7
    :goto_5
    :try_start_d
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_6

    :catch_c
    move-exception v3

    .line 299
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_1f

    .line 302
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_8

    goto/16 :goto_29

    .line 310
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 311
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 314
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    .line 317
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v5

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 318
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_9
    move-object v10, v5

    :cond_a
    if-nez v6, :cond_b

    .line 322
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const-string v6, "\\ "

    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    iput-object v6, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->version:Ljava/lang/String;

    goto :goto_7

    .line 324
    :cond_b
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    iget-object v4, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->headers:Ljava/util/Map;

    invoke-interface {v4, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 329
    :cond_c
    :try_start_e
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v3

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_9

    :catch_d
    move-exception v3

    .line 332
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const-string v3, "getResponseCode exception."

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 336
    :goto_9
    :try_start_f
    iget-object v3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v3}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v3

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCodeMsg:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_a

    :catch_e
    move-exception v3

    .line 339
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const-string v3, "getResponseMessage exception."

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 343
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResponse code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    iget v4, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    iget-object v4, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCodeMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 349
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    new-array v4, v8, [B

    .line 354
    :try_start_10
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v8}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_20
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 377
    :try_start_11
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    if-eq v0, v5, :cond_10

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1f
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-ne v0, v1, :cond_10

    const/16 v0, 0x8

    .line 379
    :try_start_12
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 381
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object v2, v5

    goto/16 :goto_14

    :catch_f
    move-exception v1

    .line 398
    :try_start_13
    const-string v4, "Write File,access file other exception"

    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const/16 v4, -0x70

    iput v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 401
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const-string v4, "access file other exception"

    iput-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1f
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 430
    :try_start_14
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_b

    :catch_10
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_b
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_c

    :catch_11
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_c
    :try_start_16
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_d

    :catch_12
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_d
    return-void

    :catch_13
    move-exception v1

    .line 391
    :try_start_17
    const-string v4, "Write File,access file security exception"

    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 393
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const/16 v4, -0x6f

    iput v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 394
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const-string v4, "access file security exception"

    iput-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1f
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 430
    :try_start_18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_e

    :catch_14
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_e
    :try_start_19
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_f

    :catch_15
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_f
    :try_start_1a
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_10

    :catch_16
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_10
    return-void

    :catch_17
    move-exception v1

    .line 384
    :try_start_1b
    const-string v4, "Write File,Create File Error"

    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 386
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const/16 v4, -0x6e

    iput v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 387
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const-string v4, "access file cannot find file exception"

    iput-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 430
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_11

    :catch_18
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_11
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_12
    :try_start_1e
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_13

    :catch_1a
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_13
    return-void

    .line 407
    :cond_10
    :goto_14
    :try_start_1f
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v7, :cond_12

    if-nez v2, :cond_11

    .line 410
    invoke-virtual {v3, v4, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 411
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_14

    :cond_11
    if-eqz v2, :cond_10

    .line 414
    invoke-virtual {v2, v4, v9, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 415
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_14

    .line 419
    :cond_12
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->body:[B

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java body size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->body:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 430
    :try_start_20
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b

    goto :goto_15

    :catch_1b
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    if-eqz v2, :cond_13

    .line 435
    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c

    goto :goto_16

    :catch_1c
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :cond_13
    :goto_16
    :try_start_22
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1d

    goto :goto_17

    :catch_1d
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_17
    :try_start_23
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1e

    goto :goto_18

    :catch_1e
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    :cond_14
    :goto_18
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    iput v9, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 454
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string v1, "http ok"

    iput-object v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v0, v9}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    return-void

    :catch_1f
    move-exception v0

    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto/16 :goto_24

    :catch_20
    move-exception v0

    .line 370
    :try_start_24
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const/16 v5, -0x6d

    iput v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 371
    iget-object v4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v4}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v4

    const-string v5, "getInputStream other exception."

    iput-object v5, v4, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_28
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 430
    :try_start_25
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_21

    goto :goto_19

    :catch_21
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_19
    :try_start_26
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_22

    goto :goto_1a

    :catch_22
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_1a
    return-void

    :catch_23
    move-exception v4

    .line 356
    :try_start_27
    iget-object v5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v5}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v5

    iget v5, v5, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I

    const/16 v6, 0x194

    if-ne v5, v6, :cond_17

    .line 357
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const/16 v4, -0x6b

    iput v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 358
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const-string v4, "getInputStream 404."

    iput-object v4, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_28
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 430
    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_24

    goto :goto_1b

    :catch_24
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_1b
    :try_start_29
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    goto :goto_1c

    :catch_25
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_1c
    return-void

    .line 362
    :cond_17
    :try_start_2a
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const/16 v5, -0x6c

    iput v5, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 363
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string v5, "getInputStream file not found exception."

    iput-object v5, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 364
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 365
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_28
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 430
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_26

    goto :goto_1d

    :catch_26
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_1d
    :try_start_2c
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_27

    goto :goto_1e

    :catch_27
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_1e
    return-void

    :catch_28
    move-exception v0

    move-object v6, v2

    .line 423
    :goto_1f
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const/16 v1, -0x71

    iput v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 425
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string v1, "read http data and write data to file exception"

    iput-object v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    .line 430
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_29

    goto :goto_20

    :catch_29
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    if-eqz v2, :cond_19

    .line 435
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2a

    goto :goto_21

    :catch_2a
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_21
    if-eqz v6, :cond_1a

    .line 442
    :try_start_30
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2b

    goto :goto_22

    :catch_2b
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :cond_1a
    :goto_22
    :try_start_31
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2c

    goto :goto_23

    :catch_2c
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_23
    return-void

    :catchall_3
    move-exception v0

    .line 430
    :goto_24
    :try_start_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2d

    goto :goto_25

    :catch_2d
    move-exception v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    if-eqz v2, :cond_1c

    .line 435
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_2e

    goto :goto_26

    :catch_2e
    move-exception v1

    .line 438
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_26
    if-eqz v6, :cond_1d

    .line 442
    :try_start_34
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2f

    goto :goto_27

    :catch_2f
    move-exception v1

    .line 444
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :cond_1d
    :goto_27
    :try_start_35
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_30

    goto :goto_28

    :catch_30
    move-exception v1

    .line 450
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :cond_1e
    :goto_28
    throw v0

    .line 304
    :cond_1f
    :goto_29
    const-string v0, "headerFields == null || headerFields.entrySet() == null"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const/16 v1, -0x6a

    iput v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 306
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string v1, "no header error"

    iput-object v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    return-void

    :catch_31
    move-exception v0

    goto :goto_2a

    :catch_32
    move-exception v0

    goto :goto_2d

    :catch_33
    move-exception v1

    goto/16 :goto_30

    :catchall_4
    move-exception v0

    move-object v6, v2

    goto/16 :goto_33

    :catch_34
    move-exception v0

    move-object v6, v2

    .line 272
    :goto_2a
    :try_start_36
    const-string v3, "Post File,other exception"

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const/16 v3, -0x69

    iput v3, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 275
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string v3, "other exception"

    iput-object v3, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_5

    if-eqz v2, :cond_20

    .line 280
    :try_start_37
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_35

    goto :goto_2b

    :catch_35
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_2b
    if-eqz v6, :cond_21

    .line 286
    :try_start_38
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_36

    goto :goto_2c

    :catch_36
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_2c
    return-void

    :catch_37
    move-exception v0

    move-object v6, v2

    .line 265
    :goto_2d
    :try_start_39
    const-string v1, "Post File,timeout exception"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 267
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const/16 v1, -0x68

    iput v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 268
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v0

    const-string/jumbo v1, "timeout exception"

    iput-object v1, v0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_5

    if-eqz v2, :cond_22

    .line 280
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_38

    goto :goto_2e

    :catch_38
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_2e
    if-eqz v6, :cond_23

    .line 286
    :try_start_3b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_39

    goto :goto_2f

    :catch_39
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_2f
    return-void

    :catch_3a
    move-exception v1

    move-object v6, v2

    .line 258
    :goto_30
    :try_start_3c
    const-string v3, "Post File,unknown host exception"

    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 260
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const/16 v3, -0x67

    iput v3, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 261
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-static {v1}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;)Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v1

    const-string/jumbo v3, "unknown host exception"

    iput-object v3, v1, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;

    invoke-virtual {v1, v0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_5

    if-eqz v2, :cond_24

    .line 280
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3b

    goto :goto_31

    :catch_3b
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_31
    if-eqz v6, :cond_25

    .line 286
    :try_start_3e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_3c

    goto :goto_32

    :catch_3c
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_32
    return-void

    :catchall_5
    move-exception v0

    :goto_33
    if-eqz v2, :cond_26

    .line 280
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3d

    goto :goto_34

    :catch_3d
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_34
    if-eqz v6, :cond_27

    .line 286
    :try_start_40
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_3e

    goto :goto_35

    :catch_3e
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    :cond_27
    :goto_35
    throw v0
.end method
