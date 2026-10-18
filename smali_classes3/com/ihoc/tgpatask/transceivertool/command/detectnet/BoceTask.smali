.class public Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "BoceTask.java"


# instance fields
.field private contentParam:Ljava/lang/String;

.field private countParam:I

.field private hasDevided:Z

.field private hostParam:Ljava/lang/String;

.field private intervalParam:I

.field private ipv4Param:Ljava/lang/String;

.field private ipv6Param:Ljava/lang/String;

.field private methodParam:Ljava/lang/String;

.field private portParam:I

.field private sensitiveInfoParam:Ljava/lang/String;

.field private timeoutParam:I

.field private v4v6Param:Ljava/lang/String;


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

    .line 46
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hasDevided:Z

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->methodParam:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hostParam:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->contentParam:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->portParam:I

    .line 30
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I

    .line 31
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->timeoutParam:I

    .line 32
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->intervalParam:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv6Param:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->name:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskScene:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    .line 50
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->type:Ljava/lang/String;

    .line 51
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 52
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    .line 55
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "protocol"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "port"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg_avg_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg_avg_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "connect_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkIpByLocalDns()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hostParam:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 274
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 277
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 286
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    goto :goto_2

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string/jumbo v1, "this device is not support ip v4!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_4

    .line 291
    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv6Param:Ljava/lang/String;

    goto :goto_3

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string/jumbo v1, "this device is not support ip v6!"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public checkParamValid()Z
    .locals 11

    .line 150
    const-string v0, "interval:10"

    const-string/jumbo v1, "timeout:1500"

    const-string v2, "count:3"

    const-string v3, "count"

    const-string v4, "interval"

    const-string/jumbo v5, "timeout"

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 154
    :cond_0
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v7

    .line 158
    :cond_1
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v8, "method"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x3

    if-eq v6, v9, :cond_2

    goto/16 :goto_a

    .line 163
    :cond_2
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->methodParam:Ljava/lang/String;

    .line 165
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v8, "host"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 166
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 167
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x1

    if-ge v6, v10, :cond_3

    goto/16 :goto_a

    .line 170
    :cond_3
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hostParam:Ljava/lang/String;

    .line 173
    :try_start_0
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v8, "port"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v8, 0xffff

    if-gt v6, v8, :cond_14

    if-ge v6, v10, :cond_4

    goto/16 :goto_9

    .line 177
    :cond_4
    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->portParam:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    :try_start_1
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x64

    if-gt v7, v8, :cond_6

    if-ge v7, v10, :cond_5

    goto :goto_0

    .line 191
    :cond_5
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I

    goto :goto_1

    .line 187
    :cond_6
    :goto_0
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 194
    :catch_0
    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I

    :goto_1
    const/16 v2, 0x7530

    const/16 v3, 0x5dc

    const/16 v7, 0xa

    .line 201
    :try_start_2
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 202
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v1, v7, :cond_7

    const/16 v3, 0xa

    goto :goto_2

    :cond_7
    if-le v1, v2, :cond_8

    goto :goto_2

    :cond_8
    move v3, v1

    .line 212
    :cond_9
    :goto_2
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->timeoutParam:I

    .line 213
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v1, "timeout:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 210
    :catch_1
    :try_start_3
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string v9, "parse timeout param exception!"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->timeoutParam:I

    .line 213
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v0, v7, :cond_a

    goto :goto_4

    :cond_a
    if-le v0, v2, :cond_b

    goto :goto_4

    :cond_b
    move v7, v0

    .line 230
    :cond_c
    :goto_4
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->intervalParam:I

    .line 231
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "interval:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :catchall_1
    move-exception v1

    goto/16 :goto_7

    .line 228
    :catch_2
    :try_start_5
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string v2, "parse interval param exception!"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->intervalParam:I

    .line 231
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_f

    .line 240
    :cond_e
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v2, "boce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "content:boce"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 244
    :cond_f
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->contentParam:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    .line 258
    :cond_11
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iput-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 265
    :cond_13
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "fixedParam"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    .line 230
    :goto_7
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->intervalParam:I

    .line 231
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    throw v1

    .line 212
    :goto_8
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->timeoutParam:I

    .line 213
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    throw v0

    :cond_14
    :goto_9
    return v7

    :catch_3
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_a
    return v7
.end method

.method public checkTCPResult(Ljava/util/ArrayList;)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 378
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 382
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 384
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 385
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    .line 386
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    add-int/lit8 v5, v5, 0x1

    .line 388
    const-string v9, "-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 389
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v0, v7

    .line 390
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_3
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "send_pkg"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "rece_pkg"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "send_pkg_total_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "rece_pkg_total_time"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string p1, "0"

    const-string v1, "send_pkg_avg_time"

    if-lez v5, :cond_4

    .line 400
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    int-to-float v4, v5

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_1
    const-string v0, "rece_pkg_avg_time"

    if-lez v6, :cond_5

    .line 405
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    int-to-float v1, v6

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 407
    :cond_5
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :goto_2
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1
.end method

