.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final ANDROIDID_FIELD_NUMBER:I = 0x16

.field public static final APN_FIELD_NUMBER:I = 0x10

.field public static final BUNDLEID_FIELD_NUMBER:I = 0x3

.field public static final CACHEDUUID_FIELD_NUMBER:I = 0x1a

.field public static final CHANNEL_FIELD_NUMBER:I = 0x5

.field public static final CMD_FIELD_NUMBER:I = 0x7

.field public static final CPU_FIELD_NUMBER:I = 0x26

.field public static final CURRENTVERSIONUUID_FIELD_NUMBER:I = 0x1b

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

.field public static final DEVICEID_FIELD_NUMBER:I = 0xf

.field public static final DISPLAYCARD_FIELD_NUMBER:I = 0x21

.field public static final DISPLAYMEM_FIELD_NUMBER:I = 0x20

.field public static final DISPLAYVERSION_FIELD_NUMBER:I = 0x23

.field public static final GPU_FIELD_NUMBER:I = 0x24

.field public static final HEADERS_FIELD_NUMBER:I = 0x1c

.field public static final IDFV_FIELD_NUMBER:I = 0x18

.field public static final IMEI_FIELD_NUMBER:I = 0x12

.field public static final IMSI_FIELD_NUMBER:I = 0x14

.field public static final MAC_FIELD_NUMBER:I = 0x15

.field public static final MODEL_FIELD_NUMBER:I = 0x9

.field public static final NETWORKTYPE_FIELD_NUMBER:I = 0x17

.field public static final OSBIT_FIELD_NUMBER:I = 0x25

.field public static final OSVER_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHYMEMALL_FIELD_NUMBER:I = 0x1d

.field public static final PHYMEMUSED_FIELD_NUMBER:I = 0x1e

.field public static final PLATFORMID_FIELD_NUMBER:I = 0x1

.field public static final PRODID_FIELD_NUMBER:I = 0x2

.field public static final QIMEI_FIELD_NUMBER:I = 0x13

.field public static final RESERVED_FIELD_NUMBER:I = 0xb

.field public static final RESOLUTION_FIELD_NUMBER:I = 0x22

.field public static final SBUFFER_FIELD_NUMBER:I = 0x8

.field public static final SDKID_FIELD_NUMBER:I = 0xe

.field public static final SDKVER_FIELD_NUMBER:I = 0x6

.field public static final SERVERENV_FIELD_NUMBER:I = 0x27

.field public static final SESSIONID_FIELD_NUMBER:I = 0xc

.field public static final STRATEGYLASTUPDATETIME_FIELD_NUMBER:I = 0xd

.field public static final TIMEZONEABBREVIATION_FIELD_NUMBER:I = 0x28

.field public static final TIMEZONENAME_FIELD_NUMBER:I = 0x29

.field public static final TIMEZONESECONDS_FIELD_NUMBER:I = 0x2a

.field public static final UPLOADTIME_FIELD_NUMBER:I = 0x11

.field public static final USEDPROCMEM_FIELD_NUMBER:I = 0x1f

.field public static final USERSETDEVICEID_FIELD_NUMBER:I = 0x19

.field public static final VERSION_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile androidId_:Ljava/lang/Object;

.field private volatile apn_:Ljava/lang/Object;

.field private volatile bundleId_:Ljava/lang/Object;

.field private volatile cachedUuid_:Ljava/lang/Object;

.field private volatile channel_:Ljava/lang/Object;

.field private cmd_:I

.field private volatile cpu_:Ljava/lang/Object;

.field private volatile currentVersionUuid_:Ljava/lang/Object;

.field private volatile deviceId_:Ljava/lang/Object;

.field private volatile displayCard_:Ljava/lang/Object;

.field private volatile displayMem_:Ljava/lang/Object;

.field private volatile displayVersion_:Ljava/lang/Object;

.field private volatile gpu_:Ljava/lang/Object;

.field private headers_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile idfv_:Ljava/lang/Object;

