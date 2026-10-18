.class public Lcom/garena/game/kgtw/util/BeaconSDKLauncher;
.super Ljava/lang/Object;
.source "BeaconSDKLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconSDKLauncher"

.field private static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .line 12
    sget-boolean v0, Lcom/garena/game/kgtw/util/BeaconSDKLauncher;->isInit:Z

    const-string v1, "BeaconSDKLauncher"

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "Beacon Report SDK already init"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_0
    const-string v0, "init"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/tencent/gcloud/msdk/report/BeaconReport;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;-><init>()V

    .line 20
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/report/BeaconReport;->init()V

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/garena/game/kgtw/util/BeaconSDKLauncher;->isInit:Z

    return-void
.end method
