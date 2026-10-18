.class Lcom/ihoc/tgpatask/TransceiverManager$7;
.super Ljava/lang/Object;
.source "TransceiverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/TransceiverManager;->detectNetDelayInfo(Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/TransceiverManager;

.field final synthetic val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

.field final synthetic val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/TransceiverManager;Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 901
    iput-object p1, p0, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    iput-object p2, p0, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    iput-object p3, p0, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 905
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 907
    iget-object v0, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getLocalSessionId()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v3

    iput-object v0, v3, Lcom/ihoc/tgpatask/TransceiverManager;->rttEventId:Ljava/lang/String;

    .line 910
    const-string v3, "event_id"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v0, "event_type"

    const-string v3, "detect"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v0, "client_type"

    const-string v4, "INET4"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v0, "client_iptype"

    const-string v4, "4"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v0, "client_addr"

    const-string v4, ""

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v5, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "network_type"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v5, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "size"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v5, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v5, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v5, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSotimeout()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sotimeout"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string/jumbo v5, "udp"

    const-string v6, "method"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-boolean v5, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->icmpAvailable:Z

    if-eqz v5, :cond_0

    .line 925
    const-string v5, "icmp"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 929
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 930
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 932
    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v10}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v10

    .line 936
    :try_start_0
    iget-object v13, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v13}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getIps()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 937
    new-instance v15, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    iget-object v12, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSize()I

    move-result v17

    iget-object v12, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v18

    iget-object v12, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getDuration()I

    move-result v19

    iget-object v12, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getSotimeout()I

    move-result v20

    move-object v12, v15

    move-object v15, v12

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v20}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;-><init>(Ljava/lang/String;IIII)V

    .line 938
    invoke-virtual {v12}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->startDelayDetect()V

    .line 939
    sget-object v15, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v10

    const-string v10, "[TransceiverManager.detectNetDelayInfo]startDetect "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    goto :goto_0

    :cond_1
    move/from16 v17, v10

    const/4 v10, 0x0

    .line 944
    :goto_1
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getCount()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v11, v11, 0x64

    const-string v12, "[TransceiverManager.detectNetDelayInfo] detect task has been canceled, must stop and quit this task"

    if-ge v10, v11, :cond_8

    .line 947
    :try_start_1
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v11}, Lcom/ihoc/tgpatask/TransceiverManager;->access$900(Lcom/ihoc/tgpatask/TransceiverManager;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 948
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    .line 950
    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[TransceiverManager.detectNetDelayInfo] someone is to cancel this task, to stop delay detect %s"

    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getIp()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v5}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->stopDelayDetect()V

    goto :goto_2

    :cond_2
    return-void

    .line 957
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    const-wide/16 v18, 0xc8

    add-long v13, v13, v18

    .line 958
    iget-object v11, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoParam:Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;

    invoke-virtual {v11}, Lcom/ihoc/tgpatask/transceivertool/json/NetworkInfoParam;->getWaittime()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v18, v8

    int-to-long v8, v11

    cmp-long v11, v13, v8

    if-ltz v11, :cond_6

    .line 959
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    .line 960
    sget-object v10, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[TransceiverManager.detectNetDelayInfo] beyond waittime, to stop delay detect %s"

    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getIp()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v15, v14

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->stopDelayDetect()V

    goto :goto_3

    .line 963
    :cond_4
    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v8}, Lcom/ihoc/tgpatask/TransceiverManager;->access$900(Lcom/ihoc/tgpatask/TransceiverManager;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 964
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[TransceiverManager.detectNetDelayInfo] beyond waittime,but task is not be cancel, do callback anyway"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    invoke-interface {v8, v5}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;->notifyDelayInfo(Ljava/util/ArrayList;)I

    .line 967
    :cond_5
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[TransceiverManager.detectNetDelayInfo] beyond waittime,must stop and quit this task"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 973
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v13, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    .line 974
    invoke-virtual {v9}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->isFinishDetect()Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 980
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v13, v8, :cond_9

    const-wide/16 v8, 0x14

    .line 981
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v18

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v18, v8

    .line 988
    :cond_9
    :goto_5
    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v8}, Lcom/ihoc/tgpatask/TransceiverManager;->access$900(Lcom/ihoc/tgpatask/TransceiverManager;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 989
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 994
    :cond_a
    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    if-eqz v8, :cond_b

    .line 995
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[TransceiverManager.detectNetDelayInfo] task is done, do callback nomal"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v8, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->val$networkInfoCallback:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;

    invoke-interface {v8, v5}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;->notifyDelayInfo(Ljava/util/ArrayList;)I

    goto :goto_6

    .line 998
    :cond_b
    sget-object v8, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[TransceiverManager.detectNetDelayInfo] no callback"

    invoke-static {v8, v9}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    .line 1003
    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->generateResult()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getClientIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-le v9, v10, :cond_c

    .line 1005
    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getClientIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_c
    iget-object v9, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v9}, Lcom/ihoc/tgpatask/TransceiverManager;->access$600(Lcom/ihoc/tgpatask/TransceiverManager;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TransceiverManager.detectNetDelayInfo] client_addr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->getClientIp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v8}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->generateDetail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :cond_d
    move/from16 v10, v17

    goto :goto_8

    :catch_0
    move-wide/from16 v18, v8

    .line 1012
    :catch_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v10

    .line 1013
    iget-object v0, v1, Lcom/ihoc/tgpatask/TransceiverManager$7;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-static {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->access$600(Lcom/ihoc/tgpatask/TransceiverManager;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[TransceiverManager.detectNetDelayInfo] enq control listener func:false"

    invoke-static {v0, v5}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1019
    :try_start_3
    const-string v0, "cid"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v0, "dbm"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string/jumbo v0, "wifi"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v0, "lbs"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1027
    :goto_9
    const-string v0, "detail"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v0, "result"

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v0, "event_code"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v8, v8, v18

    .line 1031
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "event_total_time"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "[detectNetDelayInfo]detectResult:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENQSDK"

    invoke-static {v4, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-static {v3, v2}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->report(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
