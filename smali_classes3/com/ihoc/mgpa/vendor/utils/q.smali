.class public Lcom/ihoc/mgpa/vendor/utils/q;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Landroid/net/LocalSocket;

.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/OutputStream;

.field public g:Ljava/lang/Thread;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->d:Landroid/net/LocalSocket;

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->e:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    iput v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "resmon"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "local socket type: %s, receive content: %s"

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "IsSupport"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-interface {v1, v2, p1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ihoc/mgpa/vendor/VendorKey;->getVendorKey(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v3

    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "local socket content parse json exception."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final checkVendorServer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "local socket thread has been created already!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectSuccess(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/p;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/p;-><init>(Lcom/ihoc/mgpa/vendor/utils/q;)V

    const-string v2, "VendorSocket"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/ihoc/mgpa/vendor/utils/q;->updateGameInfo(ILjava/lang/String;)V

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "{\"code\": %d}"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 1

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

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/q;->updateGameInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "local socket type: %s , connect is broken!"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v3, "local socket type: %s , update game json: %s"

    invoke-static {v3, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->f:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iput v2, p0, Lcom/ihoc/mgpa/vendor/utils/q;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget p1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->h:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ihoc/mgpa/vendor/utils/q;->h:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "local socket connection may be broken. socket type: %s"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {p1, p0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onConnectionBroken(Lcom/ihoc/mgpa/vendor/IVendorBridge;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateGameInfo(Ljava/util/HashMap;)V
    .locals 2
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
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/q;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/q;->updateGameInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/q;->getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "local socket type: %s , connect is broken!"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/q;->updateGameInfo(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/q;->updateGameInfo(Ljava/util/HashMap;)V

    return-void
.end method