.field private volatile imei_:Ljava/lang/Object;

.field private volatile imsi_:Ljava/lang/Object;

.field private volatile mac_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile networkType_:Ljava/lang/Object;

.field private osBit_:I

.field private volatile osVer_:Ljava/lang/Object;

.field private phyMemAll_:I

.field private phyMemUsed_:I

.field private platformId_:I

.field private volatile prodId_:Ljava/lang/Object;

.field private volatile qimei_:Ljava/lang/Object;

.field private reserved_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile resolution_:Ljava/lang/Object;

.field private sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private volatile sdkId_:Ljava/lang/Object;

.field private volatile sdkVer_:Ljava/lang/Object;

.field private volatile serverEnv_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;

.field private strategylastUpdateTime_:J

.field private volatile timeZoneAbbreviation_:Ljava/lang/Object;

.field private volatile timeZoneName_:Ljava/lang/Object;

.field private timeZoneSeconds_:I

.field private uploadTime_:J

.field private usedProcMem_:I

.field private volatile userSetDeviceId_:Ljava/lang/Object;

.field private volatile version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8185
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 8193
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2574
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4277
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedIsInitialized:B

    .line 2575
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    .line 2576
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    .line 2577
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    .line 2578
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    .line 2579
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    .line 2580
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 2581
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    .line 2582
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    .line 2583
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    .line 2584
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    .line 2585
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    .line 2586
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    .line 2587
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    .line 2588
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    .line 2589
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    .line 2590
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    .line 2591
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    .line 2592
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    .line 2593
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    .line 2594
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    .line 2595
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    .line 2596
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    .line 2597
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    .line 2598
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    .line 2599
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    .line 2600
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    .line 2601
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    .line 2602
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    .line 2603
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    .line 2604
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 2605
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2624
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>()V

    .line 2626
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2630
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 2634
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 2896
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 2892
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneSeconds_:I

    goto :goto_0

    .line 2885
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2887
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    goto :goto_0

    .line 2879
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2881
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    goto :goto_0

    .line 2873
    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2875
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    goto :goto_0

    .line 2867
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2869
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    goto :goto_0

    .line 2863
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osBit_:I

    goto :goto_0

    .line 2856
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2858
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    goto :goto_0

    .line 2850
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2852
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 2844
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2846
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    goto :goto_0

    .line 2838
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2840
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    goto :goto_0

    .line 2832
    :sswitch_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2834
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    goto :goto_0

    .line 2828
    :sswitch_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->usedProcMem_:I

    goto :goto_0

    .line 2823
    :sswitch_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemUsed_:I

    goto :goto_0

    .line 2818
    :sswitch_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemAll_:I

    goto :goto_0

    :sswitch_e
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 2805
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v2, v2, 0x2

    .line 2810
    :cond_1
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 2811
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 2810
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 2812
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 2813
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 2812
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2798
    :sswitch_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2800
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2792
    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2794
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2786
    :sswitch_11
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2788
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2780
    :sswitch_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2782
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2774
    :sswitch_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2776
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2768
    :sswitch_14
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2770
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2762
    :sswitch_15
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2764
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2756
    :sswitch_16
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2758
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2750
    :sswitch_17
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2752
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2744
    :sswitch_18
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2746
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2740
    :sswitch_19
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->uploadTime_:J

    goto/16 :goto_0

    .line 2733
    :sswitch_1a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2735
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2727
    :sswitch_1b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2729
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2721
    :sswitch_1c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2723
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2717
    :sswitch_1d
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->strategylastUpdateTime_:J

    goto/16 :goto_0

    .line 2710
    :sswitch_1e
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2712
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_1f
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    .line 2698
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v2, v2, 0x1

    .line 2703
    :cond_2
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 2704
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 2703
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 2705
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 2706
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 2705
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2691
    :sswitch_20
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2693
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2685
    :sswitch_21
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2687
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2681
    :sswitch_22
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    goto/16 :goto_0

    .line 2676
    :sswitch_23
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cmd_:I

    goto/16 :goto_0

    .line 2669
    :sswitch_24
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2671
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2663
    :sswitch_25
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2665
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2657
    :sswitch_26
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2659
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2651
    :sswitch_27
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2653
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2645
    :sswitch_28
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 2647
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2641
    :sswitch_29
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->platformId_:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_2a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2907
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2908
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2905
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2910
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 2911
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->makeExtensionsImmutable()V

    .line 2912
    throw p1

    .line 2910
    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 2911
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2a
        0x8 -> :sswitch_29
        0x12 -> :sswitch_28
        0x1a -> :sswitch_27
        0x22 -> :sswitch_26
        0x2a -> :sswitch_25
        0x32 -> :sswitch_24
        0x38 -> :sswitch_23
        0x42 -> :sswitch_22
        0x4a -> :sswitch_21
        0x52 -> :sswitch_20
        0x5a -> :sswitch_1f
        0x62 -> :sswitch_1e
        0x68 -> :sswitch_1d
        0x72 -> :sswitch_1c
        0x7a -> :sswitch_1b
        0x82 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x92 -> :sswitch_18
        0x9a -> :sswitch_17
        0xa2 -> :sswitch_16
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_14
        0xba -> :sswitch_13
        0xc2 -> :sswitch_12
        0xca -> :sswitch_11
        0xd2 -> :sswitch_10
        0xda -> :sswitch_f
        0xe2 -> :sswitch_e
        0xe8 -> :sswitch_d
        0xf0 -> :sswitch_c
        0xf8 -> :sswitch_b
        0x102 -> :sswitch_a
        0x10a -> :sswitch_9
        0x112 -> :sswitch_8
        0x11a -> :sswitch_7
        0x122 -> :sswitch_6
        0x128 -> :sswitch_5
        0x132 -> :sswitch_4
        0x13a -> :sswitch_3
        0x142 -> :sswitch_2
        0x14a -> :sswitch_1
        0x150 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2565
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 2572
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4277
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 2565
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 2565
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->platformId_:I

    return p1
