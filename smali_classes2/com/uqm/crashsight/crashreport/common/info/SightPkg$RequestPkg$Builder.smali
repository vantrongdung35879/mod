.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;"
    }
.end annotation


# instance fields
.field private androidId_:Ljava/lang/Object;

.field private apn_:Ljava/lang/Object;

.field private bitField0_:I

.field private bundleId_:Ljava/lang/Object;

.field private cachedUuid_:Ljava/lang/Object;

.field private channel_:Ljava/lang/Object;

.field private cmd_:I

.field private cpu_:Ljava/lang/Object;

.field private currentVersionUuid_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private displayCard_:Ljava/lang/Object;

.field private displayMem_:Ljava/lang/Object;

.field private displayVersion_:Ljava/lang/Object;

.field private gpu_:Ljava/lang/Object;

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

.field private idfv_:Ljava/lang/Object;

.field private imei_:Ljava/lang/Object;

.field private imsi_:Ljava/lang/Object;

.field private mac_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private networkType_:Ljava/lang/Object;

.field private osBit_:I

.field private osVer_:Ljava/lang/Object;

.field private phyMemAll_:I

.field private phyMemUsed_:I

.field private platformId_:I

.field private prodId_:Ljava/lang/Object;

.field private qimei_:Ljava/lang/Object;

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

.field private resolution_:Ljava/lang/Object;

.field private sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private sdkId_:Ljava/lang/Object;

.field private sdkVer_:Ljava/lang/Object;

.field private serverEnv_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private strategylastUpdateTime_:J

.field private timeZoneAbbreviation_:Ljava/lang/Object;

.field private timeZoneName_:Ljava/lang/Object;

.field private timeZoneSeconds_:I

.field private uploadTime_:J

.field private usedProcMem_:I

.field private userSetDeviceId_:Ljava/lang/Object;

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4924
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5356
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5432
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5508
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5584
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5660
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5766
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5811
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5887
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 6086
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6192
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6268
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6344
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6450
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6526
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6602
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6678
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6754
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6830
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6906
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6982
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7058
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7134
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7423
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7499
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7575
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7651
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7727
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7833
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7909
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7985
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8061
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 4925
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 4880
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 4930
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5356
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5432
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5508
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5584
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5660
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5766
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5811
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5887
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 6086
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6192
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6268
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6344
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6450
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6526
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6602
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6678
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6754
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6830
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6906
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6982
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7058
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7134
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7423
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7499
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7575
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7651
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7727
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7833
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7909
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7985
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8061
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 4931
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 4880
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4886
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

    .line 7214
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 7215
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;
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

    .line 7222
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 7223
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 7224
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$HeadersDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 7227
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7228
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 7230
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->headers_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object v0
.end method

