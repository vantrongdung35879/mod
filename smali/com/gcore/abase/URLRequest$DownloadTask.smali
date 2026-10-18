.class Lcom/gcore/abase/URLRequest$DownloadTask;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcore/abase/URLRequest;


# direct methods
.method constructor <init>(Lcom/gcore/abase/URLRequest;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 559
    const-string v2, "URLRequest"

    .line 0
    const-string v0, "bytes="

    const/4 v3, 0x0

    .line 564
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$000(Lcom/gcore/abase/URLRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 565
    iget-object v5, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$300(Lcom/gcore/abase/URLRequest;)I

    move-result v5

    if-nez v5, :cond_1

    .line 567
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 568
    :try_start_1
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$100(Lcom/gcore/abase/URLRequest;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 570
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$100(Lcom/gcore/abase/URLRequest;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 572
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6, v5}, Lcom/gcore/abase/URLRequest;->access$400(Lcom/gcore/abase/URLRequest;Ljava/net/HttpURLConnection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 574
    iget-object v7, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v7}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v13

    const/4 v10, 0x4

    invoke-static/range {v7 .. v14}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    .line 648
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 656
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v3

    .line 578
    :cond_2
    :try_start_3
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/gcore/abase/URLRequest;->access$302(Lcom/gcore/abase/URLRequest;I)I

    .line 579
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    :try_start_4
    iget-object v5, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$100(Lcom/gcore/abase/URLRequest;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 581
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 582
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$900(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0, v4}, Lcom/gcore/abase/URLRequest;->access$200(Lcom/gcore/abase/URLRequest;Ljava/net/HttpURLConnection;)V

    .line 585
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$1000(Lcom/gcore/abase/URLRequest;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "rwd"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    :try_start_5
    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$900(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 587
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v0, 0x1800

    .line 588
    new-array v0, v0, [B

    .line 590
    :cond_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x0

    .line 592
    invoke-virtual {v5, v0, v7, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 593
    iget-object v7, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Lcom/gcore/abase/URLRequest;->access$914(Lcom/gcore/abase/URLRequest;J)J

    .line 596
    iget-object v10, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v10}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v11

    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$900(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v13

    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v15

    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v17

    invoke-static/range {v10 .. v18}, Lcom/gcore/abase/URLRequest;->access$1100(Lcom/gcore/abase/URLRequest;JJJJ)V

    .line 597
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$300(Lcom/gcore/abase/URLRequest;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$300(Lcom/gcore/abase/URLRequest;)I

    move-result v6
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v6, :cond_3

    :cond_4
    if-eqz v3, :cond_5

    .line 645
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 651
    :cond_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 656
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    .line 605
    :cond_7
    :try_start_7
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v12

    const/4 v9, 0x0

    invoke-static/range {v6 .. v13}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V

    .line 606
    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$1200(Lcom/gcore/abase/URLRequest;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_8

    .line 645
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 651
    :cond_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 656
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    :goto_7
    move-object v5, v3

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v4, v5

    :goto_8
    move-object v5, v3

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v4, v5

    :goto_9
    move-object v5, v3

    goto/16 :goto_e

    :catch_9
    move-object v4, v5

    :catch_a
    move-object v5, v3

    goto/16 :goto_12

    :catch_b
    move-object v4, v5

    :catch_c
    move-object v5, v3

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    move-object v5, v4

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 635
    :goto_a
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    iget-object v7, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v7}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v13

    const/4 v10, 0x1

    invoke-static/range {v7 .. v14}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_a

    .line 645
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_e
    move-exception v0

    goto :goto_c

    :cond_a
    :goto_b
    if-eqz v4, :cond_b

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v5, :cond_c

    .line 651
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_d

    .line 656
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_d
    return-void

    :catch_f
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 626
    :goto_e
    :try_start_b
    const-string v6, "IOException"

    invoke-static {v2, v6}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    iget-object v7, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v7}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v13

    const/4 v10, 0x6

    invoke-static/range {v7 .. v14}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v3, :cond_d

    .line 645
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_f

    :catch_10
    move-exception v0

    goto :goto_10

    :cond_d
    :goto_f
    if-eqz v4, :cond_e

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    if-eqz v5, :cond_f

    .line 651
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_11

    .line 656
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_11
    return-void

    :catch_11
    move-object v4, v3

    move-object v5, v4

    .line 618
    :catch_12
    :goto_12
    :try_start_d
    const-string v0, "SocketTimeoutException"

    invoke-static {v2, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v12

    const/4 v9, 0x2

    invoke-static/range {v6 .. v13}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v3, :cond_10

    .line 645
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catch_13
    move-exception v0

    goto :goto_14

    :cond_10
    :goto_13
    if-eqz v4, :cond_11

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    if-eqz v5, :cond_12

    .line 651
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_15

    .line 656
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_15
    return-void

    :catch_14
    move-object v4, v3

    move-object v5, v4

    .line 610
    :catch_15
    :goto_16
    :try_start_f
    const-string v0, "UnknownHost"

    invoke-static {v2, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v6, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v6}, Lcom/gcore/abase/URLRequest;->access$500(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$600(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/gcore/abase/URLRequest$DownloadTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v0}, Lcom/gcore/abase/URLRequest;->access$700(Lcom/gcore/abase/URLRequest;)J

    move-result-wide v12

    const/4 v9, 0x3

    invoke-static/range {v6 .. v13}, Lcom/gcore/abase/URLRequest;->access$800(Lcom/gcore/abase/URLRequest;JIJJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v3, :cond_13

    .line 645
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_17

    :catch_16
    move-exception v0

    goto :goto_18

    :cond_13
    :goto_17
    if-eqz v4, :cond_14

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    if-eqz v5, :cond_15

    .line 651
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_16

    goto :goto_19

    .line 656
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_19
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_1a
    if-eqz v3, :cond_16

    .line 645
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1b

    :catch_17
    move-exception v0

    goto :goto_1c

    :cond_16
    :goto_1b
    if-eqz v4, :cond_17

    .line 648
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    if-eqz v5, :cond_18

    .line 651
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_17

    goto :goto_1d

    .line 656
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    :cond_18
    :goto_1d
    throw v2
.end method