.end method

.method static synthetic access$4200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cmd_:I

    return p1
.end method

.method static synthetic access$4802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;J)J
    .locals 0

    .line 2565
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->strategylastUpdateTime_:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;J)J
    .locals 0

    .line 2565
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->uploadTime_:J

    return-wide p1
.end method

.method static synthetic access$5800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$6802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemAll_:I

    return p1
.end method

.method static synthetic access$7002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemUsed_:I

    return p1
.end method

.method static synthetic access$7102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->usedProcMem_:I

    return p1
.end method

.method static synthetic access$7200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osBit_:I

    return p1
.end method

.method static synthetic access$7800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I
    .locals 0

    .line 2565
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneSeconds_:I

    return p1
.end method

.method static synthetic access$8300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 2565
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$8600()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 2565
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2565
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1

    .line 8189
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2916
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$3300()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3843
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 3844
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3243
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 3244
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 4860
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 4863
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4833
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4834
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4840
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4841
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4801
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4807
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4846
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4847
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4853
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4854
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4821
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4822
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4828
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 4829
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4790
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4796
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4811
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4817
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            ">;"
        }
    .end annotation

    .line 8204
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 3859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3860
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsReserved(Ljava/lang/String;)Z
    .locals 1

    .line 3259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3260
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4592
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-nez v1, :cond_1

    .line 4593
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4595
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 4597
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPlatformId()I

    move-result v1

    .line 4598
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPlatformId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 4599
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdId()Ljava/lang/String;

    move-result-object v1

    .line 4600
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 4601
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleId()Ljava/lang/String;

    move-result-object v1

    .line 4602
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 4603
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 4604
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 4605
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 4606
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 4607
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVer()Ljava/lang/String;

    move-result-object v1

    .line 4608
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 4609
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v1

    .line 4610
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 4611
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    .line 4612
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 4613
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 4614
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 4615
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVer()Ljava/lang/String;

    move-result-object v1

    .line 4616
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 4617
    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 4618
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    .line 4617
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 4619
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 4620
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 4621
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getStrategylastUpdateTime()J

    move-result-wide v1

    .line 4622
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getStrategylastUpdateTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_e

    return v3

    .line 4623
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkId()Ljava/lang/String;

    move-result-object v1

    .line 4624
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 4625
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 4626
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 4627
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApn()Ljava/lang/String;

    move-result-object v1

    .line 4628
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 4629
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUploadTime()J

    move-result-wide v1

    .line 4630
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUploadTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_12

    return v3

    .line 4631
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 4632
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 4633
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    .line 4634
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 4635
    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 4636
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 4637
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 4638
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 4639
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    .line 4640
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 4641
    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 4642
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 4643
    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfv()Ljava/lang/String;

    move-result-object v1

    .line 4644
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 4645
    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 4646
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 4647
    :cond_1a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuid()Ljava/lang/String;

    move-result-object v1

    .line 4648
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 4649
    :cond_1b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuid()Ljava/lang/String;

    move-result-object v1

    .line 4650
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 4651
    :cond_1c
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 4652
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    .line 4651
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 4653
    :cond_1d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemAll()I

    move-result v1

    .line 4654
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemAll()I

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    .line 4655
    :cond_1e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemUsed()I

    move-result v1

    .line 4656
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemUsed()I

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 4657
    :cond_1f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUsedProcMem()I

    move-result v1

    .line 4658
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUsedProcMem()I

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 4659
    :cond_20
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMem()Ljava/lang/String;

    move-result-object v1

    .line 4660
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 4661
    :cond_21
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCard()Ljava/lang/String;

    move-result-object v1

    .line 4662
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v3

    .line 4663
    :cond_22
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolution()Ljava/lang/String;

    move-result-object v1

    .line 4664
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 4665
    :cond_23
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersion()Ljava/lang/String;

    move-result-object v1

    .line 4666
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    .line 4667
    :cond_24
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpu()Ljava/lang/String;

    move-result-object v1

    .line 4668
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 4669
    :cond_25
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsBit()I

    move-result v1

    .line 4670
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsBit()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 4671
    :cond_26
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpu()Ljava/lang/String;

    move-result-object v1

    .line 4672
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    .line 4673
    :cond_27
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnv()Ljava/lang/String;

    move-result-object v1

    .line 4674
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 4675
    :cond_28
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviation()Ljava/lang/String;

    move-result-object v1

    .line 4676
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 4677
    :cond_29
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneName()Ljava/lang/String;

    move-result-object v1

    .line 4678
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 4679
    :cond_2a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneSeconds()I

    move-result v1

    .line 4680
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneSeconds()I

    move-result v2

    if-eq v1, v2, :cond_2b

    return v3

    .line 4681
    :cond_2b
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v3

    :cond_2c
    return v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 2

    .line 3618
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    .line 3619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3620
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3622
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3624
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3625
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAndroidIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3635
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    .line 3636
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3637
    check-cast v0, Ljava/lang/String;

    .line 3638
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3640
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    return-object v0

    .line 3643
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getApn()Ljava/lang/String;
    .locals 2

    .line 3428
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    .line 3429
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3430
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3432
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3434
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3435
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getApnBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3445
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    .line 3446
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3447
    check-cast v0, Ljava/lang/String;

    .line 3448
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3450
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    return-object v0

    .line 3453
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getBundleId()Ljava/lang/String;
    .locals 2

    .line 2994
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    .line 2995
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2996
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2998
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3000
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3001
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBundleIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3011
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    .line 3012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3013
    check-cast v0, Ljava/lang/String;

    .line 3014
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3016
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    return-object v0

    .line 3019
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCachedUuid()Ljava/lang/String;
    .locals 2

    .line 3762
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    .line 3763
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3764
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3766
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3768
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3769
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCachedUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3779
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    .line 3780
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3781
    check-cast v0, Ljava/lang/String;

    .line 3782
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3784
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    return-object v0

    .line 3787
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 2

    .line 3066
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    .line 3067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3068
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3070
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3072
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3073
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getChannelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3083
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    .line 3084
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3085
    check-cast v0, Ljava/lang/String;

    .line 3086
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3088
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    return-object v0

    .line 3091
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCmd()I
    .locals 1

    .line 3138
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cmd_:I

    return v0
