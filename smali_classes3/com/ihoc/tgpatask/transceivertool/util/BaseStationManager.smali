.class public Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;
.super Ljava/lang/Object;
.source "BaseStationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$BaseStationManagerInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private globalDbm:I

.field private listener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    .line 48
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->globalDbm:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->listener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->globalDbm:I

    return p1
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;
    .locals 1

    .line 44
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$BaseStationManagerInstance;->access$100()Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .line 151
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$3;

    invoke-direct {v0, p0}, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager$3;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;)V

    return-object v0
.end method


# virtual methods
.method public getBaseStation()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getStationAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "station func has been closed"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public register()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u8fd8\u672a\u8fdb\u884c\u6709\u6548\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->getControlConfig()Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/json/ControlConfig;->getStationAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/BaseStationManager;->TAG:Ljava/lang/String;

    const-string v1, "Station func has been closed"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 0

    return-void
.end method
