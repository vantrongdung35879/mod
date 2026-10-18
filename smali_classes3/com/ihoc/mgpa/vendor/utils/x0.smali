.class public final Lcom/ihoc/mgpa/vendor/utils/x0;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/x0;->c:Z

    return-void
.end method


# virtual methods
.method public final checkVendorServer()V
    .locals 4

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/x0;->isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;

    move-result-object v0

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "xiaomi sdk is available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/v0;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/v0;-><init>(Lcom/ihoc/mgpa/vendor/utils/x0;)V

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/w0;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/vendor/utils/w0;-><init>(Lcom/ihoc/mgpa/vendor/utils/x0;)V

    :try_start_0
    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/GameBoosterManager;->registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V

    invoke-static {v0, v3}, Lcom/xiaomi/boostersdk/GameBoosterManager;->registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "xiaomi register game callback failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Lcom/xiaomi/boostersdk/GameBoosterManager;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "xiaomi sdk is not available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "uuid"

    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/x0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-static {p1, p2}, Lcom/xiaomi/boostersdk/GameBoosterManager;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x3ee

    .line 1
    invoke-static {p1, p2}, Lcom/xiaomi/boostersdk/GameBoosterManager;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x3eb

    .line 2
    invoke-static {p1, v3}, Lcom/xiaomi/boostersdk/GameBoosterManager;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x3ea

    .line 3
    invoke-static {p1, v3}, Lcom/xiaomi/boostersdk/GameBoosterManager;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_PERMISSION_ERROR:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorErrCode;->getStringCode()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "xiaomi device get unique id exception!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_NO_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    :goto_0
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorErrCode;->getStringCode()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 1

    invoke-static {}, Lcom/xiaomi/boostersdk/GameBoosterManager;->checkIfSupportGameBooster()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/x0;->c:Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public final isSSPAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateGameInfo(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/x0;->c:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/x0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/x0;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "xiaomi update game json: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/xiaomi/boostersdk/GameBoosterManager;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/x0;->c:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 5
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/x0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/x0;->updateGameInfo(ILjava/lang/String;)V

    return-void
.end method

.method public final updateGameInfoToSSP(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/x0;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
