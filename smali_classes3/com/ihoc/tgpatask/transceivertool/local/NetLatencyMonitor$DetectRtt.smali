.class Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectRtt"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mapIndex:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 169
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string p1, ""

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->ip:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->host:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->port:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 172
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 173
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->host:Ljava/lang/String;

    iget-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->port:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p3, v0, p2

    const-string p1, "%s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->host:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 181
    const-string v0, "Exception:"

    const/4 v1, 0x0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->host:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->ip:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->port:Ljava/lang/String;

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    .line 187
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->ip:Ljava/lang/String;

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->port:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x400

    .line 188
    new-array v6, v5, [B

    .line 190
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    .line 191
    sget-object v7, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v8, "contentBytes generate error"

    invoke-static {v7, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    new-instance v7, Ljava/net/DatagramPacket;

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)[B

    move-result-object v9

    array-length v9, v9

    invoke-direct {v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 195
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v6, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 199
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v5

    .line 202
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$400(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 206
    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    .line 207
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 210
    :cond_2
    invoke-virtual {v1, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 211
    invoke-virtual {v1, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 213
    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v11}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;

    sub-long v12, v9, v5

    invoke-virtual {v11, v12, v13}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->refreshRttInfo(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 215
    :try_start_4
    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 217
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v11

    if-nez v11, :cond_3

    .line 218
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 220
    :cond_3
    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 221
    :try_start_5
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v11

    .line 224
    :goto_1
    :try_start_6
    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v11}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v9, v5

    sub-long/2addr v11, v9

    cmp-long v5, v11, v3

    if-lez v5, :cond_1

    .line 226
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v11

    goto/16 :goto_5

    .line 230
    :cond_4
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 231
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move-object v1, v5

    goto/16 :goto_5

    .line 236
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$400(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 238
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v8

    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->ip:Ljava/lang/String;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)[B

    move-result-object v10

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v13

    const/4 v11, 0x1

    const/16 v12, 0x32

    invoke-virtual/range {v8 .. v13}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_7

    .line 239
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v5, :cond_7

    const-string v10, "-1.000"

    invoke-virtual {v2, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v10, :cond_6

    goto :goto_3

    .line 243
    :cond_6
    :try_start_7
    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "\\."

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aget-object v2, v2, v10

    .line 244
    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v10}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->refreshRttInfo(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 246
    :catch_3
    :try_start_8
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;

    invoke-virtual {v2, v8, v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->refreshRttInfo(J)V

    goto :goto_4

    .line 240
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->mapIndex:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;

    invoke-virtual {v2, v8, v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->refreshRttInfo(J)V

    .line 250
    :goto_4
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v2

    int-to-long v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    sub-long/2addr v8, v10

    cmp-long v2, v8, v3

    if-lez v2, :cond_5

    .line 252
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v2

    .line 257
    :goto_5
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    if-eqz v1, :cond_9

    .line 263
    :try_start_9
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_7
    return-void
.end method
