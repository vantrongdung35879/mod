.class public Lcom/intlgame/core/device_info/EmulatorHelper;
.super Ljava/lang/Object;
.source "EmulatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/device_info/EmulatorHelper$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/core/device_info/EmulatorHelper$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/intlgame/core/device_info/EmulatorHelper;-><init>()V

    return-void
.end method

.method private checkFeaturesByBaseBand()Lcom/intlgame/core/device_info/CheckResult;
    .locals 3

    .line 304
    const-string v0, "gsm.version.baseband"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 307
    :cond_0
    const-string v1, "1.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 309
    :goto_0
    new-instance v2, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByBoard()Lcom/intlgame/core/device_info/CheckResult;
    .locals 4

    .line 273
    const-string v0, "ro.product.board"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    const-string v2, "goldfish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 280
    :goto_0
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByCgroup()Lcom/intlgame/core/device_info/CheckResult;
    .locals 3

    .line 366
    const-string v0, "cat /proc/self/cgroup"

    invoke-virtual {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 368
    :cond_0
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByFlavor()Lcom/intlgame/core/device_info/CheckResult;
    .locals 4

    .line 224
    const-string v0, "ro.build.flavor"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string/jumbo v2, "vbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "cancro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "ttvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "nox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    const-string v2, "sdk_gphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 231
    :cond_3
    :goto_0
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByHardware()Lcom/intlgame/core/device_info/CheckResult;
    .locals 7

    .line 197
    const-string v0, "ro.hardware"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "android_x86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "intel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "vbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "ttvm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "nox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "vbox86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "cancro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x1

    .line 215
    :goto_2
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v1, v4, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5185cff0 -> :sswitch_6
        -0x310ae8ad -> :sswitch_5
        0x1aad7 -> :sswitch_4
        0x367d37 -> :sswitch_3
        0x372195 -> :sswitch_2
        0x5fb64d6 -> :sswitch_1
        0x37e65fa6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkFeaturesByManufacturer()Lcom/intlgame/core/device_info/CheckResult;
    .locals 4

    .line 257
    const-string v0, "ro.product.manufacturer"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, "genymotion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    const-string v2, "netease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 264
    :goto_0
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByModel()Lcom/intlgame/core/device_info/CheckResult;
    .locals 4

    .line 240
    const-string v0, "ro.product.model"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    const-string v2, "emulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    const-string v2, "android sdk built for x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 248
    :goto_0
    new-instance v1, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByPlatform()Lcom/intlgame/core/device_info/CheckResult;
    .locals 3

    .line 289
    const-string v0, "ro.board.platform"

    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/intlgame/core/device_info/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 295
    :goto_0
    new-instance v2, Lcom/intlgame/core/device_info/CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/intlgame/core/device_info/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 180
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 181
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 182
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getProperty error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :cond_0
    move-object p1, v0

    .line 188
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private getSensorNumber(Landroid/content/Context;)I
    .locals 1

    .line 316
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 317
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public static getSingleInstance()Lcom/intlgame/core/device_info/EmulatorHelper;
    .locals 1

    .line 32
    invoke-static {}, Lcom/intlgame/core/device_info/EmulatorHelper$SingletonHolder;->access$100()Lcom/intlgame/core/device_info/EmulatorHelper;

    move-result-object v0

    return-object v0
.end method

.method private static getStrFromBufferInputSteam(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 413
    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x200

    .line 416
    new-array v1, v0, [B

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 422
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ge v3, v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUserAppNum(Ljava/lang/String;)I
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    const-string v0, "package:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 173
    array-length p1, p1

    return p1
.end method

.method private getUserAppNumber()I
    .locals 1

    .line 324
    const-string v0, "pm list package -3"

    invoke-virtual {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getUserAppNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasLightSensor(Landroid/content/Context;)Z
    .locals 1

    .line 356
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 357
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private supportBluetooth(Landroid/content/Context;)Z
    .locals 1

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCamera(Landroid/content/Context;)Z
    .locals 1

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCameraFlash(Landroid/content/Context;)Z
    .locals 1

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 376
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 377
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 379
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 380
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p1, 0xa

    .line 381
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 382
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 383
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 385
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 387
    invoke-static {v3}, Lcom/intlgame/core/device_info/EmulatorHelper;->getStrFromBufferInputSteam(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    nop

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_2
    move-object v0, v2

    goto :goto_3

    :catch_3
    nop

    move-object v3, v0

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catch_4
    nop

    move-object v2, v0

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v1, v0

    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 393
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 400
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 408
    :cond_3
    throw p1

    :catch_7
    nop

    move-object v1, v0

    move-object v2, v1

    :goto_6
    move-object v3, v2

    :goto_7
    if-eqz v2, :cond_4

    .line 393
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 400
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    if-eqz v1, :cond_6

    .line 406
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_6
    return-object v0
.end method

.method public isEmulator(Landroid/content/Context;)Z
    .locals 16

    .line 36
    const-string v0, "isEmulator called ! "

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByHardware()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v0

    .line 44
    iget v1, v0, Lcom/intlgame/core/device_info/CheckResult;->result:I

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "this device is emulator hardware = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v1, 0x1

    .line 54
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByFlavor()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v4

    .line 55
    iget v5, v4, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v5, :cond_3

    if-eq v5, v3, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator flavor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 65
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByModel()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v5

    .line 66
    iget v6, v5, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator model = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 76
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByManufacturer()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v6

    .line 77
    iget v7, v6, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v7, :cond_7

    if-eq v7, v3, :cond_6

    goto :goto_3

    .line 82
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator manufacturer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 87
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByBoard()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v7

    .line 88
    iget v8, v7, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v8, :cond_9

    if-eq v8, v3, :cond_8

    goto :goto_4

    .line 93
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator board = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 98
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByPlatform()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v8

    .line 99
    iget v9, v8, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v9, :cond_b

    if-eq v9, v3, :cond_a

    goto :goto_5

    .line 104
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator platform = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 109
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByBaseBand()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v9

    .line 110
    iget v10, v9, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-eqz v10, :cond_d

    if-eq v10, v3, :cond_c

    goto :goto_6

    .line 115
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this device is emulator baseBand = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return v3

    :cond_d
    add-int/lit8 v1, v1, 0x3

    .line 120
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/intlgame/core/device_info/EmulatorHelper;->getSensorNumber(Landroid/content/Context;)I

    move-result v10

    const/16 v11, 0xe

    if-ge v10, v11, :cond_f

    const/16 v11, 0xa

    if-gt v10, v11, :cond_e

    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 128
    :cond_f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->getUserAppNumber()I

    move-result v11

    const/4 v12, 0x5

    if-gt v11, v12, :cond_10

    add-int/lit8 v1, v1, 0x1

    .line 132
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/intlgame/core/device_info/EmulatorHelper;->supportCameraFlash(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_11

    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/intlgame/core/device_info/EmulatorHelper;->supportCamera(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_12

    add-int/lit8 v1, v1, 0x1

    .line 138
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/intlgame/core/device_info/EmulatorHelper;->supportBluetooth(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_13

    add-int/lit8 v1, v1, 0x1

    .line 142
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/intlgame/core/device_info/EmulatorHelper;->hasLightSensor(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_14

    add-int/lit8 v1, v1, 0x1

    .line 146
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/intlgame/core/device_info/EmulatorHelper;->checkFeaturesByCgroup()Lcom/intlgame/core/device_info/CheckResult;

    move-result-object v2

    .line 147
    iget v3, v2, Lcom/intlgame/core/device_info/CheckResult;->result:I

    if-nez v3, :cond_15

    add-int/lit8 v1, v1, 0x1

    .line 149
    :cond_15
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 p1, v1

    const-string v1, "Test start\r\nhardware = "

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v0, v0, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nflavor = "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v4, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nmodel = "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v5, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nmanufacturer = "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v6, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nboard = "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v7, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nplatform = "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v8, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nbaseBand = "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v9, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nsensorNumber = "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nuserAppNumber = "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nsupportCamera = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nsupportCameraFlash = "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nsupportBluetooth = "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nhasLightSensor = "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\ncgroupResult = "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v2, Lcom/intlgame/core/device_info/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\nsuspectCount = "

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-le v1, v0, :cond_16

    const/4 v2, 0x1

    goto :goto_8

    :cond_16
    const/4 v2, 0x0

    :goto_8
    return v2

    .line 38
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
