.class public final Lcom/ihoc/mgpa/vendor/utils/i0;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public final c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    new-instance v0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-direct {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

    return-void
.end method


# virtual methods
.method public final checkVendorServer()V
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/i0$a;

    invoke-direct {v2, p0}, Lcom/ihoc/mgpa/vendor/utils/i0$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/i0;)V

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->bind(Landroid/content/Context;Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/i0$b;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/i0$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/i0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/i0$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->getSystemData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->getSupportStrategy()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 3

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->getSupportState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "binder protocol v2 is support."

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "binder protocol v2 auth failed."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_AUTH_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "binder protocol v2 is not support."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "binder protocol v2 sdk check failed."

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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/i0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

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

    const-string v1, "binder v2 update game json: %s"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->c:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->updateGameInfo(Ljava/lang/String;)V

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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/i0;->d:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 5
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/i0;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/i0;->updateGameInfo(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/i0;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
