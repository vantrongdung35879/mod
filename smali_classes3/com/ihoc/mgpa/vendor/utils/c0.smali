.class public final Lcom/ihoc/mgpa/vendor/utils/c0;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public final c:Lcom/ihoc/mgpa/vendor/utils/h0;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/h0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/vendor/utils/h0;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

    return-void
.end method


# virtual methods
.method public final checkVendorServer()V
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/c0$a;

    invoke-direct {v2, p0}, Lcom/ihoc/mgpa/vendor/utils/c0$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/c0;)V

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/vendor/utils/h0;->a(Landroid/content/Context;Lcom/ihoc/mgpa/vendor/utils/z;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/c0$b;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/c0$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/c0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/c0$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    .line 1
    iget v2, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/e0;->getSystemData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 4
    iget p2, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    if-nez p2, :cond_2

    .line 5
    iget-object p1, p1, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Lcom/ihoc/mgpa/vendor/utils/e0;->getSupportStrategy()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-object v1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    .line 1
    :try_start_0
    iget-object v2, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/ihoc/mgpa/vendor/utils/e0;->getSupportState()I

    move-result v2

    iput v2, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget v0, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "standard binder v1 is support."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_1
    if-ne v0, v2, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "standard binder v1 auth failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_AUTH_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_2
    if-ne v0, v1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "standard binder v1 is not support."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "standard binder v1 sdk check failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public final isSSPAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateGameInfo(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 2
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/c0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

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

    const-string v1, "binder v1 update game json: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->c:Lcom/ihoc/mgpa/vendor/utils/h0;

    .line 3
    iget v1, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/e0;->updateGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/c0;->d:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 6
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/c0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/c0;->updateGameInfo(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/c0;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
