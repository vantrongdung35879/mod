.class public Lcom/intlgame/core/device_info/DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfoHolder.java"


# static fields
.field private static final REMOTE_DEVICE_INFO_ENCRYPT_KEY_KEY:Ljava/lang/String; = "remote_device_info_encrypt_key"

.field private static final REMOTE_DEVICE_INFO_ENCRYPT_OFFSET_KEY:Ljava/lang/String; = "remote_device_info_encrypt_offset"

.field private static final REMOTE_DISABLE_COLLECT_DEVICE_INFO_NAME_KEY:Ljava/lang/String; = "remote_disable_collect_device_info_name"

.field private static final REMOTE_ENCRYPT_COLLECT_DEVICE_INFO_NAME_KEY:Ljava/lang/String; = "remote_encrypt_collect_device_info_name"

.field private static instance:Lcom/intlgame/core/device_info/DeviceInfoHolder; = null

.field private static isEmulator:Ljava/lang/Boolean; = null

.field private static final tag:Ljava/lang/String; = "DeviceInfoHolder"


# instance fields
.field private mAsynDeviceInfoNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceInfoBoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceInfoLongMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/core/device_info/MultiValueMap<",
            "Lcom/intlgame/core/device_info/IDeviceInfoObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceInfoSwitchesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableByDefaultDeviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEncryptDeviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mSustainableObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/core/device_info/IDeviceInfoObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSynDeviceInfoNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSynInfoCollectComplete:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;

    invoke-direct {v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;-><init>()V

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->instance:Lcom/intlgame/core/device_info/DeviceInfoHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    .line 48
    iput-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mUid:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDisableByDefaultDeviceInfoList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-direct {v0}, Lcom/intlgame/core/device_info/MultiValueMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "device_brand"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "bundle_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_core"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_freq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "device_model"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "screen_height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "screen_width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "os_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "ram_total"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "rom_total"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "lang_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "root_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "lang_type_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "battery_power"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "battery_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "battery_temp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string/jumbo v1, "wifi_num"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string/jumbo v1, "wifi_rssi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "signal_level"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "ram_avail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "rom_avail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "pss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_usage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_temp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "cpu_arch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gpu_usage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gpu_temp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "bytes_sent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "bytes_received"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gl_renderer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gl_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gl_vendor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "gpu_name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "client_region"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    const-string v1, "apk_path"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/List;

    const-string v1, "android_adid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDisableByDefaultDeviceInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetInstance()Lcom/intlgame/core/device_info/DeviceInfoHolder;
    .locals 1

    .line 115
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->instance:Lcom/intlgame/core/device_info/DeviceInfoHolder;

    return-object v0
.end method

.method private collectAllDeviceInfoFromSystem(Landroid/content/Context;)V
    .locals 1

    .line 178
    const-string p1, "start collectAllDeviceInfoFromSystem"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getDisableDeviceInfoNameList()V

    .line 180
    invoke-direct {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getEncryptDeviceInfoNameList()V

    .line 182
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->collectAsynDeviceInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    .line 192
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifySynDeviceInfoCollectComplete()V

    return-void
.end method

.method private declared-synchronized getAllDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x64

    .line 647
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 648
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 651
    const-string v5, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string/jumbo v5, "value"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string/jumbo v5, "status"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intlgame/core/device_info/DeviceInfo;

    iget v3, v3, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 654
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 656
    :try_start_2
    const-string v4, "getStringDeviceInfo JSONException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception track : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 662
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 663
    const-string v5, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string/jumbo v5, "value"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string/jumbo v5, "status"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intlgame/core/device_info/DeviceInfo;

    iget v3, v3, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 666
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 668
    :try_start_4
    const-string v4, "getStringDeviceInfo JSONException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception track : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 672
    :cond_1
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 674
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 675
    const-string v5, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string/jumbo v5, "value"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/device_info/DeviceInfo;

    iget-object v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    const-string/jumbo v5, "status"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intlgame/core/device_info/DeviceInfo;

    iget v3, v3, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 678
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v3

    .line 680
    :try_start_6
    const-string v4, "getStringDeviceInfo JSONException"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception track : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 685
    :cond_2
    sget-object v2, Lcom/intlgame/core/device_info/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 686
    invoke-virtual {p0, v6}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 688
    :try_start_7
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 689
    const-string v8, "name"

    iget-object v9, v6, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    const-string/jumbo v8, "value"

    iget-object v9, v6, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string/jumbo v8, "status"

    iget v6, v6, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v6

    .line 694
    :try_start_8
    const-string v7, "getStringDeviceInfo JSONException"

    invoke-static {v7}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception track : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 699
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 700
    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1, v4}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    .line 702
    :cond_4
    :try_start_9
    const-string v1, "deviceInfosArr is empty"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 703
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v2, ""

    invoke-direct {v1, p1, v2, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception v1

    .line 706
    :try_start_a
    const-string v2, "getStringDeviceInfo Exception"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception track : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 708
    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v2, ""

    invoke-direct {v1, p1, v2, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_5
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method private getDeviceInfoStatus(Ljava/lang/String;)I
    .locals 3

    .line 1060
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v0

    .line 1061
    iget v1, v0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1062
    iget p1, v0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    .line 1065
    :cond_0
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v0

    .line 1066
    iget v1, v0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    if-eq v1, v2, :cond_1

    .line 1067
    iget p1, v0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    .line 1070
    :cond_1
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1

    .line 1071
    iget v0, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    if-eq v0, v2, :cond_2

    .line 1072
    iget p1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    :cond_2
    return v2
.end method

.method private getDisableDeviceInfoNameList()V
    .locals 0

    return-void
.end method

.method private getEncryptDeviceInfoNameList()V
    .locals 0

    return-void
.end method

.method private getInnerDeviceInfoStatus(Ljava/lang/String;)I
    .locals 2

    .line 1044
    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 1045
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    .line 1047
    :cond_0
    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1

    .line 1048
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    .line 1050
    :cond_1
    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 1051
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    return p1

    .line 1054
    :cond_2
    const-string p1, "device info type error"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method private isDeviceInfoDisableCache(Ljava/lang/String;)Z
    .locals 5

    .line 843
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 844
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isEmulatorWithoutContext()Z
    .locals 3

    .line 195
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isEmulator:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 197
    :try_start_0
    invoke-static {}, Lcom/intlgame/core/device_info/EmulatorHelper;->getSingleInstance()Lcom/intlgame/core/device_info/EmulatorHelper;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/core/device_info/EmulatorHelper;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isEmulator:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "context must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized setDeviceInfoFromC(Ljava/lang/String;JI)V
    .locals 2

    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2, p4}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0, p1, p4}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized setDeviceInfoFromC(Ljava/lang/String;ZI)V
    .locals 2

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, p1, p3}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    .line 122
    const-string p1, "context is null. initialize failed!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    if-nez v0, :cond_2

    .line 128
    const-string v0, "Initialize begin"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    .line 132
    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 139
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    const-string p1, "failed to get Uid"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    const-string p1, "Initialize end"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public native SetNewBoolDeviceInfo(Ljava/lang/String;ZI)V
.end method