.end method

.method public final getCpu()Ljava/lang/String;
    .locals 2

    .line 4130
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    .line 4131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4132
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4134
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4136
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4137
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4147
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    .line 4148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4149
    check-cast v0, Ljava/lang/String;

    .line 4150
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4152
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    return-object v0

    .line 4155
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCurrentVersionUuid()Ljava/lang/String;
    .locals 2

    .line 3798
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    .line 3799
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3800
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3802
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3804
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3805
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurrentVersionUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3815
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    .line 3816
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3817
    check-cast v0, Ljava/lang/String;

    .line 3818
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3820
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    return-object v0

    .line 3823
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1

    .line 8214
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 3392
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    .line 3393
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3394
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3396
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3398
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3399
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3409
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    .line 3410
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3411
    check-cast v0, Ljava/lang/String;

    .line 3412
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3414
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 3417
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayCard()Ljava/lang/String;
    .locals 2

    .line 3976
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    .line 3977
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3978
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3980
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3982
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3983
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDisplayCardBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3993
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    .line 3994
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3995
    check-cast v0, Ljava/lang/String;

    .line 3996
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3998
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    return-object v0

    .line 4001
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayMem()Ljava/lang/String;
    .locals 2

    .line 3940
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    .line 3941
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3942
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3944
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3946
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3947
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDisplayMemBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3957
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    .line 3958
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3959
    check-cast v0, Ljava/lang/String;

    .line 3960
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3962
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    return-object v0

    .line 3965
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayVersion()Ljava/lang/String;
    .locals 2

    .line 4048
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    .line 4049
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4050
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4052
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4054
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4055
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDisplayVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4065
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    .line 4066
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4067
    check-cast v0, Ljava/lang/String;

    .line 4068
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4070
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    return-object v0

    .line 4073
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getGpu()Ljava/lang/String;
    .locals 2

    .line 4084
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    .line 4085
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4086
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4088
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4090
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4091
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4101
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    .line 4102
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4103
    check-cast v0, Ljava/lang/String;

    .line 4104
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4106
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    return-object v0

    .line 4109
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3867
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersCount()I
    .locals 1

    .line 3851
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3874
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3885
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 3886
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3896
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 3897
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3900
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3898
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getIdfv()Ljava/lang/String;
    .locals 2

    .line 3690
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    .line 3691
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3692
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3694
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3696
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3697
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdfvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3707
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    .line 3708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3709
    check-cast v0, Ljava/lang/String;

    .line 3710
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3712
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 3715
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    .line 3475
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3476
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3478
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3480
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3481
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getImeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3491
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    .line 3492
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3493
    check-cast v0, Ljava/lang/String;

    .line 3494
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3496
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    return-object v0

    .line 3499
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 2

    .line 3546
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    .line 3547
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3548
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3550
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3552
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3553
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getImsiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3563
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    .line 3564
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3565
    check-cast v0, Ljava/lang/String;

    .line 3566
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3568
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    return-object v0

    .line 3571
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getMac()Ljava/lang/String;
    .locals 2

    .line 3582
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    .line 3583
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3584
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3586
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3588
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3589
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMacBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3599
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    .line 3600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3601
    check-cast v0, Ljava/lang/String;

    .line 3602
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3604
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    return-object v0

    .line 3607
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 3162
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    .line 3163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3164
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3166
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3168
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3169
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3179
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    .line 3180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3181
    check-cast v0, Ljava/lang/String;

    .line 3182
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3184
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    return-object v0

    .line 3187
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 2

    .line 3654
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    .line 3655
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3656
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3658
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3660
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3661
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3671
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    .line 3672
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3673
    check-cast v0, Ljava/lang/String;

    .line 3674
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3676
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 3679
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getOsBit()I
    .locals 1

    .line 4120
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osBit_:I

    return v0
