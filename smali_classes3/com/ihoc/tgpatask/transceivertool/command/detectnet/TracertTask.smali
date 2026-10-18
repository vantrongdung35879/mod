.class public Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "TracertTask.java"


# static fields
.field static rMatchTtlExceed4:Ljava/lang/String; = "time to live exceeded"

.field static rMatchTtlExceed6:Ljava/lang/String; = "time exceeded: hop limit"

.field static rMatchTtlIp:Ljava/lang/String; = "icmp_seq=1 ttl="


# instance fields
.field countParam:I

.field private hasDevided:Z

.field hostParam:Ljava/lang/String;

.field maxHopsParam:I

.field methodParam:I

.field sensitiveInfoParam:Ljava/lang/String;

.field sizeParam:I

.field v4v6Param:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 23
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hasDevided:Z

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    .line 33
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    .line 34
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    .line 35
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    .line 47
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->name:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskScene:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    .line 50
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->type:Ljava/lang/String;

    .line 51
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    .line 52
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    .line 55
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "size"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "count"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "maxHops"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "method"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "trace_info"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doTraceCmd(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 9

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p4, v1, :cond_0

    .line 290
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v2

    new-array v4, p3, [B

    const/16 v6, 0xa

    const/16 v7, 0x12c

    move-object v3, p1

    move v5, p2

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->tracert(Ljava/lang/String;[BIIII)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p5, :cond_6

    const/16 v3, 0x20

    .line 294
    invoke-direct {p0, v1, v3, v2, p1}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->pingCmd(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 296
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    const-string/jumbo p2, "\u8c03\u7528\u6267\u884cping\u547d\u4ee4\u5f02\u5e38"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 301
    :cond_1
    invoke-direct {p0, v3}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x1e

    .line 310
    invoke-direct {p0, p2, p3, v4, v3}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->pingCmd(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-direct {p0, v4}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->parseDelayFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    :goto_1
    if-ne p4, v1, :cond_4

    goto :goto_3

    .line 306
    :cond_4
    const-string v4, "*"

    const-string v3, "***"

    .line 314
    :goto_2
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    aput-object v3, v5, v1

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const-string v4, "%d %s %s;"

    invoke-static {v6, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseDelayFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 436
    const-string/jumbo v0, "time="

    .line 437
    const-string v1, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 445
    :try_start_0
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 446
    const-string v6, "icmp_seq="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ttl="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    const-string v6, "%s %s"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v5, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 397
    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 403
    :try_start_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlExceed4:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ":"

    const-string v3, " "

    const-string v4, "\n"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 404
    :try_start_1
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlExceed4:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 405
    array-length v1, p1

    if-lez v1, :cond_2

    .line 406
    array-length v1, p1

    sub-int/2addr v1, v6

    aget-object p1, p1, v1

    .line 407
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v6

    goto :goto_0

    .line 409
    :cond_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlExceed6:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlExceed6:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 411
    array-length v1, p1

    if-lez v1, :cond_2

    .line 412
    array-length v1, p1

    sub-int/2addr v1, v6

    aget-object p1, p1, v1

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v6

    goto :goto_0

    .line 415
    :cond_1
    const-string/jumbo v1, "time="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlIp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->rMatchTtlIp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 417
    array-length v1, p1

    if-lez v1, :cond_2

    .line 418
    array-length v1, p1

    sub-int/2addr v1, v6

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 421
    array-length v1, p1

    sub-int/2addr v1, v6

    aget-object v0, p1, v1

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {v0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private pingCmd(IIILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    const-string v2, ":"

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string v2, "ping6"

    goto :goto_0

    .line 333
    :cond_0
    const-string v2, "ping"

    .line 337
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string p1, "-s"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string p1, "-i"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string p1, "0.2"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string p1, "-w"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string p1, "1"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string p1, "-t"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 356
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 359
    :try_start_1
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 360
    new-instance p4, Ljava/io/LineNumberReader;

    invoke-direct {p4, p3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 361
    :goto_1
    :try_start_2
    invoke-virtual {p4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v1, "\n"

    if-eqz p3, :cond_1

    .line 362
    :try_start_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :cond_1
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 367
    :try_start_4
    new-instance p1, Ljava/io/LineNumberReader;

    invoke-direct {p1, p3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 369
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 370
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 378
    :cond_2
    :try_start_6
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V

    if-eqz p2, :cond_3

    .line 381
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    .line 384
    :cond_3
    invoke-virtual {p1}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_6

    :catchall_0
    move-exception p4

    move-object v3, p4

    move-object p4, p1

    move-object p1, p3

    move-object p3, v3

    goto :goto_7

    :catch_0
    move-exception p4

    move-object v3, p4

    move-object p4, p1

    move-object p1, p3

    move-object p3, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_3

    :catch_2
    move-exception p3

    goto :goto_3

    :catchall_2
    move-exception p3

    move-object p4, p1

    goto :goto_7

    :catch_3
    move-exception p3

    move-object p4, p1

    goto :goto_3

    :catchall_3
    move-exception p3

    move-object p2, p1

    move-object p4, p2

    goto :goto_7

    :catch_4
    move-exception p3

    move-object p2, p1

    move-object p4, p2

    .line 374
    :goto_3
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p1, :cond_4

    .line 378
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz p2, :cond_5

    .line 381
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_5
    if-eqz p4, :cond_6

    .line 384
    invoke-virtual {p4}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    .line 387
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    :cond_6
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_4
    move-exception p3

    :goto_7
    if-eqz p1, :cond_7

    .line 378
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_8

    :catch_6
    move-exception p1

    goto :goto_9

    :cond_7
    :goto_8
    if-eqz p2, :cond_8

    .line 381
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_8
    if-eqz p4, :cond_9

    .line 384
    invoke-virtual {p4}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    .line 387
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    :cond_9
    :goto_a
    throw p3
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 13

    .line 195
    const-string v0, "size:16"

    const-string v1, "count:3"

    const-string v2, "method:1"

    const-string v3, "maxHops:30"

    const-string v4, "size"

    const-string v5, "count"

    const-string v6, "method"

    const-string v7, "maxHops"

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return v9

    .line 199
    :cond_0
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    return v9

    .line 203
    :cond_1
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string v10, "host"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x1

    if-ge v8, v11, :cond_2

    goto/16 :goto_8

    .line 206
    :cond_2
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x1e

    .line 211
    :try_start_0
    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x20

    if-gt v10, v12, :cond_4

    if-ge v10, v11, :cond_3

    goto :goto_0

    .line 217
    :cond_3
    iput v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    goto :goto_1

    .line 213
    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    :catch_0
    iget-object v10, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iput v9, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    .line 226
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x9

    if-gt v3, v7, :cond_6

    if-ge v3, v11, :cond_5

    goto :goto_2

    .line 232
    :cond_5
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    goto :goto_3

    .line 228
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iput v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 235
    :catch_1
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iput v11, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    :goto_3
    const/4 v2, 0x3

    .line 241
    :try_start_2
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0xa

    if-gt v3, v6, :cond_8

    if-ge v3, v11, :cond_7

    goto :goto_4

    .line 247
    :cond_7
    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    goto :goto_5

    .line 243
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 250
    :catch_2
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    :goto_5
    const/16 v1, 0x10

    .line 256
    :try_start_3
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5dc

    if-gt v2, v3, :cond_a

    if-ge v2, v11, :cond_9

    goto :goto_6

    .line 262
    :cond_9
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    goto :goto_7

    .line 258
    :cond_a
    :goto_6
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 265
    :catch_3
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    .line 271
    :goto_7
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_c
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 277
    :cond_d
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_e
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string v1, "fixedParam"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_f
    :goto_8
    return v9
.end method

.method public executeTask()V
    .locals 33

    move-object/from16 v7, p0

    .line 81
    const-string v0, "maxHops"

    const-string v1, "method"

    const-string v2, "count"

    const-string v3, "size"

    const-string v8, "event_total_time"

    const-string v9, "event_code"

    const-string v10, "Taskid=%d End! "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 82
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v13, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    .line 84
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v13, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x3

    move-object/from16 v16, v8

    new-array v8, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v6, v8, v17

    const/4 v6, 0x1

    aput-object v13, v8, v6

    const/4 v13, 0x2

    aput-object v14, v8, v13

    .line 82
    const-string v14, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v5, v14, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string v1, "domain"

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string v1, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string v1, "client_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sensitiveInfoParam:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/SensitiveInfoMaganer;->getGdprInfo([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 97
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_0

    .line 98
    :try_start_1
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    const-string v1, "forbidden task type %s"

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->name:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v17

    invoke-static {v1, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v16

    :goto_0
    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v8, v16

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v8, v16

    goto/16 :goto_b

    :cond_0
    move-object/from16 v8, v16

    .line 103
    :try_start_2
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v0

    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->checkDetectValidByWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    const-string v1, "Taskid=%d Failed: checkDetectValidByWhiteList false"

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->status:I

    .line 106
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_IP_NOT_IN_WHITELIST:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v17

    invoke-static {v1, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string v4, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v14, v0

    const/4 v1, 0x0

    .line 116
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 121
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_3

    if-nez v14, :cond_3

    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_4
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "TaskId=%d Parse host: ipv4=%s,ipv6=%s,v4v6=%s"

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    const/4 v15, 0x4

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v4, v13, v17

    aput-object v14, v13, v6

    const/4 v4, 0x2

    aput-object v0, v13, v4

    const/4 v4, 0x3

    aput-object v5, v13, v4

    .line 128
    invoke-static {v2, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const-string v13, "6"

    const-string v2, "4"

    const-string/jumbo v5, "v6"

    const-string v4, "client_iptype"

    const-string v3, "local_dns"

    const-string v15, "server_addr"

    move-object/from16 v20, v8

    const-string v8, "client_addr"

    const-string v21, ""

    if-nez v1, :cond_9

    if-eqz v14, :cond_5

    .line 134
    :try_start_4
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v22, v11

    :try_start_5
    iget v11, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v12, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    move-object v2, v14

    move-object/from16 v24, v9

    move-object v9, v3

    move v3, v6

    move-object v6, v4

    move/from16 v4, v21

    move-object/from16 v25, v10

    move-object v10, v5

    move v5, v12

    move-object v12, v6

    move v6, v11

    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->doTraceCmd(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v22, v11

    :goto_3
    move-object/from16 v1, v20

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v22, v11

    :goto_4
    move-object/from16 v1, v20

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto/16 :goto_d

    :cond_5
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v22, v11

    move-object v9, v3

    move-object v12, v4

    move-object v10, v5

    :goto_5
    if-eqz v0, :cond_7

    .line 141
    :try_start_7
    iget-boolean v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hasDevided:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v1, :cond_7

    if-nez v14, :cond_6

    .line 144
    :try_start_8
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    iget v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->doTraceCmd(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v0, v21

    const/4 v11, 0x1

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    .line 150
    :cond_6
    :try_start_9
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->data:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 151
    const-string/jumbo v2, "v4v6"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->name:Ljava/lang/String;

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    const-string/jumbo v30, "tracert"

    iget-object v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskScene:Ljava/lang/String;

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v28, v5

    move-object/from16 v31, v1

    move-object/from16 v32, v8

    invoke-direct/range {v26 .. v32}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 154
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Taskid=%d Host %s has v6 ip,so auto add a new task:ipv4=%s,ipv6=%s,v4v6=%s"

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hostParam:Ljava/lang/String;

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v11, 0x1

    :try_start_a
    aput-object v5, v8, v11

    const/4 v4, 0x2

    aput-object v14, v8, v4

    const/4 v4, 0x3

    aput-object v0, v8, v4

    const/4 v0, 0x4

    aput-object v6, v8, v0

    .line 154
    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-boolean v11, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->hasDevided:Z

    goto :goto_6

    :catchall_4
    move-exception v0

    const/4 v11, 0x1

    goto/16 :goto_8

    :catch_4
    move-exception v0

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_7
    const/4 v11, 0x1

    :cond_8
    :goto_6
    move-object/from16 v0, v21

    goto/16 :goto_7

    :cond_9
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v22, v11

    const/4 v11, 0x1

    move-object v9, v3

    move-object v12, v4

    move-object v10, v5

    .line 160
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_8

    .line 162
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    iget v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->doTraceCmd(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    .line 168
    :cond_a
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->v4v6Param:Ljava/lang/String;

    const-string/jumbo v1, "v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    if-eqz v14, :cond_8

    .line 170
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->countParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->sizeParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->methodParam:I

    iget v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->maxHopsParam:I

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->doTraceCmd(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_6

    .line 178
    :goto_7
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo v2, "trace_info"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->status:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v17

    move-object/from16 v2, v25

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v0, v0, v22

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :catchall_5
    move-exception v0

    :goto_8
    move-object/from16 v1, v20

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto/16 :goto_10

    :catch_5
    move-exception v0

    :goto_9
    move-object/from16 v1, v20

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_a
    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    goto :goto_c

    :catch_6
    move-exception v0

    :goto_b
    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    move-object/from16 v1, v16

    :goto_c
    const/4 v11, 0x1

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    move-object/from16 v1, v16

    :goto_d
    const/4 v11, 0x1

    .line 181
    :goto_e
    :try_start_b
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    iput v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->status:I

    .line 182
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    iput v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    .line 183
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Taskid=%d Fail:%s"

    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    .line 184
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v17

    aput-object v0, v9, v11

    .line 183
    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v5, v6, v17

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-void

    :catchall_8
    move-exception v0

    .line 186
    :goto_10
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v17

    invoke-static {v5, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    throw v0
.end method
