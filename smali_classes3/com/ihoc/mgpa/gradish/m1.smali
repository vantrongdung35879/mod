.class public abstract Lcom/ihoc/mgpa/gradish/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z = false

.field private static b:I = -0x1

.field private static c:J

.field private static d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    sput-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-void
.end method

.method private static a(I)I
    .locals 0

    return p0
.end method

.method private static a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;I)I
    .locals 3

    .line 125
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1$d;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 151
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/m1;->b(I)I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    return v1

    :cond_0
    if-lt p1, v2, :cond_1

    return v2

    :cond_1
    return v0

    :pswitch_1
    if-lt p1, v1, :cond_2

    return v1

    :cond_2
    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 0

    .line 2
    sput-object p0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object p0
.end method

.method public static a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    :try_start_0
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    const-string p0, "-1"

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTransformOpen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 111
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->d:Lcom/ihoc/mgpa/gradish/H0;

    if-nez p1, :cond_0

    .line 112
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "can\'t get transform scene config from cloud, ple check it."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/L$a;->d:Lcom/ihoc/mgpa/gradish/H0;

    invoke-virtual {p1, p0}, Lcom/ihoc/mgpa/gradish/H0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0

    .line 124
    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "do not need transform scene for vendor/game/channel."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v0, v1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/gradish/m1;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 50
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/m1;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/gradish/m1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 53
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ssp key data shouldn\'t be a string, ple check!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfoToSSP(Ljava/util/HashMap;)V

    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfoToSSP(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 8

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v0, v1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 12
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v5, v1}, Lcom/ihoc/mgpa/gradish/m1;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 15
    invoke-static {v5}, Lcom/ihoc/mgpa/gradish/m1;->a(I)I

    move-result v6

    .line 16
    invoke-static {v5, v1}, Lcom/ihoc/mgpa/gradish/m1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_1
    const-string v6, "game data in map key: %d & value: %s is forbidden to send to vendor."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "game data for vendor transform exception. key: %s"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7

    .line 59
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v0, v1, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    invoke-static {v4, v5}, Lcom/ihoc/mgpa/gradish/m1;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    invoke-static {v4}, Lcom/ihoc/mgpa/gradish/m1;->a(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Lcom/ihoc/mgpa/gradish/m1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "game key data shouldn\'t be a string, ple check! key: %s"

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 77
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/m1;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/ihoc/mgpa/gradish/m1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 81
    :catch_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "ssp key data shouldn\'t be a string, ple check! key: %s"

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfoToSSP(Ljava/util/HashMap;)V

    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 2

    .line 86
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isThreadFuncOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->LIGHT_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isLightThreadFuncOpen()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 92
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESET_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_3

    return v1

    .line 94
    :cond_3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->USERS_COUNT:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUserCountFuncOpen()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 96
    :cond_4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_5

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isNetLatencyFuncOpen()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 98
    :cond_5
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->CPU_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_6

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCpuApplyFuncOpen()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 100
    :cond_6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->GPU_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_7

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isGpuApplyFuncOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 102
    :cond_7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->OPEN_ID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_8

    return v1

    .line 106
    :cond_8
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->e:Lcom/ihoc/mgpa/gradish/a0;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 107
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->e:Lcom/ihoc/mgpa/gradish/a0;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ihoc/mgpa/gradish/a0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_9
    return v1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->d(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/ihoc/mgpa/gradish/m1;->a:Z

    return p0
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p0

    .line 6
    invoke-static {p1, p0}, Lcom/ihoc/mgpa/gradish/m1;->a(Ljava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p1, "Game data scene need transform, last: %s , new: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setCurrentTransformSceneID(Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->c(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->k()V

    return-void
.end method

.method private static c(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 55
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "2"

    if-ne p1, v2, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p0, v0}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 64
    :cond_0
    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v2, :cond_1

    .line 65
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p0, v0}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 70
    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, p0, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->c:Lcom/ihoc/mgpa/gradish/o1;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/o1;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-static {v2, v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->setConfigData(ILjava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/o1;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 9
    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->setConfigData(ILjava/lang/String;)V

    .line 14
    :cond_1
    new-instance v0, Lcom/ihoc/mgpa/gradish/m1$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/m1$a;-><init>()V

    new-instance v1, Lcom/ihoc/mgpa/gradish/m1$b;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/m1$b;-><init>()V

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->setProxyUtils(Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;Lcom/ihoc/mgpa/vendor/IVendorBridge$OSTool;)V

    .line 45
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->e()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/ihoc/mgpa/gradish/m1$c;

    invoke-direct {v2}, Lcom/ihoc/mgpa/gradish/m1$c;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->checkAvailableVendorBridge(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ihoc/mgpa/vendor/ServerConnectionListener;)V

    return-void
.end method

.method public static c(ILjava/lang/String;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v0, v1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/gradish/m1;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/m1;->a(I)I

    move-result v0

    .line 51
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/gradish/m1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "game data key: %d & value: %s is forbidden to send to vendor."

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/m1;->a:Z

    return v0
.end method

.method private static d(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Z
    .locals 6

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3
    sget p1, Lcom/ihoc/mgpa/gradish/m1;->b:I

    const/4 p2, 0x0

    if-ne p0, p1, :cond_0

    return p2

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    sget-wide v2, Lcom/ihoc/mgpa/gradish/m1;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return p2

    .line 15
    :cond_1
    sput p0, Lcom/ihoc/mgpa/gradish/m1;->b:I

    .line 16
    sput-wide v0, Lcom/ihoc/mgpa/gradish/m1;->c:J

    const/4 p0, 0x1

    return p0
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->b:Lcom/ihoc/mgpa/gradish/n1;

    .line 3
    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/n1;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getTypeByStr(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v2, v3, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSSPHardwareData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNIQUE_ID:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSystemData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/m1;->d:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->isSSPAvailable()Z

    move-result v0

    return v0
.end method

.method public static j()V
    .locals 6

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v4

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v4, v5, v3}, Lcom/ihoc/mgpa/gradish/s1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "cache data format is not matched."

    invoke-static {v4, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ihoc/mgpa/gradish/s1;->b(Ljava/util/HashMap;)V

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mGameDataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    .line 20
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no cache data need to resend."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :goto_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/B;->c()V

    return-void
.end method

.method private static k()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->START:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_LATENCY_OPT_SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/L$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-boolean v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->localWifiOptimize:Z

    const-string v2, "1"

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->LOCAL_WIFI_OPTIMIZE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    sget-boolean v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->wifiUpLinkOptimize:Z

    if-eqz v1, :cond_2

    .line 11
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->WIFI_UPLINK_OPTIMIZE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    sget-boolean v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->netSmartSelect:Z

    if-eqz v1, :cond_3

    .line 14
    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->NET_SMART_SELECTION:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ihoc/mgpa/gradish/s1;->b(Ljava/util/HashMap;)V

    return-void
.end method
