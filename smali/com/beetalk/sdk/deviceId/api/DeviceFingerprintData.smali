.class public final Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;
.super Ljava/lang/Object;
.source "DeviceFingerprintData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008,\u0008\u0001\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u0016\u0010\u001e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0014R\u0016\u0010 \u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0014R\u0016\u0010#\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0014R\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0014R\u0016\u0010&\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0014R\u0016\u0010)\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0014R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0014R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0014R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0014\u00a8\u0006/"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;",
        "",
        "randomUUID",
        "",
        "fingerprint",
        "androidReleaseVersion",
        "androidSdkVersion",
        "model",
        "brand",
        "productName",
        "buildDate",
        "buildId",
        "buildDisplay",
        "cpuABIs",
        "socManufacturer",
        "socModel",
        "hardware",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "adAAID",
        "getAdAAID",
        "()Ljava/lang/String;",
        "androidId",
        "getAndroidId",
        "getAndroidReleaseVersion",
        "getAndroidSdkVersion",
        "getBrand",
        "getBuildDate",
        "getBuildDisplay",
        "getBuildId",
        "getCpuABIs",
        "drmID",
        "getDrmID",
        "drmVendor",
        "getDrmVendor",
        "getFingerprint",
        "gcboosterUUID",
        "getGcboosterUUID",
        "getHardware",
        "imei",
        "getImei",
        "getModel",
        "mqsUUID",
        "getMqsUUID",
        "getProductName",
        "getRandomUUID",
        "getSocManufacturer",
        "getSocModel",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adAAID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_aaid"
    .end annotation
.end field

.field private final androidId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_id"
    .end annotation
.end field

.field private final androidReleaseVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_version_release"
    .end annotation
.end field

.field private final androidSdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_version_sdk"
    .end annotation
.end field

.field private final brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private final buildDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "build_date"
    .end annotation
.end field

.field private final buildDisplay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "build_display"
    .end annotation
.end field

.field private final buildId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "build_id"
    .end annotation
.end field

.field private final cpuABIs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpu_abis"
    .end annotation
.end field

.field private final drmID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drm_id"
    .end annotation
.end field

.field private final drmVendor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drm_vendor"
    .end annotation
.end field

.field private final fingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fingerprint"
    .end annotation
.end field

.field private final gcboosterUUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcbooster_uuid"
    .end annotation
.end field

.field private final hardware:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware"
    .end annotation
.end field

.field private final imei:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imei"
    .end annotation
.end field

.field private final model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private final mqsUUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key_mqs_uuid"
    .end annotation
.end field

.field private final productName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_name"
    .end annotation
.end field

.field private final randomUUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "random_uuid"
    .end annotation
.end field

.field private final socManufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soc_manufacturer"
    .end annotation
.end field

.field private final socModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soc_model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "randomUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidReleaseVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidSdkVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brand"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildDate"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildDisplay"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuABIs"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "socManufacturer"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "socModel"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hardware"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->randomUUID:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->fingerprint:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidReleaseVersion:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidSdkVersion:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->model:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->brand:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->productName:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildDate:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildId:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildDisplay:Ljava/lang/String;

    .line 58
    iput-object p11, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->cpuABIs:Ljava/lang/String;

    .line 61
    iput-object p12, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->socManufacturer:Ljava/lang/String;

    .line 64
    iput-object p13, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->socModel:Ljava/lang/String;

    .line 67
    iput-object p14, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->hardware:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    sget-object p2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidId:Ljava/lang/String;

    .line 97
    sget-object p2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getGcboosterUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->gcboosterUUID:Ljava/lang/String;

    .line 98
    sget-object p2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getMqsUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->mqsUUID:Ljava/lang/String;

    .line 99
    sget-object p2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getAdAAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->adAAID:Ljava/lang/String;

    .line 100
    sget-object p2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->imei:Ljava/lang/String;

    .line 102
    new-instance p1, Lcom/beetalk/sdk/deviceId/MediaDRM;

    invoke-direct {p1}, Lcom/beetalk/sdk/deviceId/MediaDRM;-><init>()V

    check-cast p1, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/beetalk/sdk/deviceId/MediaDRM;

    .line 103
    invoke-virtual {p2}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getUID()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->drmID:Ljava/lang/String;

    .line 104
    invoke-virtual {p2}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getVendor()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->drmVendor:Ljava/lang/String;

    .line 105
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 102
    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v1}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getRandomUUID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 32
    sget-object v2, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v2}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getFingerprint()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 35
    sget-object v3, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v3}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getAndroidReleaseVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 38
    sget-object v4, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v4}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getAndroidSdkVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 41
    sget-object v5, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v5}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 44
    sget-object v6, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v6}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getBrandName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 47
    sget-object v7, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v7}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getProductName()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 50
    sget-object v8, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v8}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getBuildDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 53
    sget-object v9, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v9}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getBuildId()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 56
    sget-object v10, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v10}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getBuildDisplay()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 59
    sget-object v11, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v11}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getCpuABIs()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 62
    sget-object v12, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v12}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSocManufacturer()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 65
    sget-object v13, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v13}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSocModel()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 68
    sget-object v0, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-virtual {v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getHardware()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_d
    move-object/from16 v0, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    move-object/from16 p15, v0

    .line 26
    invoke-direct/range {p1 .. p15}, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdAAID()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->adAAID:Ljava/lang/String;

    return-object v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAndroidReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidReleaseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getAndroidSdkVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->androidSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildDate()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildDisplay()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpuABIs()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->cpuABIs:Ljava/lang/String;

    return-object v0
.end method

.method public final getDrmID()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->drmID:Ljava/lang/String;

    return-object v0
.end method

.method public final getDrmVendor()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->drmVendor:Ljava/lang/String;

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getGcboosterUUID()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->gcboosterUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getHardware()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getMqsUUID()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->mqsUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRandomUUID()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->randomUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocManufacturer()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->socManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocModel()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;->socModel:Ljava/lang/String;

    return-object v0
.end method