.method private internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;
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

    .line 5975
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5976
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 5977
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 5980
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5981
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 5983
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 5967
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->reserved_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 5968
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$ReservedDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4935
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$3900()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5128
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 2

    .line 5039
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    .line 5040
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5041
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 3

    .line 5048
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 5050
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->platformId_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5051
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5052
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5053
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5054
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5055
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5056
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cmd_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5057
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5058
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5059
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5060
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    .line 5061
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    .line 5062
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5063
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->strategylastUpdateTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;J)J

    .line 5064
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5065
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5066
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5067
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->uploadTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;J)J

    .line 5068
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5069
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5070
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5071
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5072
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5073
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5074
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5075
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5076
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5077
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5078
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    .line 5079
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    .line 5080
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemAll_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5081
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemUsed_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5082
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->usedProcMem_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5083
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5084
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5085
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5086
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5087
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5088
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osBit_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5089
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5090
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5091
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5092
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneSeconds_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;I)I

    .line 5094
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 4

    .line 4940
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 4941
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->platformId_:I

    .line 4943
    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 4945
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 4947
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 4949
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 4951
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 4953
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cmd_:I

    .line 4955
    sget-object v2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 4957
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 4959
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 4961
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    .line 4962
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 4964
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->strategylastUpdateTime_:J

    .line 4966
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 4968
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 4970
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 4972
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->uploadTime_:J

    .line 4974
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 4976
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 4978
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 4980
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 4982
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 4984
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 4986
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 4988
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 4990
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 4992
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 4994
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    .line 4995
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemAll_:I

    .line 4997
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemUsed_:I

    .line 4999
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->usedProcMem_:I

    .line 5001
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 5003
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 5005
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 5007
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 5009
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 5011
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osBit_:I

    .line 5013
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 5015
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 5017
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 5019
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 5021
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneSeconds_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAndroidId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6809
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6810
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearApn()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6399
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6400
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBundleId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5487
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5488
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCachedUuid()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7113
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7114
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearChannel()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5639
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5640
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCmd()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5761
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cmd_:I

    .line 5762
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCpu()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7888
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7889
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCurrentVersionUuid()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7189
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7190
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6323
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6324
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDisplayCard()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7554
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7555
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDisplayMem()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7478
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7479
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDisplayVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7706
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7707
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5111
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearGpu()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7782
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7783
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHeaders()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7287
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 7288
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearIdfv()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6961
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6962
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImei()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6505
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6506
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImsi()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6657
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6658
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMac()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6733
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6734
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearModel()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5866
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5867
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNetworkType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6885
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6886
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5116
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOsBit()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7828
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osBit_:I

    .line 7829
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOsVer()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5942
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5943
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhyMemAll()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7358
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemAll_:I

    .line 7359
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPhyMemUsed()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7388
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemUsed_:I

    .line 7389
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPlatformId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5351
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->platformId_:I

    .line 5352
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearProdId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5411
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5412
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearQimei()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6581
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6582
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearReserved()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6040
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 6041
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearResolution()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7630
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7631
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSBuffer()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5806
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5807
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6247
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6248
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkVer()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5715
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5716
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServerEnv()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7964
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7965
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSessionId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6141
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6142
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStrategylastUpdateTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6187
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->strategylastUpdateTime_:J

    .line 6188
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTimeZoneAbbreviation()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 8040
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8041
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTimeZoneName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 8116
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 8117
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTimeZoneSeconds()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8162
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneSeconds_:I

    .line 8163
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUploadTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6445
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->uploadTime_:J

    .line 6446
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUsedProcMem()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7418
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->usedProcMem_:I

    .line 7419
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUserSetDeviceId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7037
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7038
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5563
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5564
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5100
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 7242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7243
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsReserved(Ljava/lang/String;)Z
    .locals 1

    .line 5995
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5996
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 2

    .line 6760
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6761
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6762
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6764
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6765
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    return-object v0

    .line 6768
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAndroidIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6777
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6778
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6779
    check-cast v0, Ljava/lang/String;

    .line 6780
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6782
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    return-object v0

    .line 6785
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getApn()Ljava/lang/String;
    .locals 2

    .line 6350
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6351
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6352
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6354
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6355
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    return-object v0

    .line 6358
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getApnBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6367
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6368
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6369
    check-cast v0, Ljava/lang/String;

    .line 6370
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6372
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    return-object v0

    .line 6375
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getBundleId()Ljava/lang/String;
    .locals 2

    .line 5438
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5439
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5440
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5442
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5443
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    return-object v0

    .line 5446
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBundleIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5455
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5456
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5457
    check-cast v0, Ljava/lang/String;

    .line 5458
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5460
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    return-object v0

    .line 5463
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCachedUuid()Ljava/lang/String;
    .locals 2

    .line 7064
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7065
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7066
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7068
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7069
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    return-object v0

    .line 7072
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCachedUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7081
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7082
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7083
    check-cast v0, Ljava/lang/String;

    .line 7084
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7086
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    return-object v0

    .line 7089
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 2

    .line 5590
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5591
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5592
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5594
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5595
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    return-object v0

    .line 5598
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5607
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5608
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5609
    check-cast v0, Ljava/lang/String;

    .line 5610
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5612
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    return-object v0

    .line 5615
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCmd()I
    .locals 1

    .line 5742
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cmd_:I

    return v0
.end method

