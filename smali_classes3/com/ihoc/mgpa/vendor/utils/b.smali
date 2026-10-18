.class public Lcom/ihoc/mgpa/vendor/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/IVendorBridge;


# instance fields
.field public a:Lcom/ihoc/mgpa/vendor/utils/a0;

.field public b:Lcom/ihoc/mgpa/vendor/IVendorBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    return-void
.end method

.method public static a(ILcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/d;->values()[Lcom/ihoc/mgpa/vendor/utils/d;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 4
    iget-object v3, v2, Lcom/ihoc/mgpa/vendor/utils/d;->b:Lcom/ihoc/mgpa/vendor/GameKey;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 6
    iget-object p0, v2, Lcom/ihoc/mgpa/vendor/utils/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 8
    :pswitch_1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/u0;->values()[Lcom/ihoc/mgpa/vendor/utils/u0;

    move-result-object p1

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 9
    iget-object v3, v2, Lcom/ihoc/mgpa/vendor/utils/u0;->b:Lcom/ihoc/mgpa/vendor/GameKey;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result v3

    if-ne v3, p0, :cond_2

    .line 11
    iget-object p0, v2, Lcom/ihoc/mgpa/vendor/utils/u0;->a:Ljava/lang/String;

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0, p2}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/b;->b(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne p2, v1, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "transform game data to json exception! "

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/b;->b(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ihoc/mgpa/vendor/VendorBridgeType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1, p1}, Lcom/ihoc/mgpa/vendor/utils/b;->b(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    const-string/jumbo v1, "}"

    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateGameInfo jsonBuilder: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const-string v1, "\""

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/ihoc/mgpa/vendor/GameKey;->FPS:Lcom/ihoc/mgpa/vendor/GameKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result p2

    if-eq p0, p2, :cond_2

    sget-object p2, Lcom/ihoc/mgpa/vendor/GameKey;->SCENE:Lcom/ihoc/mgpa/vendor/GameKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result p2

    if-eq p0, p2, :cond_2

    sget-object p2, Lcom/ihoc/mgpa/vendor/GameKey;->THREAD_TID:Lcom/ihoc/mgpa/vendor/GameKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result p2

    if-ne p0, p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final checkSuccessor()V
    .locals 4

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeAdapter()Lcom/ihoc/mgpa/vendor/IVendorBridge;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/b;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string/jumbo v0, "vendor bridge %s check success, no need to check others!"

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectFinished()V

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/b;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v3, Lcom/ihoc/mgpa/vendor/GameKey;->STRATEGY_CHECK:Lcom/ihoc/mgpa/vendor/GameKey;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/GameKey;->getKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string/jumbo v2, "{\"%d\":\"0\"}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->updateGameInfo(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->b:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "check vendor bridge finished. no vendor bridge is available!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectFinished()V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "start to check next successor, vendor bridge type: %s"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->b:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/IVendorBridge;->checkVendorServer()V

    return-void
.end method

.method public checkVendorServer()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The base vendor bridge ignore, start to check!."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method

.method public getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSuccessor()Lcom/ihoc/mgpa/vendor/IVendorBridge;
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->b:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    return-object v0
.end method

.method public getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public isSSPAvailable()Z
    .locals 1

    instance-of v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;

    return v0
.end method

.method public final setSuccessor(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/b;->b:Lcom/ihoc/mgpa/vendor/IVendorBridge;

    return-void
.end method

.method public updateGameInfo(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateGameInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateGameInfo(Ljava/util/HashMap;)V
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

    return-void
.end method

.method public updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateGameInfoToSSP(Ljava/util/HashMap;)V
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

    return-void
.end method
