.class public final Lcom/ihoc/mgpa/vendor/utils/w;
.super Lcom/ihoc/mgpa/vendor/utils/b;
.source "SourceFile"


# instance fields
.field public final c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

.field public d:Z

.field public e:Z

.field public f:Lcom/samsung/android/game/compatibility/SharedMemory;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b;-><init>()V

    new-instance v0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-direct {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->f:Lcom/samsung/android/game/compatibility/SharedMemory;

    iput v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    iput v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/samsung/android/game/compatibility/SharedMemory;

    const-string v2, "spa4game"

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/game/compatibility/SharedMemory;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->f:Lcom/samsung/android/game/compatibility/SharedMemory;

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    const-string/jumbo v3, "{\"1\":{\"name\":\"main version\",\"type\":\"string\",\"length\":\"16\"},\"2\":{\"name\":\"resource version\",\"type\":\"string\",\"length\":\"16\"},\"4\":{\"name\":\"scene\",\"type\":\"integer\",\"maximum\":\"1000\",\"minimum\":\"0\"},\"5\":{\"name\":\"fps\",\"type\":\"integer\",\"maximum\":\"60\",\"minimum\":\"0\"},\"6\":{\"name\":\"frame miss\",\"type\":\"integer\",\"maximum\":\"30\",\"minimum\":\"0\"},\"7\":{\"name\":\"limit fps\",\"type\":\"integer\",\"maximum\":\"60\",\"minimum\":\"0\"},\"8\":{\"name\":\"model quality\",\"type\":\"integer\"},\"9\":{\"name\":\"effect quality\",\"type\":\"integer\"},\"10\":{\"name\":\"resolution\",\"type\":\"label\",\"value\":{\"0\":\"720P\",\"1\":\"1080P\"}},\"11\":{\"name\":\"user count\",\"type\":\"integer\",\"maximum\":\"100\",\"minimum\":\"1\"},\"12\":{\"name\":\"network latency\",\"type\":\"integer\"},\"13\":{\"name\":\"record status\",\"type\":\"boolean\"},\"15\":{\"name\":\"server ip address\",\"type\":\"string\",\"length\":\"32\"},\"16\":{\"name\":\"role status\",\"type\":\"boolean\"},\"40\":{\"name\":\"scene type\",\"type\":\"integer\",\"maximum\":\"1000\",\"minimum\":\"0\"},\"41\":{\"name\":\"load map status\",\"type\":\"boolean\"},\"42\":{\"name\":\"bombing status\",\"type\":\"boolean\"},\"43\":{\"name\":\"multithread status\",\"type\":\"boolean\"},\"51\":{\"name\":\"heavy thread\",\"type\":\"integer\"},\"52\":{\"name\":\"role outline\",\"type\":\"boolean\"},\"53\":{\"name\":\"picture style\",\"type\":\"integer\"},\"54\":{\"name\":\"Anti-aliasing\",\"type\":\"integer\"},\"55\":{\"name\":\"Server IP port\",\"type\":\"integer\"},\"56\":{\"name\":\"protocol type\",\"type\":\"integer\"},\"57\":{\"name\":\"shadow\",\"type\":\"integer\"},\"80\":{\"name\":\"cpu level\",\"type\":\"integer\"},\"81\":{\"name\":\"gpu level\",\"type\":\"integer\"},\"82\":{\"name\":\"target fps\",\"type\":\"integer\"},\"83\":{\"name\":\"scene importance\",\"type\":\"integer\"},\"90\":{\"name\":\"tgpa version\",\"type\":\"string\",\"length\":\"16\"}}"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->initLowLatencyIPC(Ljava/lang/String;Lcom/samsung/android/game/compatibility/SharedMemory;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "samsung scenesdk: init initLowLatencyIPC failed, use SharedMemory for ipc failed. "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->f:Lcom/samsung/android/game/compatibility/SharedMemory;

    invoke-virtual {v1}, Lcom/samsung/android/game/compatibility/SharedMemory;->close()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk: check spa exception. "

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(III)V
    .locals 5

    .line 2
    iget v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "samsung scenesdk: update ssp json: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->f:Lcom/samsung/android/game/compatibility/SharedMemory;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/samsung/android/game/compatibility/SharedMemory;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: write spa data exception. "

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: update data to spa exception times > 10. "

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 3

    .line 3
    iget v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_0

    const-string p2, "samsung scenesdk: value is long then required size. value: %s"

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p3, "samsung scenesdk: update ssp data: %s"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p3, v2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/ihoc/mgpa/vendor/utils/w;->f:Lcom/samsung/android/game/compatibility/SharedMemory;

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, v2, v1, p2, p1}, Lcom/samsung/android/game/compatibility/SharedMemory;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "samsung scenesdk: write spa data exception. "

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    iget p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->g:I

    goto :goto_0

    :cond_1
    const-string p1, "samsung scenesdk: update data to spa is not available, or exception times > 10. "

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final checkVendorServer()V
    .locals 4

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/w$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/w$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/w;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->registerBindListener(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-static {}, Lcom/ihoc/mgpa/vendor/utils/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->bind(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/w$b;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/vendor/utils/w$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/w;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final getBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method

.method public final getSSPHardwareData()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->totgpa()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ERROR"

    return-object v0
.end method

.method public final getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object p2, Lcom/ihoc/mgpa/vendor/utils/w$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "samsung don\'t support this func, key: %d"

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    const-string/jumbo p2, "{\"10000\":0}"

    invoke-virtual {p1, p2}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->getVendorSupportStrategy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR"

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "samsung scenesdk: scenesdk get vendor strategy null."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method public final isAvailable()Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/utils/w;->a()V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0

    :cond_0
    const-string v0, "samsung scenesdk service init failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "samsung scenesdk service init exception."

    invoke-static {v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_INIT_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method

.method public final isSSPAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    return v0
.end method

.method public final updateGameInfo(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(ILjava/lang/String;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/w;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const-string v0, "samsung updateGameInfo json: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->c:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->updateGameInfo(Ljava/lang/String;)I

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

    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->d:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    .line 5
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/utils/b;->a(Ljava/util/HashMap;Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/w;->updateGameInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateGameInfoToSSP(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/vendor/utils/w;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: update data to spa is not available."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const-string v4, "samsung scenesdk: spa key: %d , spa value: %s"

    invoke-static {v4, v3}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x10

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    const/16 v3, 0x20

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, 0x6c

    const/16 v1, 0x6c

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "[\\d.]+:\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x4c

    invoke-virtual {p0, p1, p2, v3}, Lcom/ihoc/mgpa/vendor/utils/w;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: cut server ip url to ip:port failed."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_2
    const/16 v0, 0x48

    const/16 v1, 0x48

    goto/16 :goto_3

    :pswitch_3
    const/16 v0, 0x44

    const/16 v1, 0x44

    goto/16 :goto_3

    :pswitch_4
    const/16 v0, 0x40

    const/16 v1, 0x40

    goto/16 :goto_3

    :pswitch_5
    const/16 v0, 0x3c

    const/16 v1, 0x3c

    goto/16 :goto_3

    :pswitch_6
    const/16 v0, 0x38

    const/16 v1, 0x38

    goto/16 :goto_3

    :pswitch_7
    const/16 v0, 0x34

    const/16 v1, 0x34

    goto/16 :goto_3

    :pswitch_8
    const/16 v0, 0x30

    const/16 v1, 0x30

    goto/16 :goto_3

    :pswitch_9
    const/16 v0, 0x2c

    const/16 v1, 0x2c

    goto/16 :goto_3

    :pswitch_a
    const/16 v0, 0x28

    const/16 v1, 0x28

    goto/16 :goto_3

    :pswitch_b
    iget v3, p0, Lcom/ihoc/mgpa/vendor/utils/w;->h:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: parse fps to int exception as a int string."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ihoc/mgpa/vendor/utils/w;->h:I

    return-void

    :cond_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    float-to-int v0, v0

    :goto_1
    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1, v2}, Lcom/ihoc/mgpa/vendor/utils/w;->a(III)V

    goto :goto_3

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "samsung scenesdk: parse fps to int exception as a float string."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_c
    const/16 v1, 0x20

    goto :goto_3

    :pswitch_d
    const/16 v0, 0x7c

    const/16 v1, 0x7c

    goto :goto_3

    :pswitch_e
    const/16 v0, 0x78

    const/16 v1, 0x78

    goto :goto_3

    :pswitch_f
    const/16 v0, 0x74

    const/16 v1, 0x74

    goto :goto_3

    :pswitch_10
    const/16 v0, 0x70

    const/16 v1, 0x70

    goto :goto_3

    :pswitch_11
    const/16 v0, 0x98

    const/16 v1, 0x98

    goto :goto_3

    :pswitch_12
    const/16 v0, 0x94

    const/16 v1, 0x94

    goto :goto_3

    :pswitch_13
    const/16 v0, 0x90

    const/16 v1, 0x90

    goto :goto_3

    :pswitch_14
    const/16 v0, 0x8c

    const/16 v1, 0x8c

    goto :goto_3

    :pswitch_15
    const/16 v0, 0x88

    const/16 v1, 0x88

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_16
    const/16 v0, 0x84

    const/16 v1, 0x84

    goto :goto_3

    :pswitch_17
    const/16 v0, 0x80

    const/16 v1, 0x80

    goto :goto_3

    :pswitch_18
    const/16 v0, 0xa8

    const/16 v1, 0xa8

    goto :goto_3

    :pswitch_19
    const/16 v0, 0xa4

    const/16 v1, 0xa4

    goto :goto_3

    :pswitch_1a
    const/16 v0, 0xa0

    const/16 v1, 0xa0

    goto :goto_3

    :pswitch_1b
    const/16 v0, 0x9c

    const/16 v1, 0x9c

    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/w;->updateGameInfo(ILjava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/ihoc/mgpa/vendor/utils/w;->a(III)V

    return-void

    :cond_3
    const/16 p1, 0xac

    invoke-virtual {p0, p2, p1, v3}, Lcom/ihoc/mgpa/vendor/utils/w;->a(Ljava/lang/String;II)V

    return-void

    :cond_4
    invoke-virtual {p0, p2, v3, v3}, Lcom/ihoc/mgpa/vendor/utils/w;->a(Ljava/lang/String;II)V

    return-void

    :cond_5
    invoke-virtual {p0, p2, v1, v3}, Lcom/ihoc/mgpa/vendor/utils/w;->a(Ljava/lang/String;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x50
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final updateGameInfoToSSP(Ljava/util/HashMap;)V
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
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/vendor/utils/w;->updateGameInfo(Ljava/util/HashMap;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ihoc/mgpa/vendor/utils/w;->updateGameInfoToSSP(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
