.class Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;
.super Ljava/lang/Object;
.source "UdpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpDetectRtt"
.end annotation


# instance fields
.field mCallbackData:Lorg/json/JSONObject;

.field mDetailData:Lorg/json/JSONObject;

.field public mIsRunning:Z

.field mJsonData:Lorg/json/JSONObject;

.field private mStartTime:J

.field private rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

.field resCode:I

.field resMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;


# direct methods
.method public constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mIsRunning:Z

    .line 172
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mJsonData:Lorg/json/JSONObject;

    .line 173
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    .line 174
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    .line 176
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    .line 177
    const-string p1, "ok"

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    return-void
.end method

.method private reportData2Cloud()V
    .locals 6

    .line 309
    const-string v0, "localTaskApi"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 311
    const-string v3, "code"

    iget v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v3, "msg"

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mStartTime:J

    sub-long/2addr v1, v3

    .line 316
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string/jumbo v4, "type"

    const-string v5, "localMonitor"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v4, "cmd"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v4, "name"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v4, "param"

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v4, "invokeCode"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v4, "executeCode"

    iget v5, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v4, "executeTime"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 327
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Exception:%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mStartTime:J

    const/4 v4, 0x0

    .line 186
    :try_start_0
    new-instance v6, Ljava/net/DatagramPacket;

    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)[B

    move-result-object v0

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)[B

    move-result-object v7

    array-length v7, v7

    invoke-direct {v6, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/16 v0, 0x400

    .line 187
    new-array v7, v0, [B

    .line 188
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v7, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 189
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 190
    :try_start_1
    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mHost:Ljava/lang/String;

    iget-object v10, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v10, v10, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mPort:I

    invoke-direct {v9, v0, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 191
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 193
    :goto_0
    iget-boolean v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mIsRunning:Z

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 194
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v10, v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    new-array v11, v10, [J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    :try_start_2
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 202
    :goto_1
    :try_start_3
    iget-object v14, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v14, v14, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    if-ge v0, v14, :cond_2

    .line 203
    iget-object v14, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v14}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$400(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 206
    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 207
    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    .line 208
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v3, v5, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 210
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    array-length v3, v2

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    .line 212
    aget-object v12, v2, v4

    const/4 v3, 0x1

    .line 213
    aget-object v13, v2, v3

    .line 215
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    .line 216
    aput-wide v2, v11, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 221
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send/receive ERROR:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 219
    :goto_3
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send/receive IO ERROR:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 231
    :cond_2
    :goto_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v5, v10, :cond_8

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 233
    :try_start_6
    aget-wide v8, v11, v5

    long-to-int v9, v8

    if-eqz v3, :cond_3

    .line 236
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_6

    .line 239
    :cond_3
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    if-eqz v9, :cond_4

    add-int/lit8 v14, v14, 0x1

    :cond_4
    if-gt v2, v9, :cond_5

    if-nez v2, :cond_6

    :cond_5
    move v2, v9

    :cond_6
    if-ge v4, v9, :cond_7

    move v4, v9

    :cond_7
    int-to-float v8, v9

    add-float/2addr v15, v8

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :cond_8
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    if-eqz v14, :cond_9

    int-to-float v3, v14

    div-float v3, v15, v3

    move/from16 v16, v3

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    .line 257
    :goto_7
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    if-eqz v3, :cond_a

    .line 258
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0x64

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    div-int/2addr v3, v5

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    .line 260
    :goto_8
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$600(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)Lcom/ihoc/tgpatask/VmpCallback;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 261
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v8, "ip"

    iget-object v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget-object v9, v9, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v8, "raw_info"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v5, "local_ip"

    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v5, "local_port"

    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v5, "min_rtt"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v2, "max_rtt"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v2, "avg_rtt"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%.3f"

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v10, v9

    invoke-static {v4, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v2, "pkg_loss_rate"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v2, "send_pkg"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    iget v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->mCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    const-string v2, "rece_pkg"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string v2, "code"

    iget v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string v2, "msg"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string v2, "data"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mCallbackData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string v2, "param"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string v2, "cmd"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->rawData:Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mJsonData:Lorg/json/JSONObject;

    const-string v2, "localTaskApi"

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mDetailData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$600(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)Lcom/ihoc/tgpatask/VmpCallback;

    move-result-object v0

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->mJsonData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 283
    :goto_9
    :try_start_7
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback data parse ERROR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_b
    :goto_a
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 297
    :cond_c
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->reportData2Cloud()V

    .line 299
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v5, v7

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v5, v7

    goto :goto_d

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    .line 292
    :goto_b
    :try_start_9
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception:%s"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 297
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->reportData2Cloud()V

    if-eqz v5, :cond_d

    .line 299
    :goto_c
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_e

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    .line 288
    :goto_d
    :try_start_b
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resCode:I

    .line 289
    const-string v2, "Game stop udp detect, interrupt the monitor!"

    iput-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception:%s , %s"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->resMsg:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 297
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->reportData2Cloud()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v5, :cond_d

    goto :goto_c

    :catchall_4
    :cond_d
    :goto_e
    return-void

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpDetectRtt;->reportData2Cloud()V

    if-eqz v5, :cond_e

    .line 299
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 304
    :catchall_6
    :cond_e
    throw v0
.end method
