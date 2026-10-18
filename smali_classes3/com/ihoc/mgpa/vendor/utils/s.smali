.class public final Lcom/ihoc/mgpa/vendor/utils/s;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public c:Z

.field public final d:Lcom/ihoc/mgpa/vendor/utils/h;

.field public final e:Lcom/ihoc/mgpa/vendor/utils/s$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-direct {v0}, Lcom/ihoc/mgpa/vendor/utils/h;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/s$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/s$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/s;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->e:Lcom/ihoc/mgpa/vendor/utils/s$a;

    return-void
.end method


# virtual methods
.method public final checkVendorServer()V
    .locals 6

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/s;->e:Lcom/ihoc/mgpa/vendor/utils/s$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string/jumbo v3, "try to bind service cosa"

    const-string v4, "GameManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/e;

    invoke-direct {v3}, Lcom/ihoc/mgpa/vendor/utils/e;-><init>()V

    new-instance v5, Lcom/ihoc/mgpa/vendor/utils/f;

    invoke-direct {v5, v0, v3, v2}, Lcom/ihoc/mgpa/vendor/utils/f;-><init>(Lcom/ihoc/mgpa/vendor/utils/h;Lcom/ihoc/mgpa/vendor/utils/e;Lcom/ihoc/mgpa/vendor/utils/s$a;)V

    invoke-virtual {v3, v1, v5}, Lcom/ihoc/mgpa/vendor/utils/e;->a(Landroid/content/Context;Lcom/ihoc/mgpa/vendor/utils/l;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bind cosa service failed!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    iput-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/utils/s$a;->a()V

    :cond_0
    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "oppo get system data: "

    iget-boolean v1, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1
    iget-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/ihoc/mgpa/vendor/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "GameManager"

    const-string p2, "game service is not available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v2

    .line 4
    :catchall_0
    const-string p1, "oppo get system data exception!"

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 3

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    .line 1
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v2, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "GameManager"

    const-string v1, "game service is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public final updateGameInfo(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 2
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/s;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "oppo update game json: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    .line 3
    iget-object v1, v0, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v2, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ihoc/mgpa/vendor/utils/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string p1, "GameManager"

    const-string v0, "game service is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/s;->c:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 7
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/s;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/s;->updateGameInfo(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/s;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
