.class public Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "GetUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Ljava/lang/Void;",
        "Lcom/beetalk/sdk/data/DataModel$UserInfoRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;->executeAction(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected executeAction(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 0

    .line 53
    new-instance p2, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;Landroid/app/Activity;)V

    invoke-static {p2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "msdk.user.info.get"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb3e

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$executeAction$0$com-beetalk-sdk-plugin-impl-user-GetUserInfo(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/beetalk/sdk/networking/service/UserService;->getUserInfoSync()Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;

    invoke-direct {v1}, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;-><init>()V

    .line 57
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    .line 58
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->platform:I

    const/4 v2, 0x1

    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "UserInfoPlugin: Received response from server %s"

    invoke-static {v3, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    .line 67
    const-string v2, "platform"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->platform:I

    .line 69
    new-instance v2, Lcom/beetalk/sdk/data/DataModel$UserInfo;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$UserInfo;-><init>()V

    .line 70
    invoke-virtual {v2, v0}, Lcom/beetalk/sdk/data/DataModel$UserInfo;->updateFrom(Lorg/json/JSONObject;)V

    .line 71
    iput-object v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->userInfo:Lcom/beetalk/sdk/data/DataModel$UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 75
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    .line 78
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
