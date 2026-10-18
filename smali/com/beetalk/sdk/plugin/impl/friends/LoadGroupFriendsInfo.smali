.class public Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;
.super Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin;
.source "LoadGroupFriendsInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 19
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;->executeAction(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method protected executeAction(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;Ljava/util/List;Landroid/app/Activity;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "msdk.group.friend.info"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb53

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$executeAction$0$com-beetalk-sdk-plugin-impl-friends-LoadGroupFriendsInfo(Ljava/util/List;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/beetalk/sdk/networking/service/SocialService;->getFriendsInfoV2Sync(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;->getResponseCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;

    invoke-direct {v1}, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;->flag:I

    .line 39
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne v0, v2, :cond_0

    .line 40
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/PluginUtil;->parseGroupUserInfoList(Lorg/json/JSONObject;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, v1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;->info:Ljava/util/Vector;

    .line 42
    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
