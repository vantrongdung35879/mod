.class public final enum Lcom/ihoc/mgpa/toolkit/constant/VendorKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/toolkit/constant/VendorKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum APP_CALLBACK:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum CPU_LOCK_NUM:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum CPU_LOCK_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum DEVICE_TEMP:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum DUAL_WIFI_ENABLE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum DUAL_WIFI_RELEASE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum FPS_COUNT_TIME:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum FREQUENCY_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static FREQUENCY_SIGNAL_HIGH_TEMP:I

.field public static FREQUENCY_SIGNAL_LOW_POWER:I

.field public static final enum GET_QOE_INFO:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum SCENE_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum SPA_PERF_CONFIG:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum SPA_PERF_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum STA_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum STRATEGY_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

.field public static final enum UNIQUE_ID:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;


# instance fields
.field private key:I


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;
    .locals 3

    const/16 v0, 0x14

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DEVICE_TEMP:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FPS_COUNT_TIME:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SCENE_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CPU_LOCK_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CPU_LOCK_NUM:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SPA_PERF_CONFIG:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SPA_PERF_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->UNIQUE_ID:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->APP_CALLBACK:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DUAL_WIFI_ENABLE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DUAL_WIFI_RELEASE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->GET_QOE_INFO:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->STA_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "FREQUENCY_SIGNAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "DEVICE_TEMP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DEVICE_TEMP:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "FPS_COUNT_TIME"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FPS_COUNT_TIME:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "FREQUENCY_LEVEL"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "STRATEGY_SUPPORT"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v5, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "SCENE_SUPPORT"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SCENE_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 7
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "CPU_LOCK_STATUS"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v5, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CPU_LOCK_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 8
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "CPU_LOCK_NUM"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CPU_LOCK_NUM:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "SPA_PERF_CONFIG"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v5, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SPA_PERF_CONFIG:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 10
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "SPA_PERF_LEVEL"

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SPA_PERF_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "UNIQUE_ID"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v5, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->UNIQUE_ID:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 12
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "APP_CALLBACK"

    const/16 v5, 0xc

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->APP_CALLBACK:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 13
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "TEMPERATURE_LEVEL"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v5, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 16
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const-string v1, "SUPPORT_DUAL_WIFI"

    const/16 v5, 0x64

    invoke-direct {v0, v1, v4, v5}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->SUPPORT_DUAL_WIFI:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 17
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0xe

    const/16 v4, 0x65

    const-string v5, "DUAL_WIFI_ENABLE"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DUAL_WIFI_ENABLE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 18
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0xf

    const/16 v4, 0x66

    const-string v5, "DUAL_WIFI_RELEASE"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->DUAL_WIFI_RELEASE:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 19
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0x10

    const/16 v4, 0x67

    const-string v5, "GET_QOE_INFO"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->GET_QOE_INFO:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 20
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0x11

    const/16 v4, 0x68

    const-string v5, "STA_STATUS"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->STA_STATUS:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 21
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0x12

    const/16 v4, 0x69

    const-string v5, "AVAILABLE_BSS_LIST"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 22
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    const/16 v1, 0x13

    const/16 v4, 0x6a

    const-string v5, "CTRL_PRE_DOWNLOAD_SERVICE_SWITCH"

    invoke-direct {v0, v5, v1, v4}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->CTRL_PRE_DOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 23
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->$values()[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    .line 62
    sput v3, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_SIGNAL_LOW_POWER:I

    .line 63
    sput v2, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->FREQUENCY_SIGNAL_HIGH_TEMP:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/constant/VendorKey;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/toolkit/constant/VendorKey;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/toolkit/constant/VendorKey;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
