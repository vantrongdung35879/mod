.class public Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;
.super Ljava/lang/Object;
.source "MSDKPopupConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;
    }
.end annotation


# static fields
.field private static final LOCAL_POPUP_CONFIG:Ljava/lang/String; = "popup/MSDKPopupLocal.config"

.field private static final POPUP_CONFIG_DIR:Ljava/lang/String; = "popup"

.field private static final POPUP_CONFIG_FILENAME:Ljava/lang/String; = "MSDKPopup.config"


# instance fields
.field private assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

.field private context:Landroid/content/Context;

.field private popupConfigSetHolder:Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    .line 41
    new-instance p1, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    invoke-direct {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;-><init>()V

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->popupConfigSetHolder:Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->popupConfigSetHolder:Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->checkAndUpdateConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object p0

    return-object p0
.end method

.method private checkAndUpdateConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 3

    .line 184
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->getInfo()Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    iget v1, v0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->code:I

    if-nez v1, :cond_3

    .line 187
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->popupsStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->popupsStr:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;-><init>(Lorg/json/JSONArray;)V

    .line 191
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    if-nez v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadAssetsConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v1

    iput-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {p0, v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->checkEffectivenessAndMerge(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {p0, v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->deleteRedundancyOneTimeRecords(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)V

    .line 198
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->toJsonString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getMSDKPopupConfigFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->write(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 205
    :cond_1
    const-string v1, "encryptContent of remote popupConfigs is empty"

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    const-string v1, "content of remote popupConfigs is empty"

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;

    invoke-direct {v2, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->checkLegality(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkEffectivenessAndMerge(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 7

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget-object p2, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 230
    iget-object v1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    if-nez v1, :cond_3

    .line 232
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object v1

    .line 233
    iget-object v2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v3, v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v3, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v0, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_3
    iget-wide v2, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    iget-wide v4, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->publishTime:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 243
    invoke-virtual {v1, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->copy(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object p1
.end method

.method private deleteNoUseConfigFile(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getHtmlFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 128
    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isAssetsConfig()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 134
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private deleteRedundancyOneTimeRecords(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)V
    .locals 4

    .line 255
    const-string v0, "deleteRedundancyOneTimeRecords"

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 257
    iget-object p1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 258
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ONCE:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    if-ne v2, v3, :cond_0

    .line 259
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 265
    iget-object v1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ONCE:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    if-ne v1, v2, :cond_2

    .line 266
    iget-object v1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    iget-object p2, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :cond_3
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    const-string p2, "MSDKPopupFrequencyOnce"

    invoke-static {p1, p2, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->deleteAllItemsWithout(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashSet;)Z

    return-void
.end method

.method private getMSDKPopupConfigFile()Ljava/io/File;
    .locals 5

    .line 276
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    .line 277
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "popup"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "MSDKPopup.config"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 278
    const-string v3, "%s%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadAssetsConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    const-string v1, "popup/MSDKPopupLocal.config"

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->readAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    array-length v2, v0

    if-lez v2, :cond_0

    .line 170
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {v0, v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;-><init>(Lorg/json/JSONObject;)V

    .line 172
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->checkLegality(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private loadConfigSetFromFile(Ljava/io/File;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 3

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    array-length v1, v0

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;

    invoke-direct {v2, p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;-><init>(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;Ljava/io/File;)V

    invoke-static {v1, v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {p1, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private loadLocalConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadAssetsConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    .line 149
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->getMSDKPopupConfigFile()Ljava/io/File;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadConfigSetFromFile(Ljava/io/File;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->checkEffectivenessAndMerge(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {p0, v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->deleteRedundancyOneTimeRecords(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;)V

    .line 157
    :cond_0
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->deleteNoUseConfigFile(Ljava/util/ArrayList;)V

    .line 158
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->checkLegality(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;)V

    return-object v0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->assetsPopupConfigSet:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    return-object v0
.end method


# virtual methods
.method public getPopupConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->popupConfigSetHolder:Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->get()Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    return-object v0
.end method

.method public loadPopupConfig()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadLocalConfigSet()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->popupConfigSetHolder:Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    invoke-virtual {v1, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->set(Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;)V

    :cond_0
    return-void
.end method

.method public startUpdateConfigSet()V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;-><init>(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