.method public final getCpu()Ljava/lang/String;
    .locals 2

    .line 7839
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7840
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7841
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7843
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7844
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    return-object v0

    .line 7847
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7856
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7858
    check-cast v0, Ljava/lang/String;

    .line 7859
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7861
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    return-object v0

    .line 7864
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCurrentVersionUuid()Ljava/lang/String;
    .locals 2

    .line 7140
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7141
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7142
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7144
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7145
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    return-object v0

    .line 7148
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentVersionUuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7157
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7159
    check-cast v0, Ljava/lang/String;

    .line 7160
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7162
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    return-object v0

    .line 7165
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1

    .line 5034
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 4880
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5029
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$3300()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 6274
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6275
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6276
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6278
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6279
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 6282
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6291
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6293
    check-cast v0, Ljava/lang/String;

    .line 6294
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6296
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 6299
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayCard()Ljava/lang/String;
    .locals 2

    .line 7505
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7506
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7507
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7509
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7510
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    return-object v0

    .line 7513
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCardBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7522
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7523
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7524
    check-cast v0, Ljava/lang/String;

    .line 7525
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7527
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    return-object v0

    .line 7530
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayMem()Ljava/lang/String;
    .locals 2

    .line 7429
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7430
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7431
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7433
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7434
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    return-object v0

    .line 7437
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayMemBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7446
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7448
    check-cast v0, Ljava/lang/String;

    .line 7449
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7451
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    return-object v0

    .line 7454
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDisplayVersion()Ljava/lang/String;
    .locals 2

    .line 7657
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7658
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7659
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7661
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7662
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    return-object v0

    .line 7665
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7674
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7675
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7676
    check-cast v0, Ljava/lang/String;

    .line 7677
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7679
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    return-object v0

    .line 7682
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getGpu()Ljava/lang/String;
    .locals 2

    .line 7733
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7734
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7735
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7737
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7738
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    return-object v0

    .line 7741
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGpuBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7750
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7751
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7752
    check-cast v0, Ljava/lang/String;

    .line 7753
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7755
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    return-object v0

    .line 7758
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

    .line 7250
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersCount()I
    .locals 1

    .line 7234
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 7257
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7268
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 7269
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

    .line 7277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7279
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 7280
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7283
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 7281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getIdfv()Ljava/lang/String;
    .locals 2

    .line 6912
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6913
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6914
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6916
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6917
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 6920
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdfvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6929
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6930
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6931
    check-cast v0, Ljava/lang/String;

    .line 6932
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6934
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 6937
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 2

    .line 6456
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6457
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6458
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6460
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6461
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    return-object v0

    .line 6464
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getImeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6473
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6474
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6475
    check-cast v0, Ljava/lang/String;

    .line 6476
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6478
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    return-object v0

    .line 6481
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 2

    .line 6608
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6609
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6610
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6612
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6613
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    return-object v0

    .line 6616
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getImsiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6625
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6626
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6627
    check-cast v0, Ljava/lang/String;

    .line 6628
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6630
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    return-object v0

    .line 6633
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getMac()Ljava/lang/String;
    .locals 2

    .line 6684
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6685
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6686
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6688
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6689
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    return-object v0

    .line 6692
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMacBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6701
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6702
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6703
    check-cast v0, Ljava/lang/String;

    .line 6704
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6706
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    return-object v0

    .line 6709
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 5817
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5818
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5819
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5821
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5822
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 5825
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5834
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5835
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5836
    check-cast v0, Ljava/lang/String;

    .line 5837
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5839
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 5842
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getMutableHeaders()Ljava/util/Map;
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

    .line 7308
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMutableReserved()Ljava/util/Map;
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

    .line 6061
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 2

    .line 6836
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6837
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6838
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6840
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6841
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 6844
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6853
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6854
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6855
    check-cast v0, Ljava/lang/String;

    .line 6856
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6858
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 6861
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getOsBit()I
    .locals 1

    .line 7809
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osBit_:I

    return v0
.end method

.method public final getOsVer()Ljava/lang/String;
    .locals 2

    .line 5893
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5894
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5895
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5897
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5898
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    return-object v0

    .line 5901
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5910
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5911
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5912
    check-cast v0, Ljava/lang/String;

    .line 5913
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5915
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    return-object v0

    .line 5918
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getPhyMemAll()I
    .locals 1

    .line 7339
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemAll_:I

    return v0
.end method

