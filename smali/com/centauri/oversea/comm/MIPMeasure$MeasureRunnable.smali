.class Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;
.super Ljava/lang/Object;
.source "MIPMeasure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/MIPMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureRunnable"
.end annotation


# instance fields
.field private callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

.field private ip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->ip:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    return-void
.end method

.method private createUrlStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/http_monitor.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 146
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->ip:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->createUrlStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v6, 0x2328

    .line 148
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 149
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 150
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 153
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v7, v6, :cond_1

    const/16 v6, 0x400

    .line 156
    new-array v6, v6, [B

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 159
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    .line 161
    :goto_0
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_0

    .line 162
    invoke-virtual {v7, v6, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v8

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    int-to-float v0, v4

    long-to-float v1, v8

    div-float/2addr v0, v1

    .line 168
    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    iget-object v4, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->ip:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v1, v4, v6, v0}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;->onMeasureFinish(Ljava/lang/String;ZF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v4

    :goto_1
    move-object v4, v5

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v7, v4

    :goto_2
    move-object v4, v5

    goto :goto_5

    .line 171
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;->onMeasureFinish(Ljava/lang/String;ZF)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v7, v4

    :goto_3
    if-eqz v4, :cond_2

    .line 178
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz v7, :cond_4

    .line 181
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v7, v4

    .line 174
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    iget-object v0, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->callback:Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;

    iget-object v1, p0, Lcom/centauri/oversea/comm/MIPMeasure$MeasureRunnable;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/centauri/oversea/comm/MIPMeasure$MeasureCallback;->onMeasureFinish(Ljava/lang/String;ZF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_3

    .line 178
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    if-eqz v7, :cond_4

    .line 181
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    return-void

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v4, :cond_5

    .line 178
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    if-eqz v7, :cond_6

    .line 181
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :cond_6
    :goto_a
    throw v0
.end method
