.class public Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;
.super Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;
.source "PingTask.java"


# instance fields
.field private countParam:I

.field private durationParam:I

.field private hasDevided:Z

.field private hostParam:Ljava/lang/String;

.field private methodParam:Ljava/lang/String;

.field private sensitiveInfoParam:Ljava/lang/String;

.field private sizeParam:I

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

    .line 41
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hasDevided:Z

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    .line 29
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    .line 30
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    .line 42
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->name:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskScene:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    .line 45
    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->type:Ljava/lang/String;

    .line 46
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    .line 47
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    .line 50
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p4, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "event_id"

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "ttl"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "min_rtt"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "max_rtt"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "avg_rtt"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "pkg_loss_rate"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doPingCmd(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 390
    const-string v8, ";"

    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    .line 391
    const-string v2, "native"

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    const-string v10, "raw_info"

    const-string v11, "pkg_loss_rate"

    const-string v12, "avg_rtt"

    const-string v13, "max_rtt"

    const-string v14, "min_rtt"

    const-string v15, "rece_pkg"

    const-string v7, "send_pkg"

    const-string/jumbo v6, "ttl"

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_9

    .line 395
    :try_start_0
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v2

    move/from16 v3, p4

    new-array v3, v3, [B

    const/16 v16, 0xa

    const/16 v17, 0xc8

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move/from16 v5, p3

    move/from16 v18, v9

    move-object v9, v6

    move/from16 v6, v16

    move-object/from16 p5, v11

    move-object v11, v7

    move/from16 v7, v17

    .line 396
    invoke-virtual/range {v2 .. v7}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v4, v2, v5

    add-int/lit8 v6, v6, 0x1

    if-eqz v4, :cond_4

    move-object/from16 p2, v2

    .line 407
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 p3, v3

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5

    const-string v2, "-1.000"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpl-float v4, v2, v16

    if-lez v4, :cond_1

    move/from16 v16, v2

    :cond_1
    const/4 v4, 0x0

    cmpl-float v19, v17, v4

    if-eqz v19, :cond_2

    cmpg-float v19, v2, v17

    if-gez v19, :cond_3

    :cond_2
    move/from16 v17, v2

    :cond_3
    add-float v20, v20, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 p2, v2

    move/from16 p3, v3

    const/4 v3, 0x1

    :cond_5
    :goto_1
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    .line 421
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v4, "[%s]"

    const-string v5, ","

    .line 422
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 421
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "na"

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 429
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    int-to-float v2, v7

    div-float v20, v20, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v6, :cond_8

    .line 432
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    sub-int v2, v6, v7

    int-to-float v2, v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    .line 433
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p5

    .line 432
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move/from16 v9, v18

    goto/16 :goto_f

    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_READ:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v9

    goto/16 :goto_f

    :cond_9
    move-object v9, v6

    move-object v4, v11

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v11, v7

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 449
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 450
    const-string v7, "ping6"

    goto :goto_3

    .line 449
    :cond_a
    const-string v7, "ping"

    .line 452
    :goto_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v7, "-s"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v7, "-i"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const-string v7, "0.2"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v7, "-w"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 472
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 473
    new-instance v8, Ljava/io/LineNumberReader;

    invoke-direct {v8, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 474
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v7, "\n"

    if-eqz v0, :cond_b

    .line 475
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 479
    :cond_b
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 480
    :try_start_5
    new-instance v3, Ljava/io/LineNumberReader;

    invoke-direct {v3, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 482
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 487
    :cond_c
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 496
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    if-eqz v6, :cond_d

    .line 499
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 502
    :cond_d
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    move v3, v7

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v8, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_7
    move-object v7, v5

    goto/16 :goto_10

    :catch_3
    move-exception v0

    :goto_8
    move-object v7, v5

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_10

    :catch_4
    move-exception v0

    const/4 v7, 0x0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_10

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    :goto_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 490
    :goto_b
    :try_start_8
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_READ:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v7, :cond_e

    .line 496
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :cond_e
    :goto_c
    if-eqz v6, :cond_f

    .line 499
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_f
    if-eqz v8, :cond_10

    .line 502
    invoke-virtual {v8}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    .line 505
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    :cond_10
    :goto_e
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "ping result:%s "

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->parseDetailFromPing(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 511
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->parseStepInfoFromPing(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 512
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v3

    :goto_f
    return v9

    :catchall_5
    move-exception v0

    move-object v2, v0

    :goto_10
    if-eqz v7, :cond_11

    .line 496
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_12

    :cond_11
    :goto_11
    if-eqz v6, :cond_12

    .line 499
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_12
    if-eqz v8, :cond_13

    .line 502
    invoke-virtual {v8}, Ljava/io/LineNumberReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_13

    .line 505
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    :cond_13
    :goto_13
    throw v2
.end method

.method private parseDetailFromPing(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20
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
    const-string v0, "errors"

    const-string v1, "received"

    const-string v2, "packets transmitted"

    const-string v3, "\n"

    const-string/jumbo v4, "statistics"

    const-string v5, "rtt"

    .line 278
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 280
    const-string v7, "pkg_loss_rate"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v9, "min_rtt"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v10, "avg_rtt"

    invoke-virtual {v6, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v11, "max_rtt"

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v12, "send_pkg"

    invoke-virtual {v6, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v13, "rece_pkg"

    invoke-virtual {v6, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v14, "ttl"

    invoke-virtual {v6, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 289
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 290
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 296
    :try_start_0
    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v13

    const-string v13, "="

    const/16 v17, 0x1

    move-object/from16 v18, v12

    if-eqz v15, :cond_0

    .line 297
    :try_start_1
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 298
    invoke-virtual {v15, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v12, v19, 0x1

    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 299
    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    .line 300
    aget-object v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 304
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 306
    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    .line 307
    aget-object v14, v5, v12

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    aget-object v9, v5, v17

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    aget-object v5, v5, v13

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    .line 314
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 316
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 317
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v4, :cond_7

    aget-object v13, v3, v15

    .line 318
    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 319
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :cond_2
    :goto_1
    const/4 v14, 0x0

    goto :goto_2

    .line 320
    :cond_3
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 321
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    goto :goto_1

    .line 322
    :cond_4
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 323
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    goto :goto_1

    .line 324
    :cond_5
    const-string v14, "packet loss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 325
    const-string v12, "%"

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 330
    :cond_7
    const-string v0, "100%"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "exceed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 331
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_8
    move-object/from16 v2, v16

    move-object/from16 v1, v18

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v3, v5, v9

    if-eqz v3, :cond_9

    mul-float v0, v0, v10

    div-float/2addr v0, v5

    .line 338
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-float/2addr v5, v10

    .line 340
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    cmpl-float v3, v12, v9

    if-nez v3, :cond_a

    add-float v3, v10, v11

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_a

    mul-float v10, v10, v0

    div-float/2addr v10, v3

    .line 342
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 346
    :cond_a
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object/from16 v1, p0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    .line 350
    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v6

    :cond_b
    move-object/from16 v1, p0

    return-object v6
.end method

.method private parseStepInfoFromPing(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    const-string v0, " "

    const-string/jumbo v1, "time="

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 366
    :try_start_0
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 367
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p1, v5

    .line 368
    const-string/jumbo v7, "ttl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "icmp_seq"

    if-eqz v7, :cond_0

    .line 369
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 372
    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "exceed"

    .line 374
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 375
    const-string v6, "-1"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "timeout"

    .line 377
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    const-string v6, "-2"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 11

    .line 194
    const-string v0, "size:16"

    const-string v1, "duration:20"

    const-string v2, "count:3"

    const-string v3, "size"

    const-string v4, "duration"

    const-string v5, "count"

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v7

    .line 202
    :cond_1
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string v8, "host"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x1

    if-ge v6, v9, :cond_2

    goto/16 :goto_6

    .line 205
    :cond_2
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    .line 209
    :try_start_0
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0xc8

    if-gt v8, v10, :cond_4

    if-ge v8, v9, :cond_3

    goto :goto_0

    .line 215
    :cond_3
    iput v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    goto :goto_1

    .line 211
    :cond_4
    :goto_0
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    iget-object v8, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iput v7, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    :goto_1
    const/16 v2, 0x14

    .line 224
    :try_start_1
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x28

    if-gt v5, v7, :cond_6

    if-ge v5, v9, :cond_5

    goto :goto_2

    .line 230
    :cond_5
    iput v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    goto :goto_3

    .line 226
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 233
    :catch_1
    iget-object v5, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    :goto_3
    const/16 v1, 0x10

    .line 239
    :try_start_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5dc

    if-gt v2, v4, :cond_8

    if-ge v2, v1, :cond_7

    goto :goto_4

    .line 245
    :cond_7
    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    goto :goto_5

    .line 241
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 248
    :catch_2
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    .line 253
    :goto_5
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 254
    :cond_9
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 259
    :cond_b
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sensitiveInfoParam:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 264
    :cond_d
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_e
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v1, "fixedParam"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v9

    :cond_f
    :goto_6
    return v7
.end method

.method public executeTask()V
    .locals 32

    move-object/from16 v7, p0

    .line 76
    const-string/jumbo v0, "v4v6"

    const-string v8, "event_total_time"

    const-string v9, "event_code"

    const-string v10, "TaskId=%d End! "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 77
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x3

    new-array v6, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v6, v14

    const/4 v15, 0x1

    aput-object v4, v6, v15

    const/4 v4, 0x2

    aput-object v5, v6, v4

    .line 77
    const-string v3, "TaskId=%d Begin: msg=%s,startTimeStamp=%d"

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "domain"

    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "send_size"

    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "network_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "client_type"

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sensitiveInfoParam:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/util/SensitiveInfoMaganer;->getGdprInfo([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getReleaseTaskFuncList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    const-string v1, "forbidden task type %s"

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->name:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 185
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v1, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getBaseConfig()Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;

    move-result-object v1

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->checkDetectValidByWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    const-string v1, "Taskid=%d Failed: checkDetectValidByWhiteList false"

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->status:I

    .line 98
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_IP_NOT_IN_WHITELIST:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 185
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v1, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 105
    iget-object v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 106
    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    const-string v6, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    const/4 v1, 0x0

    .line 108
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 109
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    if-nez v6, :cond_3

    .line 111
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    .line 115
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_4
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "TaskId=%d Parse host: ipv4=%s,ipv6=%s,v4v6=%s"

    move-object/from16 v17, v5

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    const/4 v13, 0x4

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v4, v15, v14

    const/4 v4, 0x1

    aput-object v17, v15, v4

    const/4 v4, 0x2

    aput-object v6, v15, v4

    const/16 v16, 0x3

    aput-object v5, v15, v16

    .line 120
    invoke-static {v2, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v2, "4"

    const-string/jumbo v15, "v6"

    const-string v5, "6"

    const-string v3, "client_iptype"

    const-string v13, "local_dns"

    const-string v14, "server_addr"

    move-object/from16 v18, v8

    const-string v8, "client_addr"

    if-nez v1, :cond_8

    if-eqz v17, :cond_5

    .line 125
    :try_start_3
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    move-object/from16 v4, v17

    invoke-virtual {v1, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    move-object/from16 v17, v5

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v5

    iget-object v5, v5, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v1, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    move-object/from16 v19, v6

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    move-object v2, v4

    move-wide/from16 v22, v11

    move-object v11, v3

    move v3, v5

    move-object v5, v4

    const/4 v12, 0x2

    move/from16 v4, v21

    move-object v12, v5

    move-object/from16 v31, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v31

    move/from16 v5, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->doPingCmd(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-wide/from16 v22, v11

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-wide/from16 v22, v11

    goto/16 :goto_6

    :cond_5
    move-object/from16 v20, v10

    move-wide/from16 v22, v11

    move-object/from16 v12, v17

    move-object v11, v3

    move-object v10, v6

    move-object/from16 v17, v9

    move-object v9, v5

    :goto_3
    if-eqz v10, :cond_b

    .line 132
    iget-boolean v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hasDevided:Z

    if-nez v1, :cond_b

    if-nez v12, :cond_7

    .line 135
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->doPingCmd(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    goto/16 :goto_4

    .line 142
    :cond_6
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    goto/16 :goto_4

    .line 146
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 147
    invoke-virtual {v1, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    new-instance v3, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;

    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->name:Ljava/lang/String;

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    const-string v28, "ping"

    iget-object v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskScene:Ljava/lang/String;

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v26, v5

    move-object/from16 v29, v1

    move-object/from16 v30, v8

    invoke-direct/range {v24 .. v30}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/ihoc/tgpatask/TransceiverManager;->addTaskList(ILcom/ihoc/tgpatask/transceivertool/command/TNetCommandTask;)V

    .line 150
    iget-object v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "TaskId=%d Host %s has v6 ip,so auto add a new task:ipv4=%s,ipv6=%s,v4v6=%s"

    iget-wide v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hostParam:Ljava/lang/String;

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v4, 0x2

    aput-object v12, v6, v4

    const/4 v4, 0x3

    aput-object v10, v6, v4

    const/4 v4, 0x4

    aput-object v0, v6, v4

    .line 150
    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->hasDevided:Z

    goto/16 :goto_4

    :cond_8
    move-object/from16 v20, v10

    move-wide/from16 v22, v11

    move-object/from16 v12, v17

    move-object v11, v3

    move-object v10, v6

    move-object/from16 v17, v9

    move-object v9, v5

    .line 156
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    if-eqz v10, :cond_b

    .line 158
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->doPingCmd(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    goto :goto_4

    .line 165
    :cond_9
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    goto :goto_4

    .line 168
    :cond_a
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->v4v6Param:Ljava/lang/String;

    const-string/jumbo v1, "v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    if-eqz v12, :cond_b

    .line 170
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/tgpatask/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget v3, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->durationParam:I

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->countParam:I

    iget v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->sizeParam:I

    iget-object v6, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->methodParam:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct/range {v1 .. v6}, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->doPingCmd(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    .line 178
    :cond_b
    :goto_4
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->status:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object/from16 v2, v20

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    sub-long v0, v0, v22

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    goto/16 :goto_9

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v22, v11

    .line 181
    :goto_7
    :try_start_5
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    iput v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->status:I

    .line 182
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    iput v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    .line 183
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "TaskId=%d Fail:%s"

    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v0, v9, v8

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 185
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v5, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    iget-object v0, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-void

    :catchall_3
    move-exception v0

    .line 185
    :goto_9
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v8, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v5, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    iget v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    iget-object v4, v7, Lcom/ihoc/tgpatask/transceivertool/command/detectnet/PingTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    throw v0
.end method
