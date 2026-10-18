.class public Lcom/beetalk/sdk/plugin/PluginUtil;
.super Ljava/lang/Object;
.source "PluginUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFriendGroups(Ljava/util/List;)Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/FriendGroup;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/beetalk/sdk/data/DataModel$FriendGroup;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 21
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/networking/model/FriendGroup;

    .line 22
    new-instance v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$FriendGroup;-><init>()V

    .line 23
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/FriendGroup;->getPlatform()I

    move-result v3

    iput v3, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->platform:I

    .line 24
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/FriendGroup;->getFriends()Ljava/util/List;

    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/FriendGroup;->getUids()Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 29
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->ids:Ljava/util/Vector;

    .line 30
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->idInfoList:Ljava/util/Vector;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    .line 32
    new-instance v7, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;

    invoke-direct {v7}, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;-><init>()V

    .line 33
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v7, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->openId:Ljava/lang/String;

    if-ge v6, v5, :cond_0

    .line 35
    new-instance v8, Ljava/math/BigInteger;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->uid:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v8, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->ids:Ljava/util/Vector;

    iget-object v9, v7, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->openId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v8, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->idInfoList:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseGroupUserInfoList(Lorg/json/JSONObject;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 52
    :try_start_0
    const-string v1, "friends"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    new-instance v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;-><init>()V

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 56
    const-string v4, "open_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->openID:Ljava/lang/String;

    .line 57
    const-string v4, "platform"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->platform:I

    .line 58
    const-string v4, "gender"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->gender:I

    .line 59
    const-string v4, "nickname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->nickName:Ljava/lang/String;

    .line 60
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->iconURL:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
