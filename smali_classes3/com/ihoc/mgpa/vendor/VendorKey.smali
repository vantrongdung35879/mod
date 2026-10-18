.class public final enum Lcom/ihoc/mgpa/vendor/VendorKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/VendorKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum APP_CALLBACK:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum CPU_LOCK_NUM:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum CPU_LOCK_STATUS:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum DEVICE_TEMP:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum DUAL_WIFI_ENABLE:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum DUAL_WIFI_RELEASE:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final EVENT_AVAILABLE_BSS_LIST:Ljava/lang/String; = "bss_list"

.field public static final EVENT_DUAL_WIFI_STATUS:Ljava/lang/String; = "dual_wifi_status"

.field public static final EVENT_GET_QOE_INFO:Ljava/lang/String; = "qoe_info"

.field public static final EVENT_QOE_STATUS:Ljava/lang/String; = "qoe_status"

.field public static final EVENT_ROAM_STATUS:Ljava/lang/String; = "roam_status"

.field public static final EVENT_STA_STATUS:Ljava/lang/String; = "sta_status"

.field public static final EVENT_TYPE_DISPLAY:Ljava/lang/String; = "display"

.field public static final EVENT_TYPE_INPUT:Ljava/lang/String; = "input"

.field public static final EVENT_TYPE_LOW_BATTERY:Ljava/lang/String; = "low_battery"

.field public static final EVENT_TYPE_THERMAL:Ljava/lang/String; = "thermal"

.field public static final enum FPS_COUNT_TIME:Lcom/ihoc/mgpa/vendor/VendorKey;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FREQUENCY_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum GET_QOE_INFO:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final HUAWEI_THERMAL_LEVEL_STR:Ljava/lang/String; = "TempCurLevel"

.field public static final enum INIT_ACTION:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final OPPO_CPU_LEVEL_STR:Ljava/lang/String; = "cpuLevel"

.field public static final SAMSUNG_SPA_PERF_CONFIG_STR:Ljava/lang/String; = "rpic_set"

.field public static final enum SCENE_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum SPA_PERF_CONFIG:Lcom/ihoc/mgpa/vendor/VendorKey;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SPA_PERF_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STA_STATUS:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final STRATEGY_IS_SUPPORT_STR:Ljava/lang/String; = "IsSupport"

.field public static final enum STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final STRATEGY_SUPPORT_FUNC_STR:Ljava/lang/String; = "SupportFunc"

.field public static final STRATEGY_SUPPORT_SCENE:Ljava/lang/String; = "SupportScene"

.field public static final STRATEGY_VERSION_STR:Ljava/lang/String; = "Version"

.field public static final enum SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum UNIQUE_ID:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum VivoFrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

.field public static final enum VivoSuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;


# instance fields
.field private final key:I

.field private final status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    new-instance v0, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v1, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v2, "FREQUENCY_SIGNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v2, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v5, "DEVICE_TEMP"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6, v3}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/ihoc/mgpa/vendor/VendorKey;->DEVICE_TEMP:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v5, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v7, "FPS_COUNT_TIME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v3}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/ihoc/mgpa/vendor/VendorKey;->FPS_COUNT_TIME:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v9, "FREQUENCY_LEVEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v9, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v11, "STRATEGY_SUPPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v3}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v11, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v13, "SCENE_SUPPORT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v3}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/ihoc/mgpa/vendor/VendorKey;->SCENE_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v13, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v15, "CPU_LOCK_STATUS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/ihoc/mgpa/vendor/VendorKey;->CPU_LOCK_STATUS:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v15, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v14, "CPU_LOCK_NUM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/ihoc/mgpa/vendor/VendorKey;->CPU_LOCK_NUM:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v14, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v12, "SPA_PERF_CONFIG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/ihoc/mgpa/vendor/VendorKey;->SPA_PERF_CONFIG:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v12, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v10, "SPA_PERF_LEVEL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/ihoc/mgpa/vendor/VendorKey;->SPA_PERF_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v10, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v8, "UNIQUE_ID"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/ihoc/mgpa/vendor/VendorKey;->UNIQUE_ID:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v6, "APP_CALLBACK"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v3, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorKey;->APP_CALLBACK:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v6, Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v3, "TEMPERATURE_LEVEL"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8, v8, v4}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x64

    const-string v4, "SUPPORT_DUAL_WIFI"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    move-object/from16 v18, v10

    const/4 v10, 0x0

    invoke-direct {v3, v4, v6, v8, v10}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x65

    const-string v6, "DUAL_WIFI_ENABLE"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-direct {v4, v6, v3, v8, v10}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->DUAL_WIFI_ENABLE:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v6, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x66

    const-string v3, "DUAL_WIFI_RELEASE"

    move-object/from16 v20, v4

    const/16 v4, 0x10

    invoke-direct {v6, v3, v4, v8, v10}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/VendorKey;->DUAL_WIFI_RELEASE:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x67

    const-string v10, "GET_QOE_INFO"

    const/16 v4, 0x11

    move-object/from16 v21, v6

    const/4 v6, 0x1

    invoke-direct {v3, v10, v4, v8, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->GET_QOE_INFO:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v10, 0x68

    const-string v4, "STA_STATUS"

    move-object/from16 v22, v3

    const/16 v3, 0x12

    invoke-direct {v8, v4, v3, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorKey;->STA_STATUS:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v10, 0x69

    const-string v3, "AVAILABLE_BSS_LIST"

    move-object/from16 v23, v8

    const/16 v8, 0x13

    invoke-direct {v4, v3, v8, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v10, 0x6a

    const-string v8, "CTRL_PRE_DOWNLOAD_SERVICE_SWITCH"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v3, v8, v4, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v10, 0x6b

    const-string v4, "FrameInterpolation"

    move-object/from16 v25, v3

    const/16 v3, 0x15

    invoke-direct {v8, v4, v3, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v10, 0x16

    const/16 v3, 0x6c

    move-object/from16 v26, v8

    const-string v8, "SuperResolution"

    invoke-direct {v4, v8, v10, v3, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x17

    const/16 v10, 0xc8

    move-object/from16 v27, v4

    const-string v4, "VivoSuperResolution"

    invoke-direct {v3, v4, v8, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->VivoSuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x18

    const/16 v10, 0xc9

    move-object/from16 v28, v3

    const-string v3, "VivoFrameInterpolation"

    invoke-direct {v4, v3, v8, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->VivoFrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v8, 0x19

    const/16 v10, 0x270f

    move-object/from16 v29, v4

    const-string v4, "INIT_ACTION"

    invoke-direct {v3, v4, v8, v10, v6}, Lcom/ihoc/mgpa/vendor/VendorKey;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->INIT_ACTION:Lcom/ihoc/mgpa/vendor/VendorKey;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/ihoc/mgpa/vendor/VendorKey;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    aput-object v1, v4, v6

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v18, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v3, v4, v0

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorKey;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ihoc/mgpa/vendor/VendorKey;->key:I

    iput p4, p0, Lcom/ihoc/mgpa/vendor/VendorKey;->status:I

    return-void
.end method

.method public static getVendorKey(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;
    .locals 5

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorKey;->values()[Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->VivoSuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    return-object p0

    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->VivoFrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    return-object p0

    :cond_3
    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorKey;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/VendorKey;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/VendorKey;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/VendorKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/VendorKey;

    return-object v0
.end method


# virtual methods
.method public block()Z
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorKey;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorKey;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorKey;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
