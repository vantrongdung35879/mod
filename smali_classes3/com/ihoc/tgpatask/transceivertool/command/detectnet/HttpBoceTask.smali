.class public Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "HttpBoceTask.java"


# instance fields
.field private extraInfoParam:Ljava/lang/String;

.field private headInfoParam:Ljava/lang/String;

.field private md5Param:Ljava/lang/String;

.field private methodParam:Ljava/lang/String;

.field private rangeEndParam:I

.field private rangeStartParam:I

.field private sensitiveInfoParam:Ljava/lang/String;

.field private srcFileTotalParam:Ljava/lang/String;

.field private srcNwsInfoParam:Ljava/lang/String;

.field private urlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->methodParam:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->md5Param:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->headInfoParam:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->extraInfoParam:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcFileTotalParam:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcNwsInfoParam:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->sensitiveInfoParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    .line 40
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    .line 52
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->name:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskScene:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    .line 55
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->type:Ljava/lang/String;

    .line 56
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 57
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    .line 60
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "domain_url"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "file_range"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "method"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "src_md5"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "src_filesize"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "src_filetotal"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "src_nwsinfo"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_md5"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_filesize"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_location"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_filetotal"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_nwsinfo"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "connect_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "download_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_httpcode"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private generateHeaderMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 285
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getPartRange(Ljava/lang/String;IILjava/util/HashMap;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 293
    const-string/jumbo v0, "x-nws-log-uuid"

    const-string v1, "content-range"

    sub-int v2, p3, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0xf4240

    if-le v2, v4, :cond_0

    const v2, 0xf4240

    .line 298
    :cond_0
    new-array v2, v2, [B

    const/4 v4, 0x0

    .line 303
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 305
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v8, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v5, 0x3e8

    .line 309
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0xbb8

    .line 310
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 311
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 312
    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    const-string p4, "Range"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "bytes=%d-%d"

    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    aput-object p3, v7, v3

    .line 314
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 318
    iget-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p4, "server_addr"

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p3, "client_addr"

    if-eqz p2, :cond_2

    .line 320
    :try_start_1
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object p4

    iget-object p4, p4, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 322
    :cond_2
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object p4

    iget-object p4, p4, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 326
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 327
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 330
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p4

    .line 332
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v5, "dst_filesize"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_location"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_httpcode"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 337
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_filetotal"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 341
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "dst_nwsinfo"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_4
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    :try_start_2
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v0, "download_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, p4

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v4, p4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 349
    :goto_2
    :try_start_4
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_5

    .line 354
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-object v2

    :goto_4
    if-eqz v4, :cond_6

    .line 354
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 357
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    :cond_6
    :goto_5
    throw p1
.end method

.method private postPartRange(Ljava/lang/String;IILjava/util/HashMap;Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0xf4240

    if-le v0, v2, :cond_0

    const v0, 0xf4240

    .line 371
    :cond_0
    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 376
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 378
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v3, 0x3e8

    .line 382
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 383
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 384
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    const-string p4, "Range"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "bytes=%d-%d"

    .line 388
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object p3, v5, v1

    .line 387
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 391
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 392
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 394
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 395
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 398
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance p4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 400
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/io/OutputStream;->write([B)V

    .line 401
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 402
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 404
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p4

    .line 405
    iget-object p5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "dst_filesize"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p5, "dst_location"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p5, "dst_httpcode"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    iget-object p5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 412
    iget-object p5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "download_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 415
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p3, "server_addr"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :try_start_2
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, p4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 417
    :goto_1
    :try_start_3
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 421
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0

    :goto_3
    if-eqz v2, :cond_3

    .line 421
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 424
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :cond_3
    :goto_4
    throw p1
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "method"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 198
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    goto/16 :goto_2

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->methodParam:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "md5"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    goto/16 :goto_2

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->md5Param:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 211
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_f

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "rangeStart"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0xf4240

    if-gt v0, v2, :cond_e

    if-gez v0, :cond_5

    goto/16 :goto_1

    .line 225
    :cond_5
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v4, "rangeEnd"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_d

    if-gez v0, :cond_6

    goto/16 :goto_0

    .line 237
    :cond_6
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "headInfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->headInfoParam:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "extraInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_8

    .line 249
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->extraInfoParam:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "srcFileTotal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 254
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcFileTotalParam:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "srcNwsInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 259
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcNwsInfoParam:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 265
    :cond_b
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_c
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->sensitiveInfoParam:Ljava/lang/String;

    return v3

    :cond_d
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_1
    return v1

    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    return v1
.end method

.method public executeTask()V
    .locals 21

    move-object/from16 v7, p0

    .line 93
    const-string v0, "dst_md5"

    const-string v8, "network_type"

    const-string v9, "event_total_time"

    const-string v10, "event_code"

    const-string v11, "TaskId=%d End! "

    const-string v1, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 94
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v4, 0x1

    aput-object v5, v14, v4

    const/4 v5, 0x2

    aput-object v6, v14, v5

    .line 94
    const-string v6, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v3, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "server_addr"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "local_dns"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "domain_url"

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "file_range"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v14, "%d-%d"

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v15, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v18, v8

    new-array v8, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v8, v17

    const/4 v4, 0x1

    aput-object v15, v8, v4

    .line 103
    invoke-static {v6, v14, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "method"

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->methodParam:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "src_md5"

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->md5Param:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "src_filesize"

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    iget v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    sub-int/2addr v4, v6

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "src_filetotal"

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcFileTotalParam:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "src_nwsinfo"

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->srcNwsInfoParam:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_filesize"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_location"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_filetotal"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dst_nwsinfo"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->sensitiveInfoParam:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/util/SensitiveInfoMaganer;->getGdprInfo([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 117
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "dns_resolve_time"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "connect_time"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v3, "download_time"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v2, "client_addr"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    const-string v1, "forbidden task type %s"

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->name:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v11, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 128
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->checkDetectValidByWhiteList(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_1

    .line 129
    :try_start_2
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    const-string v1, "Taskid=%d Failed: checkDetectValidByWhiteList false"

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->status:I

    .line 131
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_IP_NOT_IN_WHITELIST:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v11, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    const/4 v4, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x1

    .line 135
    :try_start_3
    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    sub-int v3, v1, v2

    if-ltz v3, :cond_7

    sub-int/2addr v1, v2

    const v2, 0xf423f

    if-le v1, v2, :cond_2

    goto/16 :goto_1

    .line 145
    :cond_2
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->headInfoParam:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->generateHeaderMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 147
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->methodParam:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v8, "-1"

    const-string v14, "206"

    const-string v15, "dst_httpcode"

    if-nez v1, :cond_4

    .line 148
    :try_start_4
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    invoke-direct {v7, v1, v2, v3, v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->getPartRange(Ljava/lang/String;IILjava/util/HashMap;)[B

    move-result-object v1

    .line 149
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 150
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->md5([B)Ljava/lang/String;

    move-result-object v8

    :cond_3
    move-object/from16 v20, v9

    const/4 v9, 0x1

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->methodParam:Ljava/lang/String;

    const-string v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 155
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->urlParam:Ljava/lang/String;

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeStartParam:I

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->rangeEndParam:I

    move-object/from16 v16, v8

    iget-object v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->extraInfoParam:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v9

    const/4 v9, 0x1

    move/from16 v4, v19

    move-object v5, v6

    move-object v6, v8

    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->postPartRange(Ljava/lang/String;IILjava/util/HashMap;Ljava/lang/String;)[B

    move-result-object v1

    .line 156
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 157
    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->md5([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    move-object/from16 v8, v16

    .line 168
    :goto_0
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->status:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v11, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, v20

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v1, v20

    goto/16 :goto_4

    :cond_6
    move-object v1, v9

    const/4 v9, 0x1

    .line 162
    :try_start_6
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "TaskId=%d Failed: unsupport method"

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->status:I

    .line 164
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    :goto_1
    move-object v1, v9

    const/4 v9, 0x1

    .line 137
    :try_start_7
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "TaskId=%d Failed: response range error"

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 137
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->status:I

    .line 140
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_2
    move-object v1, v9

    const/4 v9, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_3
    move-object v1, v9

    const/4 v9, 0x1

    .line 174
    :goto_4
    :try_start_8
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->status:I

    .line 175
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    .line 176
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "TaskId=%d Fail:%s"

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    aput-object v0, v6, v9

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 178
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    :catchall_3
    move-exception v0

    .line 178
    :goto_6
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    throw v0
.end method
