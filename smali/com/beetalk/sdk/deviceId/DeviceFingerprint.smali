.class public final Lcom/beetalk/sdk/deviceId/DeviceFingerprint;
.super Ljava/lang/Object;
.source "DeviceFingerprint.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceFingerprint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceFingerprint.kt\ncom/beetalk/sdk/deviceId/DeviceFingerprint\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,127:1\n39#2,12:128\n*S KotlinDebug\n*F\n+ 1 DeviceFingerprint.kt\ncom/beetalk/sdk/deviceId/DeviceFingerprint\n*L\n77#1:128,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0007J\u000e\u0010%\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!J\u0006\u0010&\u001a\u00020\u0004J\u0018\u0010\'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!2\u0006\u0010(\u001a\u00020\u0004H\u0002J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0006R\u0011\u0010\u0019\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0006R\u0011\u0010\u001b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0006R\u0011\u0010\u001d\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0006\u00a8\u0006+"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/DeviceFingerprint;",
        "",
        "()V",
        "androidReleaseVersion",
        "",
        "getAndroidReleaseVersion",
        "()Ljava/lang/String;",
        "androidSdkVersion",
        "",
        "getAndroidSdkVersion",
        "()I",
        "brandName",
        "getBrandName",
        "buildDate",
        "",
        "getBuildDate",
        "()J",
        "buildDisplay",
        "getBuildDisplay",
        "buildId",
        "getBuildId",
        "cpuABIs",
        "getCpuABIs",
        "deviceName",
        "getDeviceName",
        "fingerprint",
        "getFingerprint",
        "hardware",
        "getHardware",
        "productName",
        "getProductName",
        "getAdAAID",
        "context",
        "Landroid/content/Context;",
        "getAndroidId",
        "getGcboosterUUID",
        "getImei",
        "getMqsUUID",
        "getRandomUUID",
        "getSettingField",
        "fieldName",
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


# static fields
.field public static final INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->INSTANCE:Lcom/beetalk/sdk/deviceId/DeviceFingerprint;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSettingField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 63
    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final getAdAAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const-string v0, "ad_aaid"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSettingField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v0, "android_id"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSettingField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAndroidReleaseVersion()Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAndroidSdkVersion()I
    .locals 1

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public final getBrandName()Ljava/lang/String;
    .locals 2

    .line 44
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBuildDate()J
    .locals 2

    .line 48
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public final getBuildDisplay()Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "DISPLAY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 2

    .line 50
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCpuABIs()Ljava/lang/String;
    .locals 11

    .line 54
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v1, "SUPPORTED_ABIS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    const-string v0, ","

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 2

    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 2

    .line 36
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "FINGERPRINT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getGcboosterUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string v0, "gcbooster_uuid"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSettingField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHardware()Ljava/lang/String;
    .locals 2

    .line 56
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "HARDWARE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->checkReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 119
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 120
    invoke-static {p1}, Landroidx/core/telephony/TelephonyManagerCompat;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getMqsUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "key_mqs_uuid"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/deviceId/DeviceFingerprint;->getSettingField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "PRODUCT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRandomUUID()Ljava/lang/String;
    .locals 4

    .line 72
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v1, "com.garena.msdk"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/exts/ContextExtsKt;->getCryptoSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const-string v1, ""

    const-string/jumbo v2, "uuid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 76
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v1
.end method

.method public final getSocManufacturer()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/beetalk/sdk/helper/BuildEnv$Version;->INSTANCE:Lcom/beetalk/sdk/helper/BuildEnv$Version;

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/BuildEnv$Version;->isAndroid12orAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getSocModel()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/beetalk/sdk/helper/BuildEnv$Version;->INSTANCE:Lcom/beetalk/sdk/helper/BuildEnv$Version;

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/BuildEnv$Version;->isAndroid12orAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