.end method

.method public final getOsVer()Ljava/lang/String;
    .locals 2

    .line 3198
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    .line 3199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3200
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3202
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3204
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3205
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOsVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3215
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    .line 3216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3217
    check-cast v0, Ljava/lang/String;

    .line 3218
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3220
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    return-object v0

    .line 3223
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            ">;"
        }
    .end annotation

    .line 8209
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getPhyMemAll()I
    .locals 1

    .line 3910
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemAll_:I

    return v0
.end method

.method public final getPhyMemUsed()I
    .locals 1

    .line 3920
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemUsed_:I

    return v0
.end method

.method public final getPlatformId()I
    .locals 1

    .line 2948
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->platformId_:I

    return v0
.end method

.method public final getProdId()Ljava/lang/String;
    .locals 2

    .line 2958
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    .line 2959
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2960
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2962
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 2964
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 2965
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getProdIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 2975
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    .line 2976
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2977
    check-cast v0, Ljava/lang/String;

    .line 2978
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 2980
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    return-object v0

    .line 2983
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getQimei()Ljava/lang/String;
    .locals 2

    .line 3510
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    .line 3511
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3512
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3514
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3516
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3517
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3527
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    .line 3528
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3529
    check-cast v0, Ljava/lang/String;

    .line 3530
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3532
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    return-object v0

    .line 3535
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getReserved()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3267
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getReservedMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedCount()I
    .locals 1

    .line 3251
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getReservedMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3274
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3285
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 3286
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getReservedOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3296
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 3297
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3300
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 2

    .line 4012
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    .line 4013
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4014
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4016
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4018
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4019
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getResolutionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4029
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    .line 4030
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4031
    check-cast v0, Ljava/lang/String;

    .line 4032
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4034
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    return-object v0

    .line 4037
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 3152
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkId()Ljava/lang/String;
    .locals 2

    .line 3356
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    .line 3357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3358
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3360
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3362
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3363
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3373
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    .line 3374
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3375
    check-cast v0, Ljava/lang/String;

    .line 3376
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3378
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    return-object v0

    .line 3381
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkVer()Ljava/lang/String;
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    .line 3103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3104
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3106
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3108
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3109
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3119
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    .line 3120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3121
    check-cast v0, Ljava/lang/String;

    .line 3122
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3124
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    return-object v0

    .line 3127
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 4428
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4432
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->platformId_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4434
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4436
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 4437
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4439
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 4440
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4442
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 4443
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4445
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 4446
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4448
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 4449
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4451
    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cmd_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 4453
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4455
    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 4456
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4457
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4459
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 4460
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4462
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 4463
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4466
    :cond_a
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4468
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 4469
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 4470
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 4471
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/16 v3, 0xb

    .line 4473
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 4475
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 4476
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4478
    :cond_c
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->strategylastUpdateTime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 4480
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4482
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 4483
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4485
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 4486
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4488
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApnBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x10

    .line 4489
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4491
    :cond_10
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->uploadTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_11

    const/16 v3, 0x11

    .line 4493
    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4495
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    .line 4496
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4498
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x13

    .line 4499
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4501
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x14

    .line 4502
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4504
    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMacBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x15

    .line 4505
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4507
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x16

    .line 4508
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4510
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0x17

    .line 4511
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4513
    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0x18

    .line 4514
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4516
    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x19

    .line 4517
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4519
    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0x1a

    .line 4520
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4522
    :cond_1a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_1b

    const/16 v1, 0x1b

    .line 4523
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4526
    :cond_1b
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4528
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 4529
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 4530
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 4531
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/16 v3, 0x1c

    .line 4533
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    .line 4535
    :cond_1c
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemAll_:I

    if-eqz v1, :cond_1d

    const/16 v2, 0x1d

    .line 4537
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4539
    :cond_1d
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemUsed_:I

    if-eqz v1, :cond_1e

    const/16 v2, 0x1e

    .line 4541
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4543
    :cond_1e
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->usedProcMem_:I

    if-eqz v1, :cond_1f

    const/16 v2, 0x1f

    .line 4545
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4547
    :cond_1f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMemBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v1, 0x20

    .line 4548
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4550
    :cond_20
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCardBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x21

    .line 4551
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4553
    :cond_21
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolutionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_22

    const/16 v1, 0x22

    .line 4554
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4556
    :cond_22
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0x23

    .line 4557
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4559
    :cond_23
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_24

    const/16 v1, 0x24

    .line 4560
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4562
    :cond_24
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osBit_:I

    if-eqz v1, :cond_25

    const/16 v2, 0x25

    .line 4564
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4566
    :cond_25
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_26

    const/16 v1, 0x26

    .line 4567
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4569
    :cond_26
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_27

    const/16 v1, 0x27

    .line 4570
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4572
    :cond_27
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviationBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_28

    const/16 v1, 0x28

    .line 4573
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4575
    :cond_28
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_29

    const/16 v1, 0x29

    .line 4576
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4578
    :cond_29
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneSeconds_:I

    if-eqz v1, :cond_2a

    const/16 v2, 0x2a

    .line 4580
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4582
    :cond_2a
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4583
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedSize:I

    return v0
