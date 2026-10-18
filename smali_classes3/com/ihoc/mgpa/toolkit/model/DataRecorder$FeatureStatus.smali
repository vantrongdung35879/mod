.class public Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/toolkit/model/DataRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureStatus"
.end annotation


# static fields
.field public static backgroundDownload:Z = false

.field public static bgCloseNotifyInFore:Z = false

.field public static bgPreDownload:Z = false

.field public static bgPreDownloadHotfix:Z = false

.field public static bgServicePreDownload:Z = false

.field public static bilink:Z = true

.field public static checkCpuCoreLock:Z = false

.field public static commonHaptic:Z = true

.field public static cpuApply:Z = false

.field public static dataForward:Z = false

.field public static debugIdReport:Z = false

.field public static debugMode:Z = false

.field public static deviceCheck:Z = false

.field public static deviceInfoReport:Z = false

.field public static foldScreen:Z = true

.field public static fpsStrategy:Z = false

.field public static frameInterpolation:Z = true

.field public static globalSwitch:Z = false

.field public static gpuApply:Z = false

.field public static heavyThreadBind:Z = false

.field public static isCopyPreFile:Z = false

.field public static keepAlive:Z = false

.field public static l1IdReport:Z = false

.field public static l2IdReport:Z = false

.field public static lightThreadBind:Z = false

.field public static liveIdReport:Z = false

.field public static localWifiOptimize:Z = false

.field public static logUpload:Z = false

.field public static netLatency:Z = false

.field public static netLatencyProbe:Z = false

.field public static netSmartSelect:Z = false

.field public static notchProbe:Z = false

.field public static optCfg:Z = false

.field public static preDownload:Z = false

.field public static preTransceiver:Z = false

.field public static predownFileCheck:Z = false

.field public static recordScreen:Z = false

.field public static registerCallback:Z = false

.field public static reportAll:Z = false

.field public static reportException:Z = false

.field public static richTap:Z = true

.field public static romVersionReport:Z = false

.field public static safeUniqueIdReport:Z = false

.field public static sceneToVendor:Z = false

.field public static sceneTransform:Z = false

.field public static sceneType:Z = false

.field public static screenUser:Z = false

.field public static spa:Z = false

.field public static spaReport:Z = false

.field public static startRouter:Z = false

.field public static startRouterReport:Z = false

.field public static superResolution:Z = true

.field public static threadAffinitySet:Z = false

.field public static transceiver:Z = false

.field public static transceiverSignalpipe:Z = false

.field public static turingShield:Z = false

.field public static uniqueIdReport:Z = false

.field public static useNoneRichTap:Z = false

.field public static vendorOAIDReport:Z = true

.field public static vendorUniqueIdReport:Z = false

.field public static wifiUpLinkOptimize:Z = false

.field public static xidUpdate:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
