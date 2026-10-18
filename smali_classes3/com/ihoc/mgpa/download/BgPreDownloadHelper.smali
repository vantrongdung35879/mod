.class public Lcom/ihoc/mgpa/download/BgPreDownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;


# static fields
.field public static final ACTION_CLOSE_PRE_DOWNLOAD:Ljava/lang/String; = "intent.ACTION_CLOSE_PRE_DOWNLOAD"

.field public static final CMD_DESTROY_DOWNLOAD:Ljava/lang/String; = "destroy"

.field public static final CMD_SET_DOWNLOAD_DIR:Ljava/lang/String; = "setDir"

.field public static final CMD_START_DOWNLOAD:Ljava/lang/String; = "start"

.field public static final CMD_START_HOTFIX_DOWNLOAD:Ljava/lang/String; = "startHotfix"

.field public static final CMD_STOP_DOWNLOAD:Ljava/lang/String; = "stop"

.field private static final DELAY_START_TASK:I = 0x3

.field private static final HOTFIX_ROUTE:Ljava/lang/String; = "/task/pd_pkg_ver_v3"

.field public static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

.field public static sLastBgPreDownloadUpdateTime:J


# instance fields
.field private mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

.field private mDownloadDir:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-PreDownloadMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 16
    sput-wide v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->sLastBgPreDownloadUpdateTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->createDefaultConfig()Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    return-void
.end method