.end method

.method public final getServerEnv()Ljava/lang/String;
    .locals 2

    .line 4166
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    .line 4167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4168
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4170
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4172
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4173
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4183
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    .line 4184
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4185
    check-cast v0, Ljava/lang/String;

    .line 4186
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4188
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 4191
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 3310
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    .line 3311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3312
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3314
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3316
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3317
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3327
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    .line 3328
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3329
    check-cast v0, Ljava/lang/String;

    .line 3330
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3332
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 3335
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getStrategylastUpdateTime()J
    .locals 2

    .line 3346
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->strategylastUpdateTime_:J

    return-wide v0
.end method

.method public final getTimeZoneAbbreviation()Ljava/lang/String;
    .locals 2

    .line 4202
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 4203
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4204
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4206
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4208
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4209
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeZoneAbbreviationBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4219
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 4220
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4221
    check-cast v0, Ljava/lang/String;

    .line 4222
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4224
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object v0

    .line 4227
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTimeZoneName()Ljava/lang/String;
    .locals 2

    .line 4238
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    .line 4239
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4240
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4242
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4244
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 4245
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeZoneNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 4255
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    .line 4256
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4257
    check-cast v0, Ljava/lang/String;

    .line 4258
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 4260
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    return-object v0

    .line 4263
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTimeZoneSeconds()I
    .locals 1

    .line 4274
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneSeconds_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUploadTime()J
    .locals 2

    .line 3464
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->uploadTime_:J

    return-wide v0
