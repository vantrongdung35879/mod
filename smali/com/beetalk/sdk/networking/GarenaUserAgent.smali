.class public Lcom/beetalk/sdk/networking/GarenaUserAgent;
.super Ljava/lang/Object;
.source "GarenaUserAgent.java"


# static fields
.field public static final HEADER_KEY:Ljava/lang/String; = "user-agent"

.field private static volatile MODEL_POSTFIX:Ljava/lang/String; = ""

.field private static final TITLE:Ljava/lang/String; = "GarenaMSDK"


# instance fields
.field private mAndroidVersion:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mExtra:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSDKVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->generateAgent(Ljava/lang/String;)V

    return-void
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private generateAgent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Android "

    .line 51
    :try_start_0
    const-string v1, "4.0.39"

    invoke-direct {p0, v1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    .line 52
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    .line 53
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Android"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-nez p0, :cond_0

    .line 36
    const-string/jumbo p0, "tablet"

    sput-object p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 73
    iget-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    iget-object v5, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "GarenaMSDK"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    const-string v0, "%s/%s(%s;%s;%s;%s;%s)"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
