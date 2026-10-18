.class Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;
.super Ljava/lang/Object;
.source "PingMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->startMonitor(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

.field final synthetic val$duration:I

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$extendData:Ljava/lang/String;

.field final synthetic val$freq:I

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$sendCount:I

.field final synthetic val$sendInterval:I

.field final synthetic val$soTimeout:I

.field final synthetic val$vmpCallback:Lcom/ihoc/tgpatask/VmpCallback;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;ILjava/lang/String;IIILcom/ihoc/tgpatask/VmpCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iput p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$duration:I

    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    iput p4, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendCount:I

    iput p5, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendInterval:I

    iput p6, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$soTimeout:I

    iput-object p7, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$vmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    iput-object p8, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$extendData:Ljava/lang/String;

    iput-object p9, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$eventName:Ljava/lang/String;

    iput p10, p0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$freq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v1, p0

    .line 97
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->access$000(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$duration:I

    const-wide/16 v4, 0x3e8

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$duration:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    goto/16 :goto_4

    .line 103
    :cond_1
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    move-result-object v6

    iget-object v7, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    const-string v0, "123456"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget v9, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendCount:I

    iget v10, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendInterval:I

    iget v11, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$soTimeout:I

    invoke-virtual/range {v6 .. v11}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 106
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v7, "-10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 109
    :goto_1
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendCount:I

    if-ge v7, v0, :cond_4

    .line 110
    const-string v0, "-10;"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    :cond_3
    :goto_2
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$sendCount:I

    if-ge v7, v0, :cond_4

    .line 114
    const-string v0, "-1;"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 122
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$vmpCallback:Lcom/ihoc/tgpatask/VmpCallback;

    if-eqz v8, :cond_6

    .line 123
    invoke-interface {v8, v0}, Lcom/ihoc/tgpatask/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    .line 125
    :cond_6
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 126
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v9, "ip"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v11, "rtt"

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v12, "cid"

    invoke-virtual {v8, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v13, "dbm"

    invoke-virtual {v8, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v8, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v15, "lbs"

    invoke-virtual {v8, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v8, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v8, v8, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v4, "monitorUuid"

    invoke-virtual {v8, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v8, "qosEventId"

    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-wide/from16 v16, v6

    const-string v6, "qosTag"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v7, "rttEventId"

    invoke-virtual {v5, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v5, v5, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-wide/from16 v18, v2

    const-string v2, "hasIpQos"

    invoke-virtual {v5, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    const-string v5, "hasDeviceQos"

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-object/from16 v20, v5

    const-string v5, "netprottype"

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-object/from16 v21, v5

    const-string v5, "netaccesstype"

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-object/from16 v22, v5

    const-string v5, "netChange"

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-object/from16 v23, v5

    const-string v5, "extendData"

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 144
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    move-object/from16 v24, v5

    iget-object v5, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object/from16 v24, v5

    :goto_3
    if-eqz v0, :cond_8

    .line 147
    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_8
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_9
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v0

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getQosEventId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 165
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v3

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getQosEventId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_a
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getQosEventTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getQosEventTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_b
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 171
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_c
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v0

    iget-object v3, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByIp(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 174
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v3

    iget-object v4, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByIp(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_d
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->getInstance()Lcom/ihoc/tgpatask/transceivertool/local/QosService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/transceivertool/local/QosService;->isQosByDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_e
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->netprottype:Ljava/lang/String;

    move-object/from16 v3, v21

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_f
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 183
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_10
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sub-long v2, v18, v2

    move-wide/from16 v4, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getNetworkChangeInfo(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 186
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getNetworkChangeInfo(JJ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_11
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$extendData:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 190
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$extendData:Ljava/lang/String;

    move-object/from16 v3, v24

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_12
    iget-object v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$eventName:Ljava/lang/String;

    iget-object v2, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor;->msg:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 193
    iget v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/PingMonitor$1;->val$freq:I

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 196
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 198
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_13
    :goto_4
    return-void
.end method