.method public checkUDPResult(Ljava/util/ArrayList;)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;",
            ">;)",
            "Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;"
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 342
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 344
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 346
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;

    .line 347
    iget-boolean v6, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mResult:Z

    if-eqz v6, :cond_1

    .line 348
    iget-wide v6, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mSendTime:J

    long-to-float v6, v6

    add-float/2addr v0, v6

    .line 349
    iget-wide v5, v5, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mRecvTime:J

    long-to-float v5, v5

    add-float/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v2, "send_pkg"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v2, "rece_pkg"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v2, "send_pkg_total_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v2, "rece_pkg_total_time"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string p1, "0"

    const-string v2, "send_pkg_avg_time"

    if-lez v3, :cond_3

    .line 359
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_1
    const-string v0, "rece_pkg_avg_time"

    if-lez v4, :cond_4

    .line 364
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_2
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1
.end method

.method public executeTask()V
    .locals 15

    .line 86
    const-string v0, "port"

    const-string v1, "event_total_time"

    const-string v2, "event_code"

    const-string v3, "TaskId=%d End!"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v9, v11, v8

    const/4 v9, 0x2

    aput-object v10, v11, v9

    .line 87
    const-string v10, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "domain"

    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v11, "host"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "protocol"

    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    const-string v11, "method"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v6, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v7

    iget-object v7, v7, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v6, "client_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v7

    iget-object v7, v7, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->sensitiveInfoParam:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ihoc/tgpatask/transceivertool/util/SensitiveInfoMaganer;->getGdprInfo([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 99
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string v6, "forbidden task type %s"

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->name:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v12

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v12

    invoke-static {v6, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    iget v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v0

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hostParam:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->checkDetectValidByWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    const-string v6, "Taskid=%d Failed: checkDetectValidByWhiteList false"

    iget-wide v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v12

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->status:I

    .line 108
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_IP_NOT_IN_WHITELIST:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v12

    invoke-static {v6, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->checkIpByLocalDns()V

    .line 113
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    const-string v6, "all"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->shouldDevideV6Task()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hasDevided:Z

    .line 117
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p0, v0, v12}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->reallyExecuteTask(Ljava/lang/String;Z)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    const-string/jumbo v6, "v6"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv6Param:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {p0, v0, v8}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->reallyExecuteTask(Ljava/lang/String;Z)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    goto :goto_1

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    const-string/jumbo v6, "v4"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {p0, v0, v12}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->reallyExecuteTask(Ljava/lang/String;Z)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    goto :goto_1

    .line 132
    :cond_4
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_PARAM_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    .line 134
    :cond_5
    :goto_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->status:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v12

    invoke-static {v6, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->status:I

    .line 137
    sget-object v6, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    .line 138
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "TaskId=%d Fail:%s"

    iget-wide v13, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    .line 139
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v12

    aput-object v0, v9, v8

    .line 138
    invoke-static {v7, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v12

    invoke-static {v6, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    iget v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 141
    :goto_3
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v12

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    iget v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->errorCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    throw v0
.end method

.method public reallyExecuteTask(Ljava/lang/String;Z)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    const-string v0, "client_iptype"

    const-string v1, "local_dns"

    const-string v2, "client_addr"

    if-eqz p2, :cond_0

    .line 315
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "6"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    :cond_0
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v1, "4"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :goto_0
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->result:Ljava/util/HashMap;

    const-string v0, "server_addr"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->methodParam:Ljava/lang/String;

    const-string v0, "UDP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 326
    iget v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->portParam:I

    iget v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->contentParam:Ljava/lang/String;

    iget v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->timeoutParam:I

    iget v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->intervalParam:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;IILjava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->checkUDPResult(Ljava/util/ArrayList;)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object p1

    return-object p1

    .line 328
    :cond_1
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->methodParam:Ljava/lang/String;

    const-string v0, "TCP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 329
    iget p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->portParam:I

    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->countParam:I

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->contentParam:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->sendTCPClient(Ljava/lang/String;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 330
    invoke-virtual {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->checkTCPResult(Ljava/util/ArrayList;)Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    move-result-object p1

    return-object p1

    .line 332
    :cond_2
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    return-object p1
.end method

.method public shouldDevideV6Task()Z
    .locals 9

    .line 298
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv6Param:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 300
    new-instance v7, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->data:Ljava/util/HashMap;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 301
    const-string/jumbo v0, "v4v6"

    const-string/jumbo v2, "v6"

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    const-string v6, "boce"

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskScene:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 304
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->taskID:J

    .line 306
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->hostParam:Ljava/lang/String;

    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv4Param:Ljava/lang/String;

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->ipv6Param:Ljava/lang/String;

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/BoceTask;->v4v6Param:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    const/4 v1, 0x1

    aput-object v4, v8, v1

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v3, 0x3

    aput-object v6, v8, v3

    const/4 v3, 0x4

    aput-object v7, v8, v3

    .line 304
    const-string v3, "TaskId=%d Host %s has v6 ip,so auto add a new task ipv4=%s,ipv6=%s,v4v6=%s"

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