.method public final getPhyMemUsed()I
    .locals 1

    .line 7369
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemUsed_:I

    return v0
.end method

.method public final getPlatformId()I
    .locals 1

    .line 5332
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->platformId_:I

    return v0
.end method

.method public final getProdId()Ljava/lang/String;
    .locals 2

    .line 5362
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5363
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5364
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5366
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5367
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    return-object v0

    .line 5370
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getProdIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5379
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5380
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5381
    check-cast v0, Ljava/lang/String;

    .line 5382
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5384
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    return-object v0

    .line 5387
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getQimei()Ljava/lang/String;
    .locals 2

    .line 6532
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6533
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6534
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6536
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6537
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    return-object v0

    .line 6540
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6549
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6550
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6551
    check-cast v0, Ljava/lang/String;

    .line 6552
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6554
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    return-object v0

    .line 6557
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

    .line 6003
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->getReservedMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedCount()I
    .locals 1

    .line 5987
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 6010
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6019
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6021
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 6022
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

    .line 6030
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6032
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 6033
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6036
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6034
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 2

    .line 7581
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7582
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7583
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7585
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7586
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    return-object v0

    .line 7589
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getResolutionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7598
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7599
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7600
    check-cast v0, Ljava/lang/String;

    .line 7601
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7603
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    return-object v0

    .line 7606
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 5776
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkId()Ljava/lang/String;
    .locals 2

    .line 6198
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6199
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6200
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6202
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6203
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    return-object v0

    .line 6206
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6215
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6217
    check-cast v0, Ljava/lang/String;

    .line 6218
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6220
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    return-object v0

    .line 6223
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkVer()Ljava/lang/String;
    .locals 2

    .line 5666
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5667
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5668
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5670
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5671
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    return-object v0

    .line 5674
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5683
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5685
    check-cast v0, Ljava/lang/String;

    .line 5686
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5688
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    return-object v0

    .line 5691
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getServerEnv()Ljava/lang/String;
    .locals 2

    .line 7915
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7916
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7917
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7919
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7920
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 7923
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7932
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7934
    check-cast v0, Ljava/lang/String;

    .line 7935
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7937
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 7940
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 6092
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6093
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6094
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6096
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6097
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 6100
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 6109
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6111
    check-cast v0, Ljava/lang/String;

    .line 6112
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 6114
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 6117
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getStrategylastUpdateTime()J
    .locals 2

    .line 6168
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->strategylastUpdateTime_:J

    return-wide v0
.end method

.method public final getTimeZoneAbbreviation()Ljava/lang/String;
    .locals 2

    .line 7991
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 7992
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7993
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 7995
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 7996
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object v0

    .line 7999
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeZoneAbbreviationBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 8008
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8010
    check-cast v0, Ljava/lang/String;

    .line 8011
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 8013
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    return-object v0

    .line 8016
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTimeZoneName()Ljava/lang/String;
    .locals 2

    .line 8067
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 8068
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8069
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 8071
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 8072
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    return-object v0

    .line 8075
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeZoneNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 8084
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 8085
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8086
    check-cast v0, Ljava/lang/String;

    .line 8087
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 8089
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    return-object v0

    .line 8092
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTimeZoneSeconds()I
    .locals 1

    .line 8143
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneSeconds_:I

    return v0
.end method

.method public final getUploadTime()J
    .locals 2

    .line 6426
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->uploadTime_:J

    return-wide v0
.end method

.method public final getUsedProcMem()I
    .locals 1

    .line 7399
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->usedProcMem_:I

    return v0
.end method

