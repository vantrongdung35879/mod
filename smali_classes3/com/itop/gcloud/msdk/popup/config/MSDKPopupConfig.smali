.class public Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
.super Ljava/lang/Object;
.source "MSDKPopupConfig.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$PopupJsonKey;,
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;,
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;,
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;,
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;",
        "Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable<",
        "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public checkUrl:Ljava/lang/String;

.field public contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public expireTime:J

.field public frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

.field private volatile isValid:Z

.field public nativeStyle:Ljava/lang/String;

.field public popID:I

.field public priority:I

.field public publishTime:J

.field public reportUrl:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

.field public sig:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public validPlatform:Ljava/lang/String;

.field public validTime:J

.field public windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    const-wide/16 v2, 0x0

    .line 53
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    .line 56
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    .line 68
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    .line 71
    iput-boolean v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    const-wide/16 v2, 0x0

    .line 53
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    .line 56
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    .line 68
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    .line 71
    iput-boolean v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->initWithJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKPopupConfig.Constructor err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    const-wide/16 v2, 0x0

    .line 53
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    .line 56
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    .line 68
    iput-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    .line 71
    iput-boolean v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->initWithJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method static getHtmlFileDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "popup/html"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getPluginFileDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "popup/plugin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private initWithJson(Lorg/json/JSONObject;)V
    .locals 5

    .line 280
    const-string v0, "pop_id"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    .line 281
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    const-string v2, "scene_type"

    invoke-static {p1, v2, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    .line 282
    const-string v0, "scene"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    .line 283
    const-string/jumbo v0, "valid_platform"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    const-string v3, "pop_type"

    invoke-static {p1, v3, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    .line 285
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    .line 286
    const-string v3, "content_type"

    invoke-static {p1, v3, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 285
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 290
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 291
    const-string v0, "sig"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->id:I

    const-string v3, "pop_freq"

    invoke-static {p1, v3, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    .line 293
    const-string v0, "priority"

    invoke-static {p1, v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    .line 294
    const-string v0, "publish_time"

    const-wide/16 v3, 0x0

    invoke-static {p1, v0, v3, v4}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    .line 295
    const-string v0, "check_url"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    .line 296
    const-string v0, "report_url"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    .line 297
    const-string v0, "native_style"

    invoke-static {p1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "valid_time"

    invoke-static {p1, v0, v3, v4}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    .line 299
    const-string v0, "expire_time"

    invoke-static {p1, v0, v3, v4}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object p0, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-eq p0, v2, :cond_1

    iget-object p0, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    if-eq p0, v2, :cond_1

    iget-object p0, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-eq p0, v2, :cond_1

    iget-object p0, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSDKPopupConfig.parse err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
    .locals 2

    .line 94
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    invoke-direct {v0, p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;-><init>(Lorg/json/JSONObject;)V

    .line 95
    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-eq p0, v1, :cond_1

    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    if-eq p0, v1, :cond_1

    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-eq p0, v1, :cond_1

    iget-object p0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkLegality(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    .line 208
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const-string v3, "%s, md5 is invalid"

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->URL:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne p1, v1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    .line 244
    iget-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    if-nez p1, :cond_7

    .line 245
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :cond_1
    sget-object p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->PLUGIN:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    goto/16 :goto_1

    .line 210
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isAssetsConfig()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->isAssetExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    goto/16 :goto_1

    .line 214
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v5

    if-eqz v5, :cond_5

    .line 218
    array-length v6, v5

    if-lez v6, :cond_5

    .line 219
    new-instance v6, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$1;-><init>(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Landroid/content/Context;Ljava/io/File;)V

    invoke-static {p1, v5, v6}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    .line 229
    iget-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    if-nez p1, :cond_7

    .line 230
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v0

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_4
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string v0, "%s, decryptedContent is empty"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_5
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string v0, "%s, content is empty"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string v0, "%s is not exists"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 251
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    return p1
.end method

.method public clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
    .locals 1

    .line 165
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;-><init>()V

    .line 166
    invoke-virtual {v0, p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->copy(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 256
    check-cast p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-object v0, p1

    check-cast v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 258
    iget v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    iget v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 261
    iget-wide v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    iget-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 264
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    if-lez v4, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    return p1

    :cond_4
    return v0
.end method

.method public copy(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V
    .locals 2

    .line 145
    iget v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    .line 146
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    .line 147
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    .line 150
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 151
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->id:I

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    .line 154
    iget v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    .line 155
    iget-wide v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    .line 156
    iget-wide v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    .line 157
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    .line 160
    iget-wide v0, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    iput-wide v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    .line 161
    iget-boolean p1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    return-void
.end method

.method public getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 179
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->PLUGIN:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v0, v1, :cond_1

    .line 186
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPluginFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    iget v1, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v9, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    iget v9, v9, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object p1, v8, v6

    aput-object v0, v8, v5

    aput-object v1, v8, v4

    aput-object v9, v8, v3

    aput-object v10, v8, v2

    .line 185
    const-string p1, "%s%sMSDKPopup_%d_%d_%d_%s.apk"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :cond_1
    const-string p1, ""

    return-object p1

    .line 182
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getHtmlFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    iget v1, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v9, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    iget v9, v9, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object p1, v8, v6

    aput-object v0, v8, v5

    aput-object v1, v8, v4

    aput-object v9, v8, v3

    aput-object v10, v8, v2

    .line 181
    const-string p1, "%s%sMSDKPopup_%d_%d_%d_%s.html"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAssetsConfig()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v0, v1, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid:Z

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    :try_start_0
    const-string v1, "pop_id"

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->popID:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "scene_type"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v2, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v1, "scene"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v1, "valid_platform"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "pop_type"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->windowType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    iget v2, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v1, "content_type"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    iget v2, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "sig"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "pop_freq"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    iget v2, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v1, "priority"

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->priority:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v1, "publish_time"

    iget-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string v1, "check_url"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "report_url"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "native_style"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->nativeStyle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v1, "valid_time"

    iget-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    const-string v1, "expire_time"

    iget-wide v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSDKPopupConfig.toJsonString err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
