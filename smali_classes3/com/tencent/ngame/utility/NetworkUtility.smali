.class public Lcom/tencent/ngame/utility/NetworkUtility;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtility"

.field private static mInit:Z = false

.field private static mNetworkPermissionGranted:Z = false

.field private static mNetworkStatus:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 127
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/ngame/utility/NetworkUtility;->mNetworkStatus:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MNA(Landroid/content/Context;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramContext"
        }
    .end annotation

    .line 213
    const-string v0, "MNA check"

    const-string v1, "NetworkUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 218
    :cond_0
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    return v0

    .line 222
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 p0, 0x4

    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 228
    invoke-static {p0, v2}, Lcom/tencent/ngame/utility/NetworkUtility;->MNA_a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result p0

    move v0, p0

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v3, 0x9

    if-ne p0, v3, :cond_5

    const/4 p0, 0x5

    const/4 v0, 0x5

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    const/4 p0, 0x6

    const/4 v0, 0x6

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNetworkState exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return v0
.end method

.method public static MNA_a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramContext",
            "paramNetworkInfo"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/ngame/utility/NetworkUtility;->h(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 195
    :cond_2
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 196
    const-string p1, "NetworkUtility"

    const-string v2, "MNA_a getNetworkType:"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    .line 198
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/ngame/utility/NetworkUtility;->h(I)I

    move-result p1

    if-eqz p1, :cond_3

    return p1

    :cond_3
    if-nez v1, :cond_4

    .line 203
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method static synthetic access$000(IZ)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/tencent/ngame/utility/NetworkUtility;->onNetworkChange(IZ)V

    return-void
.end method

.method public static checkManifestPermission(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 107
    :cond_0
    :try_start_0
    const-string v1, "android.permission.INTERNET"

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 109
    aget-object v3, v1, v2

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const-string p0, "NetworkUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not granted"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static getDeviceNetworkDetail(Landroid/content/Context;)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 359
    const-string v0, "NetworkUtility"

    .line 0
    const-string/jumbo v1, "wifi: ,isWifiEnabled:"

    const-string v2, "hasicccard: "

    .line 360
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 363
    :goto_0
    invoke-static {p0}, Lcom/tencent/ngame/utility/NetworkUtility;->checkManifestPermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 369
    :cond_1
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 370
    const-string/jumbo v7, "wifi"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 371
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    .line 372
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 373
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    .line 374
    invoke-static {p0}, Lcom/tencent/ngame/utility/NetworkUtility;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 375
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isDataEnabled:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",wifiInfo:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    if-eqz v9, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    if-eqz v8, :cond_5

    or-int/lit8 v0, v3, 0x10

    move v3, v0

    .line 386
    :cond_5
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_6

    or-int/lit8 v0, v3, 0x20

    move v3, v0

    .line 391
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mobile_data_always_on"

    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_7

    or-int/lit8 v3, v3, 0x40

    goto :goto_2

    :catch_0
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return v3
.end method

.method public static getNetworkStatus()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    :goto_0
    sget-object v2, Lcom/tencent/ngame/utility/NetworkUtility;->mNetworkStatus:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 140
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getNetworkStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkUtility"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 42
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 45
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v1, "NetworkUtility"

    if-nez v0, :cond_1

    .line 48
    :try_start_1
    const-string p0, "ConnectivityManager is null"

    invoke-static {v1, p0}, Lcom/tencent/ngame/utility/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 51
    :cond_1
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 53
    const-string p0, "GetDetailNetworkState has not ACCESS_NETWORK_STATE permission"

    invoke-static {v1, p0}, Lcom/tencent/ngame/utility/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 56
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 57
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 64
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWiFi:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 67
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 90
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_UNKNOWN:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 86
    :pswitch_0
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_4G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 84
    :pswitch_1
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_3G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 74
    :pswitch_2
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_2G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 88
    :cond_5
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_5G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 93
    :cond_6
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaOthers:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    .line 59
    :cond_7
    :goto_0
    const-string p0, "NetworkInfo is null or isUnAvailable"

    invoke-static {v1, p0}, Lcom/tencent/ngame/utility/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    sget-object p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {p0}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ordinal()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static h(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramInt"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isMobileDataEnabled(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 336
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 338
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 339
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 341
    invoke-static {v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    return p0

    .line 344
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getDataEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    .line 345
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 346
    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static onNetworkChange(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transportType",
            "available"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/tencent/ngame/utility/NetworkUtility;->mNetworkStatus:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    aput-boolean p1, v0, p0

    .line 134
    invoke-static {}, Lcom/tencent/ngame/utility/NetworkUtility;->getNetworkStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NatviceCallbackUtilGameObject"

    const-string v0, "onNetworkStatus"

    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startNetworkMonitor(Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 243
    sget-boolean v0, Lcom/tencent/ngame/utility/NetworkUtility;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/tencent/ngame/utility/NetworkUtility;->MNA(Landroid/content/Context;)I

    const/4 v0, 0x1

    .line 247
    sput-boolean v0, Lcom/tencent/ngame/utility/NetworkUtility;->mInit:Z

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 249
    invoke-static {p0}, Lcom/tencent/ngame/utility/NetworkUtility;->checkManifestPermission(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/ngame/utility/NetworkUtility;->mNetworkPermissionGranted:Z

    if-nez v1, :cond_1

    .line 251
    const-string p0, "NetworkUtility"

    const-string v0, "PermissionGranted is false"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 255
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 256
    new-instance v2, Lcom/tencent/ngame/utility/NetworkUtility$1;

    invoke-direct {v2}, Lcom/tencent/ngame/utility/NetworkUtility$1;-><init>()V

    .line 272
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/tencent/ngame/utility/NetworkUtility$2;

    invoke-direct {v4}, Lcom/tencent/ngame/utility/NetworkUtility$2;-><init>()V

    .line 289
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 290
    new-instance v6, Lcom/tencent/ngame/utility/NetworkUtility$3;

    invoke-direct {v6}, Lcom/tencent/ngame/utility/NetworkUtility$3;-><init>()V

    .line 306
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 307
    new-instance v7, Lcom/tencent/ngame/utility/NetworkUtility$4;

    invoke-direct {v7}, Lcom/tencent/ngame/utility/NetworkUtility$4;-><init>()V

    .line 323
    invoke-virtual {p0, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 324
    invoke-virtual {p0, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 325
    invoke-virtual {p0, v5, v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 326
    invoke-virtual {p0, v1, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