.method public final getUserSetDeviceId()Ljava/lang/String;
    .locals 2

    .line 6988
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 6989
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6990
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6992
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 6993
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    return-object v0

    .line 6996
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUserSetDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 7005
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7006
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7007
    check-cast v0, Ljava/lang/String;

    .line 7008
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 7010
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    return-object v0

    .line 7013
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 5514
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5515
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5516
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5518
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 5519
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 5522
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 5531
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5532
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5533
    check-cast v0, Ljava/lang/String;

    .line 5534
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 5536
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 5539
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4918
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$3400()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 4919
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

    .line 4896
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 4898
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

    .line 4894
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method protected final internalGetMutableMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 4909
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 4911
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

    .line 4907
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 5

    .line 5141
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5142
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPlatformId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5143
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPlatformId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setPlatformId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5145
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getProdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5146
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5147
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5149
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5150
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5151
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5153
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5154
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5155
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5157
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5158
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5159
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5161
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5162
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5163
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5165
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v0

    if-eqz v0, :cond_7

    .line 5166
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setCmd(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5168
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eq v0, v1, :cond_8

    .line 5169
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setSBuffer(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5171
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5172
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$4900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5173
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5175
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5176
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5177
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5179
    :cond_a
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    .line 5180
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 5179
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    .line 5181
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5182
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 5183
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5185
    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getStrategylastUpdateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    .line 5186
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getStrategylastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setStrategylastUpdateTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5188
    :cond_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getSdkId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5189
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 5190
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5192
    :cond_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5193
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 5194
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5196
    :cond_e
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5197
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 5198
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5200
    :cond_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUploadTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 5201
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUploadTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5203
    :cond_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5204
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 5205
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5207
    :cond_11
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getQimei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5208
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$5900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 5209
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5211
    :cond_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5212
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 5213
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5215
    :cond_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5216
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 5217
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5219
    :cond_14
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 5220
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 5221
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5223
    :cond_15
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5224
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 5225
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5227
    :cond_16
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getIdfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5228
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 5229
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5231
    :cond_17
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUserSetDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 5232
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 5233
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5235
    :cond_18
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCachedUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 5236
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 5237
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5239
    :cond_19
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCurrentVersionUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5240
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$6700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 5241
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5243
    :cond_1a
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    .line 5244
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 5243
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    .line 5245
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemAll()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 5246
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemAll()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setPhyMemAll(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5248
    :cond_1b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemUsed()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 5249
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getPhyMemUsed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setPhyMemUsed(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5251
    :cond_1c
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUsedProcMem()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 5252
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getUsedProcMem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUsedProcMem(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5254
    :cond_1d
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayMem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5255
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 5256
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5258
    :cond_1e
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayCard()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5259
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 5260
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5262
    :cond_1f
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 5263
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 5264
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5266
    :cond_20
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDisplayVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 5267
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 5268
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5270
    :cond_21
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getGpu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5271
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 5272
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5274
    :cond_22
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsBit()I

    move-result v0

    if-eqz v0, :cond_23

    .line 5275
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getOsBit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setOsBit(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5277
    :cond_23
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCpu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 5278
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 5279
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5281
    :cond_24
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 5282
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$7900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 5283
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5285
    :cond_25
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneAbbreviation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5286
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 5287
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5289
    :cond_26
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 5290
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 5291
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    .line 5293
    :cond_27
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneSeconds()I

    move-result v0

    if-eqz v0, :cond_28

    .line 5294
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getTimeZoneSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setTimeZoneSeconds(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5296
    :cond_28
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5297
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5313
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8600()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5319
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5315
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5316
    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5319
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    .line 5321
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 5132
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v0, :cond_0

    .line 5133
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1

    .line 5135
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8175
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllHeaders(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;"
        }
    .end annotation

    .line 7328
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 7329
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putAllReserved(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;"
        }
    .end annotation

    .line 6081
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 6082
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7317
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7318
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 7319
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6070
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6071
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 6072
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeHeaders(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 7297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7298
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableHeaders()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 7299
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeReserved(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 6050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6051
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->internalGetMutableReserved()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 6052
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAndroidId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6799
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6800
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAndroidIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6823
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6825
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->androidId_:Ljava/lang/Object;

    .line 6826
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApn(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6389
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6390
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApnBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6413
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6415
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->apn_:Ljava/lang/Object;

    .line 6416
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBundleId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5477
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5478
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBundleIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5501
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5503
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->bundleId_:Ljava/lang/Object;

    .line 5504
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCachedUuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7103
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7104
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCachedUuidBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7127
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7129
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cachedUuid_:Ljava/lang/Object;

    .line 7130
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setChannel(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5626
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5629
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5630
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setChannelBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5653
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5655
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->channel_:Ljava/lang/Object;

    .line 5656
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCmd(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5751
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cmd_:I

    .line 5752
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpu(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7878
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7879
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpuBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7902
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7904
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->cpu_:Ljava/lang/Object;

    .line 7905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurrentVersionUuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7179
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7180
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurrentVersionUuidBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7203
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7205
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->currentVersionUuid_:Ljava/lang/Object;

    .line 7206
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6313
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6314
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6337
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6339
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->deviceId_:Ljava/lang/Object;

    .line 6340
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayCard(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7544
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7545
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayCardBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7568
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7570
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayCard_:Ljava/lang/Object;

    .line 7571
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayMem(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7468
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7469
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayMemBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7492
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7494
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayMem_:Ljava/lang/Object;

    .line 7495
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7693
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7696
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplayVersionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7720
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7722
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->displayVersion_:Ljava/lang/Object;

    .line 7723
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5106
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGpu(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7769
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7772
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7773
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGpuBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7794
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7796
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7798
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->gpu_:Ljava/lang/Object;

    .line 7799
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdfv(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6948
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6951
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6952
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdfvBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6973
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6975
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6977
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->idfv_:Ljava/lang/Object;

    .line 6978
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImei(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6495
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6496
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6519
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6521
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imei_:Ljava/lang/Object;

    .line 6522
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImsi(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6647
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6648
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImsiBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6671
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6673
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->imsi_:Ljava/lang/Object;

    .line 6674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMac(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6723
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6724
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMacBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6745
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6747
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6749
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mac_:Ljava/lang/Object;

    .line 6750
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5856
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5857
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModelBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5880
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5882
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->model_:Ljava/lang/Object;

    .line 5883
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNetworkType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6875
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6876
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNetworkTypeBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6899
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6901
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->networkType_:Ljava/lang/Object;

    .line 6902
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsBit(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7818
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osBit_:I

    .line 7819
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5932
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5933
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsVerBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5956
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5958
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->osVer_:Ljava/lang/Object;

    .line 5959
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhyMemAll(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7348
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemAll_:I

    .line 7349
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPhyMemUsed(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7378
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->phyMemUsed_:I

    .line 7379
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlatformId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5341
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->platformId_:I

    .line 5342
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProdId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5401
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5402
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProdIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5425
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5427
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->prodId_:Ljava/lang/Object;

    .line 5428
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setQimei(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6571
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6572
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setQimeiBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6593
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6595
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6597
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->qimei_:Ljava/lang/Object;

    .line 6598
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5122
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setResolution(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7620
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7621
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setResolutionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7644
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7646
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->resolution_:Ljava/lang/Object;

    .line 7647
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSBuffer(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5792
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 5793
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6237
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6238
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6261
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6263
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkId_:Ljava/lang/Object;

    .line 6264
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5705
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5706
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkVerBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5727
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5729
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5731
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sdkVer_:Ljava/lang/Object;

    .line 5732
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerEnv(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7954
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7955
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerEnvBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7978
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7980
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->serverEnv_:Ljava/lang/Object;

    .line 7981
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6131
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6132
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6155
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$9400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 6157
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->sessionId_:Ljava/lang/Object;

    .line 6158
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStrategylastUpdateTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6177
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->strategylastUpdateTime_:J

    .line 6178
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimeZoneAbbreviation(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8027
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8030
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8031
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimeZoneAbbreviationBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8054
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 8056
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneAbbreviation_:Ljava/lang/Object;

    .line 8057
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimeZoneName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8106
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 8107
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimeZoneNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8130
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$11600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 8132
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneName_:Ljava/lang/Object;

    .line 8133
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimeZoneSeconds(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8152
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->timeZoneSeconds_:I

    .line 8153
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 8169
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 4880
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 6435
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->uploadTime_:J

    .line 6436
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUsedProcMem(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7408
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->usedProcMem_:I

    .line 7409
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUserSetDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7027
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7028
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUserSetDeviceIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 7049
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7051
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$10500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 7053
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->userSetDeviceId_:Ljava/lang/Object;

    .line 7054
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5553
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5554
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVersionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 0

    .line 5575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5577
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->access$8900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5579
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->version_:Ljava/lang/Object;

    .line 5580
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->onChanged()V

    return-object p0
.end method
