.class public Lcom/tdatamaster/tdm/device/DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfoHolder.java"


# static fields
.field private static mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native AddDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)J
.end method

.method private native GetBooleanDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;
    .locals 1

    .line 21
    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInstance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    return-object v0
.end method

.method private native GetLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method private native GetStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native SetBoolDeviceInfo(Ljava/lang/String;ZI)I
.end method

.method private native SetLongDeviceInfo(Ljava/lang/String;JI)I
.end method

.method private native SetStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)I
.end method


# virtual methods
.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->AddDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)J

    return-void
.end method

.method public getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetBooleanDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceInfo(Ljava/lang/String;J)I
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetLongDeviceInfo(Ljava/lang/String;JI)I

    move-result p1

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetBoolDeviceInfo(Ljava/lang/String;ZI)I

    move-result p1

    return p1
.end method
