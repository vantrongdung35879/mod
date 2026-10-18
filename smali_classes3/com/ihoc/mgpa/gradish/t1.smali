.class public abstract Lcom/ihoc/mgpa/gradish/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Lcom/ihoc/mgpa/report/entity/EventReportConfig;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/t1;->a:Ljava/lang/String;

    .line 4
    const-string v0, ""

    sput-object v0, Lcom/ihoc/mgpa/gradish/t1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ihoc/mgpa/gradish/t1;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 82
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/io/File;ZLjava/lang/String;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 107
    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    move-object v6, p0

    .line 108
    const-string v7, ""

    const-string v0, "1"

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 4
    const-string v1, "dynamic_setting"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->CALLBACK_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->FPS_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isFpsStrategyFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_TYPE:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SETTINGS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 62
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->r(Ljava/util/HashMap;)V

    .line 63
    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    const-string v2, "scene"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "start_time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMapID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "map_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMatchMark()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "match_mark"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p1, "fps"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS_TARGET:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->HD_MODEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    sget-object v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->MODEL_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v4}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_FPS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 86
    const-string p0, "progress"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-static {p3}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 89
    const-string p0, "progressStat"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 92
    const-string p0, "pkgName"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    invoke-static {p6}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 95
    const-string/jumbo p0, "state"

    invoke-virtual {v0, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_3
    invoke-static {p7}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 98
    const-string p0, "errorCode"

    invoke-virtual {v0, p0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p4, "speed"

    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string p0, "reason"

    invoke-virtual {v0, p0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object p0, Lcom/ihoc/mgpa/gradish/t1;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "reportInGamePreDownload pkgName: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  progress:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  progressStat:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_IN_GAME_PRE_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->S:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ihoc/mgpa/gradish/t1;->e:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 10
    sput v0, Lcom/ihoc/mgpa/gradish/t1;->e:I

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string/jumbo v1, "where"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "description"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "exception"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 16
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HANDLE_EXCEPTION:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 10

    .line 38
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMatchStartTime()J

    move-result-wide v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v6, "|"

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0xc

    const-string v8, "%.2f"

    const/4 v9, 0x1

    if-ge v4, v7, :cond_0

    .line 44
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v4, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getStringTimeByLong(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0xea60

    add-long/2addr v0, v4

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    :goto_2
    rsub-int/lit8 p0, v4, 0xb

    if-ge v3, p0, :cond_2

    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58
    :cond_2
    sget-object p0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getStringTimeByLong(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 3

    .line 17
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_sdk"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scenes"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "downloadWay"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    const-string v0, "errorCode"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    const-string v0, "fileMD5"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_2
    const-string v0, "filePath"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 34
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_3
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_PREDOWNLOAD_CHECK_TASK_STATUS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(ZZLjava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "support"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "switch"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 113
    const-string p2, ""

    :cond_0
    const-string p0, "errorCode"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/t1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 7
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->r(Ljava/util/HashMap;)V

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSceneStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTimeStampMillis()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "next_scene"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMapID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "map_id"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->PERF_SDKFUC_OPEN_STR:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCloudFuncOpenListStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SCENEID_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentTransformSceneID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->checkSceneSupport(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SCENE_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->THREAD_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isThreadFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->LIGHT_THREAD_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isLightThreadFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->USER_COUNT_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUserCountFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->OPTCONFIG_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isOptPerfFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SSPFUNC_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SCENETRANSFORM_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTransformOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SCENECONTROL_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSceneTypeControlOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SCENETIME:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "netlatency"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_NETLATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b(Ljava/util/HashMap;)V
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 25
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_UNIQUE_ID:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN1:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "XID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/t1;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ihoc/mgpa/gradish/t1;->c:J

    return-void
.end method

.method public static c(Ljava/util/HashMap;)V
    .locals 2

    .line 5
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 6
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_name"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SETTING:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static d(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_name"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SUPPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static e(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/L;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_INIT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static f(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 3
    sget-object p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    const-string v1, "scene"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMapID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "map_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMatchMark()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "match_mark"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_NETLATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static g(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_NOTCH_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static h(Ljava/util/HashMap;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_sdk"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scenes"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    const-string v0, "errorCode"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    const-string v0, "fileMD5"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 20
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_3
    const-string v0, "filePath"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_4
    const-string v0, "owner"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 26
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_5
    const-string v0, "detail"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 30
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_7

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_7
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_COPY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static i(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD2:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static j(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sv"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD3:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static k(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD1:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static l(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->r(Ljava/util/HashMap;)V

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    const-string/jumbo v1, "vendor_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SSPFUNC_OPEN:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_VENDOR_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupportStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->PERF_SDKFUC_OPEN_STR:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCloudFuncOpenListStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SPA:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static m(Ljava/util/HashMap;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->vendorServerVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    const-string/jumbo v1, "vendor_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_TYPE:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isVendorServerOk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_VENDOR_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupportStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->MAIN_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMainVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SUB_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getSubVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->TIME_INIT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/ihoc/mgpa/gradish/t1;->c:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->PERF_SDKFUC_OPEN_STR:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCloudFuncOpenListStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SOCKETINFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static n(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_STRATEGY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static o(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_THREAD_AFFINITY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static p(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/t1;->q(Ljava/util/HashMap;)V

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_CALLBACK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/report/Reporter;->report(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method private static q(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "report_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x100b

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string/jumbo v0, "version_name"

    const-string v1, "4.1.0.7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vmp_number"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unique_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "plat_type"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameEngineType()Lcom/ihoc/mgpa/gradish/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/K;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_tag"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getInstallSign()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_sign"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSimulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "mobile_type"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static r(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_TYPE:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->h()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isVendorServerOk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_JP:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_CJ:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_DH:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport3()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_XH:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport4()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_TP:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport5()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPROT_WL:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport6()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SUPPORT_SPA:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorStrategySupport7()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