.end method

.method public final getUsedProcMem()I
    .locals 1

    .line 3930
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->usedProcMem_:I

    return v0
.end method

.method public final getUserSetDeviceId()Ljava/lang/String;
    .locals 2

    .line 3726
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    .line 3727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3728
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3730
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3732
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3733
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUserSetDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3743
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    .line 3744
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3745
    check-cast v0, Ljava/lang/String;

    .line 3746
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3748
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    return-object v0

    .line 3751
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 3030
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    .line 3031
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3032
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3034
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 3036
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 3037
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 3047
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    .line 3048
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3049
    check-cast v0, Ljava/lang/String;

    .line 3050
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 3052
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    return-object v0

    .line 3055
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 4687
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4688
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedHashCode:I

    return v0

    .line 4691
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4693
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPlatformId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4695
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 4697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 4699
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 4701
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 4703
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4705
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 4707
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 4709
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 4711
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4712
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 4714
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 4717
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 4720
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getStrategylastUpdateTime()J

    move-result-wide v1

    .line 4719
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 4722
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 4724
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 4726
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 4729
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUploadTime()J

    move-result-wide v1

    .line 4728
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 4731
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 4733
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 4735
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 4737
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 4739
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 4741
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 4743
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 4745
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 4747
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 4749
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4750
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 4752
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 4755
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemAll()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 4757
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemUsed()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 4759
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUsedProcMem()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 4761
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 4763
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x22

    mul-int/lit8 v0, v0, 0x35

    .line 4765
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x23

    mul-int/lit8 v0, v0, 0x35

    .line 4767
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 4769
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    .line 4771
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsBit()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x26

    mul-int/lit8 v0, v0, 0x35

    .line 4773
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    .line 4775
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 4777
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    .line 4779
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x35

    .line 4781
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneSeconds()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 4782
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4783
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2936
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$3400()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 2937
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 2927
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 2929
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2925
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4280
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4284
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 4858
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 2

    .line 4874
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 2565
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2612
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 2

    .line 4867
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 4868
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 2565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4291
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->platformId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4292
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4294
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4295
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->prodId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4297
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 4298
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->bundleId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4300
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 4301
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->version_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4303
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 4304
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->channel_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4306
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 4307
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4309
    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cmd_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 4310
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4312
    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 4313
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    .line 4315
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 4316
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4318
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 4319
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4324
    :cond_9
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v2, 0xb

    .line 4322
    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 4327
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xc

    .line 4328
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4330
    :cond_a
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->strategylastUpdateTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    const/16 v4, 0xd

    .line 8256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 4333
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    .line 4334
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->sdkId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4336
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xf

    .line 4337
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->deviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4339
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApnBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x10

    .line 4340
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->apn_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4342
    :cond_e
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->uploadTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/16 v2, 0x11

    .line 9256
    invoke-virtual {p1, v2, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 4345
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    .line 4346
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imei_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4348
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x13

    .line 4349
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->qimei_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4351
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x14

    .line 4352
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->imsi_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4354
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMacBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x15

    .line 4355
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->mac_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4357
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x16

    .line 4358
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->androidId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4360
    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x17

    .line 4361
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->networkType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4363
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x18

    .line 4364
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->idfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4366
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x19

    .line 4367
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->userSetDeviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4369
    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x1a

    .line 4370
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cachedUuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4372
    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x1b

    .line 4373
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->currentVersionUuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4378
    :cond_19
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v2, 0x1c

    .line 4376
    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 4381
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemAll_:I

    if-eqz v0, :cond_1a

    const/16 v1, 0x1d

    .line 4382
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4384
    :cond_1a
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->phyMemUsed_:I

    if-eqz v0, :cond_1b

    const/16 v1, 0x1e

    .line 4385
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4387
    :cond_1b
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->usedProcMem_:I

    if-eqz v0, :cond_1c

    const/16 v1, 0x1f

    .line 4388
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4390
    :cond_1c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMemBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    .line 4391
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayMem_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4393
    :cond_1d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCardBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x21

    .line 4394
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayCard_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4396
    :cond_1e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolutionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x22

    .line 4397
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->resolution_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4399
    :cond_1f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v0, 0x23

    .line 4400
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->displayVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4402
    :cond_20
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x24

    .line 4403
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->gpu_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4405
    :cond_21
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->osBit_:I

    if-eqz v0, :cond_22

    const/16 v1, 0x25

    .line 4406
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4408
    :cond_22
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x26

    .line 4409
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->cpu_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4411
    :cond_23
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x27

    .line 4412
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->serverEnv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4414
    :cond_24
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviationBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v0, 0x28

    .line 4415
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneAbbreviation_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4417
    :cond_25
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v0, 0x29

    .line 4418
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4420
    :cond_26
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->timeZoneSeconds_:I

    if-eqz v0, :cond_27

    const/16 v1, 0x2a

    .line 4421
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 4423
    :cond_27
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
