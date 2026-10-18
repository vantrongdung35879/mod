.class public Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
.super Ljava/lang/Object;
.source "MSDKPopupConfigSet.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable<",
        "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final POPUPS:Ljava/lang/String; = "popups"


# instance fields
.field private isInited:Z

.field public popupConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;"
        }
    .end annotation
.end field

.field sceneConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;"
        }
    .end annotation
.end field

.field sceneTypeConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->initWithJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKPopupConfigSet.Constructor err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->initWithJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    .line 40
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->initWithJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method private initWithJson(Lorg/json/JSONArray;)V
    .locals 6

    .line 170
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 174
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 175
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    .line 179
    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->parse(Lorg/json/JSONObject;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v4, v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v5, v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 196
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKPopupConfigSet.initWithJson err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private initWithJson(Lorg/json/JSONObject;)V
    .locals 2

    .line 161
    :try_start_0
    const-string v0, "popups"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->initWithJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKPopupConfigSet.initWithJson err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkLegality(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;)V
    .locals 4

    .line 106
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-interface {p2, p1}, Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;->onFail(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    .line 118
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 120
    invoke-virtual {v2, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkLegality(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 126
    invoke-interface {p2}, Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;->onSucc()V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 130
    invoke-interface {p2, v0}, Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;->onFail(Ljava/util/ArrayList;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    .line 114
    invoke-interface {p2}, Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;->onSucc()V

    :cond_8
    return-void
.end method

.method public clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
    .locals 6

    .line 78
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 80
    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    move-result-object v2

    .line 81
    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->scene:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v4, v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v4, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    iget v5, v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 93
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    iput-boolean v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

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
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->clone()Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    return-object v0
.end method

.method public getPopupByScene(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPopupsBySceneType(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->sceneTypeConfigMap:Ljava/util/HashMap;

    iget p1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isInited()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->isInited:Z

    return v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .line 59
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 62
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 63
    invoke-virtual {v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 69
    :cond_1
    const-string v3, "popups"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MSDKPopupConfigSet.toJsonString err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-object v0
.end method