.method private addForegroundCallbackListener()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "[addForegroundCallbackListener]"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$1;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$1;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkCondition()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getBatteryLevel()I

    move-result v0

    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getMinBattery()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkCondition false ,battery is not enough, limit: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    .line 3
    invoke-virtual {v3}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getMinBattery()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isNeedWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isWifiConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "checkCondition false, need fail"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->isPreDownloadScene()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "checkCondition false, not in preDownload scene"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private checkDownloadDir(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v0, "[checkDownloadDir]: path is null."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v0, "[checkDownloadDir]: dir do not exits."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v0, "[checkDownloadDir]: dir is not directory."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 15
    :cond_4
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v0, "[checkDownloadDir]: dir can not write or read."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getBatteryLevel()I
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    invoke-direct {v1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mInstance:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    return-object v0
.end method

.method private isPreDownloadScene()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private preProcessCMD(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 0
    const-string v1, "[preProcessCMD]: set Download dir in: "

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p1, "action"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 6
    :cond_0
    const-string v3, "setDir"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    const-string p1, "dir"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mDownloadDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v0, "parse BgPreDownLoad value error!"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeForegroundCallbackListener()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "[removeForegroundCallbackListener]"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$2;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$2;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cleanFile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getFileOverdueTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->cleanFiles(J)V

    return-void
.end method

.method public cleanFiles(J)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v6, v4, p1

    if-ltz v6, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 9
    sget-object v5, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[cleanFiles]: delete file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " by overdueTime."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/io/File;ZLjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public cleanFilesBySpace(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string p2, "[cleanFilesBySpace]: no limit"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 8
    new-instance v4, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$4;

    invoke-direct {v4, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$4;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    array-length v4, v2

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 17
    :cond_1
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 18
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    :cond_2
    sget-object v2, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[cleanFilesBySpace]: totalSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x400

    div-long v7, v0, v5

    div-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " MB celling: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, p1, v5

    div-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " MB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    .line 24
    new-instance v2, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$5;

    invoke-direct {v2, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$5;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    :goto_1
    cmp-long v2, v0, p1

    if-ltz v2, :cond_4

    .line 32
    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_4

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    sub-long/2addr v0, v8

    .line 36
    sget-object v4, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[cleanFilesBySpace]: delete: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v4, "1"

    const/4 v8, 0x1

    invoke-static {v2, v8, v4}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/io/File;ZLjava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_4
    sget-object p1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "[cleanFilesBySpace]: trim to "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v0, v5

    div-long/2addr v0, v5

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public getBgPreDownload()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getBgPreDownload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgPreDownloadFromCache()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getBgPreDownloadFromCache()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleStrCommand(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[handleStrCommand]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->preProcessCMD(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadFuncOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadHotfixFuncOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    const-string p1, "[handleStrCommand]: bgPreDownload and hotfix cloudctrl did not open."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 13
    :cond_1
    const-string v1, "start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "destroy"

    const-string/jumbo v4, "stop"

    if-nez v2, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v2

    const-string v5, "game"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    const-string p1, "BgPreDownloadHelper isGameCtrlDownload game ctrl is not open, ple check!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "startHotfix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    return-void

    .line 33
    :pswitch_0
    const-string p1, "Start bgHotfix by string command."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/task/pd_pkg_ver_v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->startHotfix(Ljava/lang/String;)V

    return-void

    .line 35
    :pswitch_1
    const-string p1, "destroy bgPreDownload by string command."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->destroy()V

    return-void

    .line 37
    :pswitch_2
    const-string p1, "Start bgPreDownload by string command."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->start()V

    return-void

    .line 41
    :pswitch_3
    const-string p1, "Stop bgPreDownload by string command."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->stop()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x360802 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x5cd39ffa -> :sswitch_1
        0x7db9d7aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initAndFetchHotfixTasks()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadHotfixFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mDownloadDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->checkDownloadDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mDownloadDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "game"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->init(ZLjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/task/pd_pkg_ver_v3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->startHotfix(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public initAndFetchTasks()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->p:Lcom/ihoc/mgpa/gradish/d;

    if-eqz v1, :cond_3

    .line 3
    new-instance v15, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    iget-object v3, v1, Lcom/ihoc/mgpa/gradish/d;->a:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/ihoc/mgpa/gradish/d;->b:Z

    iget-boolean v5, v1, Lcom/ihoc/mgpa/gradish/d;->c:Z

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/d;->d:Ljava/lang/String;

    iget v7, v1, Lcom/ihoc/mgpa/gradish/d;->e:I

    iget v2, v1, Lcom/ihoc/mgpa/gradish/d;->f:I

    mul-int/lit16 v2, v2, 0xe10

    int-to-long v8, v2

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v10

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadFuncOpen()Z

    move-result v11

    iget-wide v12, v1, Lcom/ihoc/mgpa/gradish/d;->g:J

    const-wide/32 v16, 0x100000

    mul-long v12, v12, v16

    iget-boolean v14, v1, Lcom/ihoc/mgpa/gradish/d;->h:Z

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;-><init>(Ljava/lang/String;ZZLjava/lang/String;IJZZJZ)V

    iput-object v15, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    .line 15
    invoke-virtual {v15}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "game"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/ihoc/mgpa/gradish/d;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 16
    :goto_1
    iget-object v2, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mDownloadDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->checkDownloadDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mDownloadDir:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v2

    .line 17
    :goto_2
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v3

    iget-object v4, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v4}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->init(ZLjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->updateBgPreDownloadNewTask()V

    .line 19
    iget-object v1, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getFileOverdueTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->cleanFiles(J)V

    .line 20
    iget-object v1, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getSpaceLimitation()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->cleanFilesBySpace(J)V

    .line 21
    iget-object v1, v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tgpa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->addForegroundCallbackListener()V

    :cond_3
    return-void
.end method

.method public onBecameBackground()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "onBecameBackground"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isTasksAllFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "onBecameBackground BgPreDownloadService do not have download tasks, ctrl by sdk: "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->removeForegroundCallbackListener()V

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$3;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$3;-><init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onBecameForeground()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "onBecameForeground"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->isTasksAllFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "onBecameForeground BgPreDownloadService do not have download tasks, ctrl by sdk: "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->removeForegroundCallbackListener()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->stop()V

    return-void
.end method

.method public preProcess()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->stopChildProcess()V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->setCallbackImpl()V

    return-void
.end method

.method public stopChildProcess()V
    .locals 2

    .line 1
    const-string v0, "predownload"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->hasChildProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "[stopChildProcess]: stop :predownload"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "intent.ACTION_CLOSE_PRE_DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updateBgPreDownloadNewTask()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "[updateBgPreDownloadNewTask]: bgPreDownload cloud ctrl did not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v4, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->sLastBgPreDownloadUpdateTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2a30

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    sput-wide v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->sLastBgPreDownloadUpdateTime:J

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->mCloudConfig:Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "initAndCheck whoCtrl is none: "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->updateBgPreDownloadNewTask()V

    return-void
.end method
