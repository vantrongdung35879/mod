.class public final enum Lcom/ihoc/mgpa/report/entity/BeaconEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/report/entity/BeaconEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_BACKGROUND_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_CALLBACK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_DEVICE_CHECK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_DEVICE_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_DOWNLOAD_CONFIG:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_HANDLE_EXCEPTION:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_HAPTIC_SETTING:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_HAPTIC_SUPPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_HARDWAREAPPLY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_INIT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_IN_GAME_PRE_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_MATCH_FPS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_MATCH_LATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_MATCH_NETLATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_NOTCH_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_PREDOWNLOAD_CHECK_TASK_STATUS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REGCALL:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_PREDOWNLOAD1:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_PREDOWNLOAD2:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_PREDOWNLOAD3:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_PREDOWNLOAD_COPY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_PREDOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_REPORT_UNIQUE_ID:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_SCENETIME:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_SETTINGS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_SOCKETINFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_SPA:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_STRATEGY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_THREAD_AFFINITY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

.field public static final enum VMP_WM_REPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/report/entity/BeaconEvent;
    .locals 3

    const/16 v0, 0x1e

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_INIT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DOWNLOAD_CONFIG:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REGCALL:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SOCKETINFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HANDLE_EXCEPTION:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_CALLBACK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SCENETIME:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HARDWAREAPPLY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DEVICE_CHECK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DEVICE_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SETTINGS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_WM_REPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SPA:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_STRATEGY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_FPS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_LATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_UNIQUE_ID:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD1:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD2:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD3:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_NOTCH_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_THREAD_AFFINITY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_NETLATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_BACKGROUND_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SUPPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SETTING:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_IN_GAME_PRE_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_COPY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_PREDOWNLOAD_CHECK_TASK_STATUS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x0

    const-string v2, "TGPA_INIT"

    const-string v3, "VMP_INIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_INIT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x1

    const-string v2, "TGPA_GETCONFIG"

    const-string v3, "VMP_DOWNLOAD_CONFIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DOWNLOAD_CONFIG:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x2

    const-string v2, "TGPA_REGCALL"

    const-string v3, "VMP_REGCALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REGCALL:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x3

    const-string v2, "TGPA_GAMEINFO"

    const-string v3, "VMP_SOCKETINFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SOCKETINFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x4

    const-string v2, "TGPA_EXCEPTION"

    const-string v3, "VMP_HANDLE_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HANDLE_EXCEPTION:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x5

    const-string v2, "TGPA_VENDORINFO"

    const-string v3, "VMP_CALLBACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_CALLBACK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 7
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x6

    const-string v2, "TGPA_SCENETIME"

    const-string v3, "VMP_SCENETIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SCENETIME:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 8
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x7

    const-string v2, "TGPA_HARDWAREAPPLY"

    const-string v3, "VMP_HARDWAREAPPLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HARDWAREAPPLY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x8

    const-string v2, "TGPA_DEVICECHECK"

    const-string v3, "VMP_DEVICE_CHECK"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DEVICE_CHECK:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 10
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x9

    const-string v2, "TGPA_DEVICEINFO"

    const-string v3, "VMP_DEVICE_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_DEVICE_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xa

    const-string v2, "TGPA_GAMESETTING"

    const-string v3, "VMP_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SETTINGS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 12
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xb

    const-string v2, "TGPA_WM_REPORT"

    const-string v3, "VMP_WM_REPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_WM_REPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 14
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xc

    const-string v2, "TGPA_SPA"

    const-string v3, "VMP_SPA"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_SPA:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 15
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xd

    const-string v2, "TGPA_STRATEGYINFO"

    const-string v3, "VMP_STRATEGY_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_STRATEGY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 16
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xe

    const-string v2, "TGPA_MATCHFPS"

    const-string v3, "VMP_MATCH_FPS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_FPS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 17
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0xf

    const-string v2, "TGPA_MATCHLATENCY"

    const-string v3, "VMP_MATCH_LATENCY"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_LATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 18
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x10

    const-string v2, "TGPA_UNIQUEID"

    const-string v3, "VMP_REPORT_UNIQUE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_UNIQUE_ID:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 19
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x11

    const-string v2, "TGPA_PREDOWNLOAD1"

    const-string v3, "VMP_REPORT_PREDOWNLOAD1"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD1:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 20
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x12

    const-string v2, "TGPA_PREDOWNLOAD2"

    const-string v3, "VMP_REPORT_PREDOWNLOAD2"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD2:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 21
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x13

    const-string v2, "TGPA_PREDOWNLOAD3"

    const-string v3, "VMP_REPORT_PREDOWNLOAD3"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD3:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 22
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x14

    const-string v2, "TGPA_NOTCH"

    const-string v3, "VMP_NOTCH_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_NOTCH_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 23
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x15

    const-string v2, "TGPA_THREAD_AFFINITY"

    const-string v3, "VMP_THREAD_AFFINITY_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_THREAD_AFFINITY_INFO:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 24
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x16

    const-string v2, "TGPA_MATCH_NETLATENCY"

    const-string v3, "VMP_MATCH_NETLATENCY"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_MATCH_NETLATENCY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 25
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x17

    const-string v2, "TGPA_BACKGROUND_DOWNLOAD"

    const-string v3, "VMP_BACKGROUND_DOWNLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_BACKGROUND_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 26
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x18

    const-string v2, "TGPA_HAPTIC_SUPPORT"

    const-string v3, "VMP_HAPTIC_SUPPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SUPPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 27
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x19

    const-string v2, "TGPA_HAPTIC_SETTING"

    const-string v3, "VMP_HAPTIC_SETTING"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_HAPTIC_SETTING:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 28
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x1a

    const-string v2, "TGPA_IN_GAME_PREDOWNLOAD"

    const-string v3, "VMP_IN_GAME_PRE_DOWNLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_IN_GAME_PRE_DOWNLOAD:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 29
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const-string v1, "VMP_REPORT_PREDOWNLOAD_COPY"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_COPY:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 30
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x1c

    const-string v2, "TGPA_PREDOWNLOAD_SWITCH"

    const-string v3, "VMP_REPORT_PREDOWNLOAD_SERVICE_SWITCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_REPORT_PREDOWNLOAD_SERVICE_SWITCH:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 31
    new-instance v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/16 v1, 0x1d

    const-string v2, "TGPA_PREDOWNLOAD_CHECK_CHANNEL_PD_TASK_STATUS"

    const-string v3, "VMP_PREDOWNLOAD_CHECK_TASK_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_PREDOWNLOAD_CHECK_TASK_STATUS:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    .line 32
    invoke-static {}, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->$values()[Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->$VALUES:[Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/report/entity/BeaconEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/report/entity/BeaconEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->$VALUES:[Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/report/entity/BeaconEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->value:Ljava/lang/String;

    return-object v0
.end method
