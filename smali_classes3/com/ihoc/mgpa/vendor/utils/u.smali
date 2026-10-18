.class public final Lcom/ihoc/mgpa/vendor/utils/u;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public c:Z

.field public final d:Lcom/ihoc/mgpa/vendor/utils/h;

.field public final e:Lcom/ihoc/mgpa/vendor/utils/u$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-direct {v0}, Lcom/ihoc/mgpa/vendor/utils/h;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/u$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/u$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/u;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->e:Lcom/ihoc/mgpa/vendor/utils/u$a;

    return-void
.end method


# virtual methods
.method public final checkVendorServer()V
    .locals 9

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/u;->e:Lcom/ihoc/mgpa/vendor/utils/u$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string/jumbo v3, "try to bind service oiface"

    const-string v4, "GameManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/r;

    invoke-direct {v3}, Lcom/ihoc/mgpa/vendor/utils/r;-><init>()V

    new-instance v5, Lcom/ihoc/mgpa/vendor/utils/g;

    invoke-direct {v5, v0, v3, v2}, Lcom/ihoc/mgpa/vendor/utils/g;-><init>(Lcom/ihoc/mgpa/vendor/utils/h;Lcom/ihoc/mgpa/vendor/utils/r;Lcom/ihoc/mgpa/vendor/utils/u$a;)V

    const-string v0, "OIfaceService"

    if-nez v1, :cond_0

    .line 2
    const-string v1, "context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iput-object v5, v3, Lcom/ihoc/mgpa/vendor/utils/r;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    .line 3
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkService"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "oiface"

    aput-object v5, v2, v8

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    sget v2, Lcom/ihoc/mgpa/vendor/utils/n$a;->a:I

    if-nez v1, :cond_1

    move-object v2, v5

    goto :goto_0

    .line 4
    :cond_1
    const-string v2, "com.oppo.oiface.IOIfaceService"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v6, v2, Lcom/ihoc/mgpa/vendor/utils/n;

    if-eqz v6, :cond_2

    check-cast v2, Lcom/ihoc/mgpa/vendor/utils/n;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/n$a$a;

    invoke-direct {v2, v1}, Lcom/ihoc/mgpa/vendor/utils/n$a$a;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    iput-object v2, v3, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    :try_start_1
    iget-object v1, v3, Lcom/ihoc/mgpa/vendor/utils/r;->d:Lcom/ihoc/mgpa/vendor/utils/r$a;

    invoke-interface {v2, v1}, Lcom/ihoc/mgpa/vendor/utils/n;->a(Lcom/ihoc/mgpa/vendor/utils/r$a;)V

    iget-object v1, v3, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    invoke-interface {v1}, Lcom/ihoc/mgpa/vendor/utils/n;->a()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, v3, Lcom/ihoc/mgpa/vendor/utils/r;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/l;->b()V

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "current package error"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "game service current package err: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v3, Lcom/ihoc/mgpa/vendor/utils/r;->a:Lcom/ihoc/mgpa/vendor/utils/n;

    goto :goto_1

    .line 10
    :catch_1
    const-string v1, "can\'t find oiface service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    iget-object v0, v3, Lcom/ihoc/mgpa/vendor/utils/r;->b:Lcom/ihoc/mgpa/vendor/utils/l;

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendor/utils/l;->a()V

    .line 13
    :goto_2
    const-string v0, "bind oiface service failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v0

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "oppo oiface maybe don\'t support this func, key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/u;->d:Lcom/ihoc/mgpa/vendor/utils/h;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1
    iget-object v0, p1, Lcom/ihoc/mgpa/vendor/utils/h;->a:Lcom/ihoc/mgpa/vendor/utils/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    sget-object v2, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    if-eq p1, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/ihoc/mgpa/vendor/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_1
    const-string p1, "GameManager"

    const-string p2, "game service is not available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    .line 4
    :catchall_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "oppo get system data exception!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 3

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->d:Lcom/ihoc/mgpa/vendor/utils/h;

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

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public final isSSPAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateGameInfo(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 2
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/u;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

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

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->d:Lcom/ihoc/mgpa/vendor/utils/h;

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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/u;->c:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 7
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/u;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/u;->updateGameInfo(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/u;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
