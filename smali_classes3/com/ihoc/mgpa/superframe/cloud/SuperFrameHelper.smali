.class public Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isSuperFrameOpen:Z = false

.field private static mfrcLicense:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCloudConfig()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ihoc/mgpa/gradish/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isJSONValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->AESdecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v1, "switch"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    const-string v3, "config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 12
    const-string/jumbo v3, "superframe"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->isSuperFrameOpen:Z

    :cond_1
    if-eqz v2, :cond_2

    .line 16
    const-string/jumbo v1, "superFrameConfig"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    const-string v2, "mfrcLicense"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->mfrcLicense:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "get local cloud config failed for superframe!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getMFRCLicense()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mfrc.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile2Bytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->checkCloudConfig()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get local license for superframe failed! try from cloud! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :try_start_1
    sget-boolean v0, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->isSuperFrameOpen:Z

    if-nez v0, :cond_1

    .line 13
    const-string/jumbo v0, "superframe is not open in cloud config!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-array v0, v1, [B

    return-object v0

    .line 16
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->mfrcLicense:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 17
    const-string/jumbo v0, "superframe license is not found in cloud config!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-array v0, v1, [B

    return-object v0

    :cond_2
    const/4 v2, 0x2

    .line 20
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    array-length v2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    .line 22
    sput-object v2, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->mfrcLicense:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "get cloud license for superframe failed!"

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-array v0, v1, [B

    return-object v0
.end method

.method public static isFuncOpen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->isSuperFrameOpen:Z

    return v0
.end method
