.class public Lcom/ihoc/mgpa/notch/NotchCloudConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private controlFilePath:Ljava/lang/String;

.field private inNotchBlacklist:Z

.field private notchCloud:Lcom/ihoc/mgpa/notch/NotchCloudData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->inNotchBlacklist:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->controlFilePath:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->checkCloudConfig()V

    return-void
.end method

.method private checkCloudConfig()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->controlFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->controlFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->AESdecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "switch"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 12
    const-string v2, "notchSupport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->inNotchBlacklist:Z

    :cond_1
    if-eqz v1, :cond_2

    .line 24
    const-string v0, "notchCloudData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    const-string v1, "notchwidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    const-string v2, "notchheight"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    new-instance v2, Lcom/ihoc/mgpa/notch/NotchCloudData;

    invoke-direct {v2, v1, v0}, Lcom/ihoc/mgpa/notch/NotchCloudData;-><init>(II)V

    iput-object v2, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->notchCloud:Lcom/ihoc/mgpa/notch/NotchCloudData;

    .line 29
    invoke-virtual {v2}, Lcom/ihoc/mgpa/notch/NotchCloudData;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getNotchCloudData()Lcom/ihoc/mgpa/notch/NotchCloudData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->notchCloud:Lcom/ihoc/mgpa/notch/NotchCloudData;

    return-object v0
.end method

.method public isNotchBlack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->inNotchBlacklist:Z

    return v0
.end method
