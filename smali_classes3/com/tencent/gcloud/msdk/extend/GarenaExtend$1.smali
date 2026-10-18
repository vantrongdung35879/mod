.class Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;
.super Ljava/lang/Object;
.source "GarenaExtend.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/extend/GarenaExtend;->getBindInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/beetalk/sdk/GGPlatform$Callback<",
        "Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/extend/GarenaExtend;

.field final synthetic val$authToken:Lcom/beetalk/sdk/data/AuthToken;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/extend/GarenaExtend;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->this$0:Lcom/tencent/gcloud/msdk/extend/GarenaExtend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$authToken:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccounts(Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;->getBoundedAccounts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/networking/model/BoundedAccount;

    .line 339
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 340
    const-string/jumbo v3, "uid"

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getPlatformType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "platformType"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getPlatformType()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->GetChannelFromGGPlatform(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "channelType"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getCreateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "createTime"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 345
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 346
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beetalk/sdk/networking/model/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    const-string v5, "email"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beetalk/sdk/networking/model/AccountInfo;->getGender()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "gender"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beetalk/sdk/networking/model/AccountInfo;->getIcon()Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/BoundedAccount;->getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/AccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nickName"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "accountInfo"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private getChannels(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 358
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 360
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->GetChannelFromGGPlatform(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onPluginResult(Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;)V
    .locals 5

    .line 308
    new-instance v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    const-string v1, "Garena"

    const-string v2, "getBindInfo"

    const/16 v3, 0x457

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x270f

    .line 310
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->retCode:I

    .line 311
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->retMsg:Ljava/lang/String;

    const/4 v1, -0x1

    .line 312
    iput v1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->thirdCode:I

    .line 313
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;->getError()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->thirdMsg:Ljava/lang/String;

    goto/16 :goto_1

    .line 315
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 317
    :try_start_0
    const-string v2, "availablePlatforms"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;->getAvailablePlatforms()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v2, "availableChannels"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;->getAvailablePlatforms()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->getChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$authToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getPrimaryPlatform()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    const-string v2, "primaryPlatform"

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$authToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/AuthToken;->getPrimaryPlatform()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    const-string v2, "primaryChannel"

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$authToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/AuthToken;->getPrimaryPlatform()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->GetChannelFromGGPlatform(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    :cond_1
    const-string v2, "boundedAccounts"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->getAccounts(Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBindInfo result error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 330
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extraJson:Ljava/lang/String;

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getBindInfo extra json:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extraJson:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x44d

    .line 333
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 305
    check-cast p1, Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$1;->onPluginResult(Lcom/beetalk/sdk/networking/model/BindPlatformInfoResponse;)V

    return-void
.end method