.method public native SetNewLongDeviceInfo(Ljava/lang/String;JI)V
.end method

.method public native SetNewStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public declared-synchronized addDeviceInfoObserver(Lcom/intlgame/core/device_info/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 5

    const-string v0, "asyn info already collcet complete, deviceInfoName : "

    const-string v1, "custom info already collcet complete, deviceInfoName : "

    const-string v2, "AddDeviceInfoObserver deviceInfoName : "

    monitor-enter p0

    const/4 v3, 0x6

    if-eqz p2, :cond_a

    .line 852
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 858
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    const-string v0, "now syn info already collect complete"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 863
    const-string v0, "All"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AllSyn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 867
    :cond_1
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 864
    invoke-interface {p1, p2}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    .line 870
    :cond_3
    const-string/jumbo v0, "syn info observer insert success"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 874
    :cond_4
    invoke-virtual {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 876
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 877
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_6

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 882
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 883
    invoke-interface {p1, v1}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_2

    .line 879
    :cond_6
    :goto_1
    const-string v0, "asyn info observer insert success"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 886
    :cond_7
    const-string v0, "asyn info observer insert success"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 891
    :cond_8
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getDeviceInfoStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 893
    const-string v0, "custom info observer insert success"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 896
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 897
    invoke-interface {p1, v0}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :goto_2
    monitor-exit p0

    return-void

    .line 853
    :cond_a
    :goto_3
    :try_start_1
    const-string p2, "deviceInfoName is empty"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 854
    invoke-interface {p1, v3}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized addSustainableDeviceInfoObserver(Lcom/intlgame/core/device_info/IDeviceInfoObserver;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "custom info already collcet complete, deviceInfoName : "

    const-string v1, "asyn info already collcet complete, deviceInfoName : "

    const-string v2, "AddDeviceInfoObserver deviceInfoName : "

    monitor-enter p0

    const/4 v3, 0x6

    if-eqz p2, :cond_b

    .line 903
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 909
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 912
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 913
    const-string p3, "now syn info already collect complete"

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 914
    const-string p3, "All"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "AllSyn"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 918
    :cond_1
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 915
    invoke-interface {p1, p2}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    .line 921
    :cond_3
    const-string/jumbo p3, "syn info observer insert success"

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 922
    iget-object p3, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {p3, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 924
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 928
    :cond_4
    invoke-virtual {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 930
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 931
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_a

    .line 939
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 940
    invoke-interface {p1, v0}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_2

    .line 933
    :cond_6
    :goto_1
    const-string p3, "asyn info observer insert success"

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 934
    iget-object p3, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {p3, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 936
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 943
    :cond_7
    const-string p3, "asyn info observer insert success"

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 944
    iget-object p3, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {p3, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 945
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 946
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 951
    :cond_8
    const-string v1, "custom info observer insert success"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v1, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 954
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p3, :cond_a

    .line 958
    invoke-direct {p0, p2}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getDeviceInfoStatus(Ljava/lang/String;)I

    move-result p3

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 960
    invoke-interface {p1, p3}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :cond_a
    :goto_2
    monitor-exit p0

    return-void

    .line 904
    :cond_b
    :goto_3
    :try_start_1
    const-string p2, "deviceInfoName is empty"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 905
    invoke-interface {p1, v3}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearDeviceInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "clearDeviceInfo : "

    monitor-enter p0

    .line 447
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/core/device_info/DeviceInfo;

    .line 450
    const-string v0, ""

    iput-object v0, p1, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    .line 451
    iput v1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-wide/16 v2, -0x1

    .line 454
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    .line 455
    iput v1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const/4 v0, 0x0

    .line 458
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    .line 459
    iput v1, p1, Lcom/intlgame/core/device_info/DeviceInfo;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public collectAllDeviceInfoFromSystem()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->collectAllDeviceInfoFromSystem(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intlgame/core/dns/NetworkStateReceiver;->SaveNetworkType(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intlgame/core/battery/BatteryStatusReceiver;->startBatteryListener(Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intlgame/core/mobile_signal/MobileSignal;->startMobileSignalListener(Landroid/content/Context;)V

    return-void
.end method

.method public collectAsynDeviceInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "asyn deviceInfoName is not support, deviceInfoName : "

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collectAsynDeviceInfo deviceInfoName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 406
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3b2433b2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android_adid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGoogleAdvertisingId(Landroid/content/Context;)V

    goto :goto_1

    .line 411
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 415
    const-string v0, "GetDeviceInfo Catch Exception"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized collectSynDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 11

    const-string v0, "get deviceInfo is null, deviceInfoName : "

    const-string v1, "Exception Track: "

    const-string v2, "collectSynDeviceInfo deviceInfoName : "

    monitor-enter p0

    .line 206
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 213
    const-string v0, "deviceInfoValueType get fail"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, p1, v4, v3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 217
    :cond_0
    :try_start_1
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    .line 218
    const-string v4, "deviceInfoValue type is String"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 219
    const-string v4, ""

    .line 220
    iget-object v5, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    goto :goto_0

    .line 222
    :cond_1
    const-class v5, Ljava/lang/Long;

    if-ne v2, v5, :cond_2

    .line 223
    const-string v4, "deviceInfoValue type is Long"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    .line 224
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 225
    iget-object v5, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    goto :goto_0

    .line 227
    :cond_2
    const-class v5, Ljava/lang/Boolean;

    if-ne v2, v5, :cond_c

    .line 228
    const-string v4, "deviceInfoValue type is Boolean"

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 229
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, -0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "gl_version"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x13

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "lang_type"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v7, "wifi_rssi"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x19

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "bytes_sent"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x22

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "screen_height"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "rom_total"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "rom_avail"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1c

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "apk_path"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x11

    goto/16 :goto_2

    :sswitch_8
    const-string v7, "os_version"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v7, "client_region"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x24

    goto/16 :goto_2

    :sswitch_a
    const-string v7, "cpu_temp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1f

    goto/16 :goto_2

    :sswitch_b
    const-string v7, "cpu_name"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto/16 :goto_2

    :sswitch_c
    const-string v7, "cpu_freq"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    goto/16 :goto_2

    :sswitch_d
    const-string v7, "cpu_core"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    goto/16 :goto_2

    :sswitch_e
    const-string v7, "cpu_arch"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xf

    goto/16 :goto_2

    :sswitch_f
    const-string v7, "pss"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1d

    goto/16 :goto_2

    :sswitch_10
    const-string v7, "bytes_received"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x23

    goto/16 :goto_2

    :sswitch_11
    const-string v7, "gpu_usage"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto/16 :goto_2

    :sswitch_12
    const-string v7, "gl_vendor"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x14

    goto/16 :goto_2

    :sswitch_13
    const-string v7, "gl_renderer"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x12

    goto/16 :goto_2

    :sswitch_14
    const-string v7, "device_model"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    goto/16 :goto_2

    :sswitch_15
    const-string v7, "device_brand"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_2

    :sswitch_16
    const-string v7, "signal_level"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1a

    goto/16 :goto_2

    :sswitch_17
    const-string v7, "root_info"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xd

    goto/16 :goto_2

    :sswitch_18
    const-string v7, "battery_power"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x15

    goto/16 :goto_2

    :sswitch_19
    const-string v7, "app_version"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto/16 :goto_2

    :sswitch_1a
    const-string v7, "gpu_temp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x21

    goto/16 :goto_2

    :sswitch_1b
    const-string v7, "gpu_name"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    goto/16 :goto_2

    :sswitch_1c
    const-string v7, "battery_status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x16

    goto :goto_2

    :sswitch_1d
    const-string v7, "screen_width"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    goto :goto_2

    :sswitch_1e
    const-string/jumbo v7, "wifi_num"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x18

    goto :goto_2

    :sswitch_1f
    const-string v7, "bundle_id"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_20
    const-string v7, "lang_type_info"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xe

    goto :goto_2

    :sswitch_21
    const-string v7, "cpu_usage"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1e

    goto :goto_2

    :sswitch_22
    const-string v7, "battery_temp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x17

    goto :goto_2

    :sswitch_23
    const-string v7, "ram_total"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_24
    const-string v7, "ram_avail"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1b

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, -0x1

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 354
    new-instance v7, Lcom/intlgame/core/device_info/DeviceInfo;

    goto/16 :goto_3

    .line 351
    :pswitch_0
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetDeviceRegion()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 348
    :pswitch_1
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mUid:I

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetTotalReceivedBytes(I)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 345
    :pswitch_2
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mUid:I

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetTotalSentBytes(I)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 342
    :pswitch_3
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGPUTemp()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 339
    :pswitch_4
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGPUUsage()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 336
    :pswitch_5
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUTemp()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 333
    :pswitch_6
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUUsage()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 330
    :pswitch_7
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetPSS(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 327
    :pswitch_8
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetAvailableSpace()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 324
    :pswitch_9
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetAvailableMemory(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 321
    :pswitch_a
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetSignalLevel()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 318
    :pswitch_b
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetWifiRssi(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 315
    :pswitch_c
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetWifiNum(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 312
    :pswitch_d
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetBatteryTemp(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 309
    :pswitch_e
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetBatteryState()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 306
    :pswitch_f
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetBatteryPower()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 303
    :pswitch_10
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGlVendor()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 300
    :pswitch_11
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGlVersion()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 297
    :pswitch_12
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGlRenderer()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 294
    :pswitch_13
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetApkPath(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 291
    :pswitch_14
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetGpuName()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 288
    :pswitch_15
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetDeviceCpuArch()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 285
    :pswitch_16
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetDeviceLanguageInfo()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 282
    :pswitch_17
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetRootDevice()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 279
    :pswitch_18
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetDeviceLanguage()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 276
    :pswitch_19
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetTotalSpace()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto/16 :goto_4

    .line 273
    :pswitch_1a
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetTotalMemory(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 270
    :pswitch_1b
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetSysVersion()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 267
    :pswitch_1c
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetScreenWidth(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 264
    :pswitch_1d
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetScreenHeight(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 261
    :pswitch_1e
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetModel()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 258
    :pswitch_1f
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUName()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 255
    :pswitch_20
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUMaxFreqKHz()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 252
    :pswitch_21
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetCPUCores()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 249
    :pswitch_22
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetBundleId(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 246
    :pswitch_23
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetBrand()Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 243
    :pswitch_24
    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->getInstance()Lcom/intlgame/core/device_info/DeviceInfoCollect;

    move-result-object v7

    iget-object v9, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/intlgame/core/device_info/DeviceInfoCollect;->GetAppVersion(Landroid/content/Context;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object v7

    goto :goto_4

    .line 354
    :goto_3
    invoke-direct {v7, p1, v4, v9}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    if-eqz v7, :cond_8

    .line 359
    iput-object p1, v7, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    .line 361
    const-class v0, Ljava/lang/String;

    if-ne v2, v0, :cond_5

    iget-object v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    if-eqz v0, :cond_4

    iget v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    if-ne v0, v10, :cond_5

    .line 364
    :cond_4
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoNeedEncrypt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iput v8, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    .line 370
    :cond_5
    iget v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    if-ne v0, v10, :cond_7

    .line 371
    iget-object v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 372
    iput-object v4, v7, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    .line 373
    iput v3, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    goto :goto_5

    .line 375
    :cond_6
    iput v6, v7, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

    goto :goto_5

    .line 378
    :cond_7
    iget-object v0, v7, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 379
    iput-object v4, v7, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    goto :goto_5

    .line 383
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 386
    :try_start_3
    const-string v2, "GetDeviceInfo Catch Exception"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 389
    new-instance v7, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v7, p1, v4, v3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    .line 392
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 393
    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-nez v7, :cond_b

    .line 396
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, p1, v4, v3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 398
    :cond_b
    monitor-exit p0

    return-object v7

    .line 233
    :cond_c
    :try_start_4
    const-string/jumbo v0, "unsupported deviceInfoValue type"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v0, p1, v4, v3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f82ee72 -> :sswitch_24
        -0x6e7a181d -> :sswitch_23
        -0x64c4f13a -> :sswitch_22
        -0x61097bb6 -> :sswitch_21
        -0x5a3f827e -> :sswitch_20
        -0x5830a608 -> :sswitch_1f
        -0x4fe308a4 -> :sswitch_1e
        -0x4f6eafcd -> :sswitch_1d
        -0x4834599c -> :sswitch_1c
        -0x4297d1c2 -> :sswitch_1b
        -0x42950879 -> :sswitch_1a
        -0x35c17346 -> :sswitch_19
        -0x340ce3ad -> :sswitch_18
        -0x33b22615 -> :sswitch_17
        -0x24c030d3 -> :sswitch_16
        -0x23d4cba2 -> :sswitch_15
        -0x233b1c00 -> :sswitch_14
        -0x2119e923 -> :sswitch_13
        -0x14e9c61e -> :sswitch_12
        -0xff7bfb2 -> :sswitch_11
        -0x425ccb -> :sswitch_10
        0x1b2d0 -> :sswitch_f
        0x1dddd08d -> :sswitch_e
        0x1ddeafd6 -> :sswitch_d
        0x1de016af -> :sswitch_c
        0x1de37ac2 -> :sswitch_b
        0x1de6440b -> :sswitch_a
        0x1f8c65e8 -> :sswitch_9
        0x281aad7d -> :sswitch_8
        0x3d119468 -> :sswitch_7
        0x3ecd85c0 -> :sswitch_6
        0x3fd65c15 -> :sswitch_5
        0x47c9bc5a -> :sswitch_4
        0x530152ec -> :sswitch_3
        0x5383bf41 -> :sswitch_2
        0x5952baeb -> :sswitch_1
        0x77f01b7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
.end method

.method public declared-synchronized getBoolDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "asyn deviceinfo is collecting, deviceInfoName : "

    const-string v1, "deviceInfo not found, deviceInfoName : "

    const-string v2, "getBoolDeviceInfo deviceInfoName : "

    monitor-enter p0

    .line 545
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoCollectEnable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 553
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 556
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 558
    const-string v0, "not start collect device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1, v5}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 562
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 565
    const-string/jumbo p1, "this deviceInfoName do not has collect method"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 566
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 570
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 571
    iget-boolean v4, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    if-nez v4, :cond_4

    .line 572
    const-string v0, "not start collect device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 573
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1, v5}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 577
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v4, :cond_6

    .line 579
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 581
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 583
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 584
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 588
    :cond_6
    monitor-exit p0

    return-object v4

    .line 548
    :cond_7
    :goto_0
    :try_start_6
    const-string v0, "deviceInfoName is empty"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public declared-synchronized getDeviceInfoBoolMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeviceInfoLongMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeviceInfoStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLongDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "asyn deviceinfo is collecting, deviceInfoName : "

    const-string v1, "deviceInfo not found, deviceInfoName : "

    const-string v2, "getLongDeviceInfo deviceInfoName : "

    monitor-enter p0

    .line 495
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x6

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_9

    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoCollectEnable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 503
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 506
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 508
    const-string v0, "not start collect device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1, v6}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 512
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3ecd85c0

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "rom_avail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 517
    :cond_4
    :goto_0
    :try_start_3
    const-string/jumbo p1, "this deviceInfoName do not has collect method"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 518
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 522
    :cond_5
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 523
    iget-boolean v5, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    if-nez v5, :cond_6

    .line 524
    const-string v0, "not start collect device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 525
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1, v6}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 529
    :cond_6
    :try_start_5
    iget-object v5, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v5, :cond_8

    .line 531
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 535
    :cond_7
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 536
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 540
    :cond_8
    monitor-exit p0

    return-object v5

    .line 498
    :cond_9
    :goto_1
    :try_start_7
    const-string v0, "deviceInfoName is empty"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public declared-synchronized getStringDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/intlgame/core/device_info/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceInfoName [ "

    const-string v1, "asyn deviceinfo is collecting, deviceInfoName : "

    const-string v2, "deviceInfo not found, deviceInfoName : "

    const-string v3, "not start collect device info, "

    const-string v4, "getStringDeviceInfo deviceInfoName : "

    monitor-enter p0

    .line 593
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 v4, 0x6

    if-eqz p1, :cond_9

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoCollectEnable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 601
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 604
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_5

    .line 605
    invoke-virtual {p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 607
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v1, v6}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 610
    :cond_2
    :try_start_2
    const-string v3, "All"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "AllSyn"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 615
    :cond_3
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] disable cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 619
    const-string/jumbo p1, "this deviceInfoName do not has collect method"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 620
    new-instance p1, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v0, ""

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 611
    :cond_4
    :goto_0
    :try_start_3
    const-string v0, "get all deviceInfo"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getAllDeviceInfo(Ljava/lang/String;)Lcom/intlgame/core/device_info/DeviceInfo;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 624
    :cond_5
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    iget-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mInitialized:Z

    if-nez v0, :cond_6

    .line 626
    const-string v0, "not start collect device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 627
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v1, v6}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 631
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/device_info/DeviceInfo;

    if-nez v0, :cond_8

    .line 633
    invoke-virtual {p0, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 635
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 637
    :cond_7
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v1, v4}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 641
    :cond_8
    monitor-exit p0

    return-object v0

    .line 596
    :cond_9
    :goto_1
    :try_start_7
    const-string v0, "deviceInfoName is empty"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 597
    new-instance v0, Lcom/intlgame/core/device_info/DeviceInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v1, v4}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public isAsynDeviceInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDeviceInfoCollectEnable(Ljava/lang/String;)Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDisableByDefaultDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isDeviceInfoNeedEncrypt(Ljava/lang/String;)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSynDeviceInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1032
    const-string v0, "AllSyn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "All"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSynInfoCollectComplete()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    return v0
.end method

.method public declared-synchronized notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "start NotifyAsynDeviceInfoCollectComplete deviceInfoName : "

    monitor-enter p0

    .line 975
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    if-eqz v0, :cond_1

    .line 978
    const-string v0, "notify asyn device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 980
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 981
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 982
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/device_info/IDeviceInfoObserver;

    .line 983
    invoke-interface {v1, p2}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    .line 984
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    invoke-virtual {p0, v1, p1}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->removeDeviceInfoObserver(Lcom/intlgame/core/device_info/IDeviceInfoObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_1
    const-string p1, "no deviceInfo observer to notify"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized notifySynDeviceInfoCollectComplete()V
    .locals 7

    monitor-enter p0

    .line 995
    :try_start_0
    const-string v0, "NotifySynDeviceInfoCollectComplete"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    if-eqz v0, :cond_7

    .line 998
    const-string v0, "notify syn device info"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v1}, Lcom/intlgame/core/device_info/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1002
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1003
    invoke-virtual {p0, v3}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1004
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intlgame/core/device_info/IDeviceInfoObserver;

    .line 1005
    const-string v6, "All"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "AllSyn"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 1008
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 1006
    invoke-interface {v5, v6}, Lcom/intlgame/core/device_info/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_1

    .line 1012
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1018
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1019
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v2, v1}, Lcom/intlgame/core/device_info/MultiValueMap;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1020
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intlgame/core/device_info/IDeviceInfoObserver;

    .line 1021
    iget-object v4, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1022
    iget-object v4, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v4, v1, v3}, Lcom/intlgame/core/device_info/MultiValueMap;->remove(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1027
    :cond_7
    const-string v0, "no deviceInfo observer to notify"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeDeviceInfoObserver(Lcom/intlgame/core/device_info/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "removed observer, deviceInfoName : "

    monitor-enter p0

    .line 966
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/intlgame/core/device_info/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/intlgame/core/device_info/MultiValueMap;->remove(Ljava/lang/String;Ljava/lang/Object;)V

    .line 968
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 969
    iget-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSustainableObserverList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDeviceInfo(Ljava/lang/String;J)I
    .locals 3

    if-eqz p1, :cond_1

    .line 713
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 720
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->SetNewLongDeviceInfo(Ljava/lang/String;JI)V

    .line 721
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    :try_start_1
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v2, p1, p2, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 723
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 727
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    .line 714
    :cond_1
    :goto_1
    const-string p1, "deviceInfoName is empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 733
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 740
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->SetNewStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 741
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 742
    :try_start_1
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v2, p1, p2, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 743
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 747
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    .line 734
    :cond_1
    :goto_1
    const-string p1, "deviceInfoName or deviceInfoValue is empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Z)I
    .locals 3

    if-eqz p1, :cond_1

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 760
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->SetNewBoolDeviceInfo(Ljava/lang/String;ZI)V

    .line 761
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    iget-object v1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p2, v0}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 763
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 767
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    .line 754
    :cond_1
    :goto_1
    const-string p1, "deviceInfoName is empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public declared-synchronized setDeviceInfoFromC(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    new-instance v1, Lcom/intlgame/core/device_info/DeviceInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/intlgame/core/device_info/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, p1, p3}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateDeviceInfoSwitches(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "updateDeviceInfoSwitches : "

    monitor-enter p0

    .line 422
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 425
    :try_start_1
    iget-object v0, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 428
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/intlgame/core/device_info/DeviceInfoHolder;->mDeviceInfoSwitchesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 441
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDeviceInfoSwitches catch exception, message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
