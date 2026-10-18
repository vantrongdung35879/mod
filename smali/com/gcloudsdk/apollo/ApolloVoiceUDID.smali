.class public Lcom/gcloudsdk/apollo/ApolloVoiceUDID;
.super Ljava/lang/Object;
.source "ApolloVoiceUDID.java"


# static fields
.field private static mainContext:Landroid/content/Context;

.field private static sAppVersion:Ljava/lang/String;

.field private static sBrand:Ljava/lang/String;

.field private static sBundleId:Ljava/lang/String;

.field private static sFinger:Ljava/lang/String;

.field private static sManu:Ljava/lang/String;

.field private static sModel:Ljava/lang/String;

.field private static sOsVersion:Ljava/lang/String;

.field private static sProduct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppVersion()Ljava/lang/String;
    .locals 3

    .line 126
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sAppVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 128
    :cond_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppVersion Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sAppVersion:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 139
    const-string v0, "Unknown"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sAppVersion:Ljava/lang/String;

    .line 141
    :cond_2
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static Brand()Ljava/lang/String;
    .locals 2

    .line 102
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->GetDeviceBrand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get brand : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 108
    const-string v0, "Emulator"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    .line 110
    :cond_1
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBrand:Ljava/lang/String;

    return-object v0
.end method

.method public static BundleID()Ljava/lang/String;
    .locals 3

    .line 73
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBundleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBundleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetBundleId Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBundleId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 84
    const-string v0, "Unknown"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBundleId:Ljava/lang/String;

    .line 86
    :cond_2
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public static FingerID()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sFinger:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sFinger:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    const-string v0, "Emulator"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sFinger:Ljava/lang/String;

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get finger : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sFinger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sFinger:Ljava/lang/String;

    return-object v0
.end method

.method public static ManuID()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sManu:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 63
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sManu:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 65
    const-string v0, "Emulator"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sManu:Ljava/lang/String;

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get PRODUCT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sManu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sManu:Ljava/lang/String;

    return-object v0
.end method

.method public static Model()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->GetDeviceModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get model : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "Emulator"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    .line 98
    :cond_1
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sModel:Ljava/lang/String;

    return-object v0
.end method

.method public static OSVersion()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sOsVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sOsVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "Unknown"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sOsVersion:Ljava/lang/String;

    .line 121
    :cond_1
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static ProductID()Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sProduct:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sProduct:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    const-string v0, "Emulator"

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sProduct:Ljava/lang/String;

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get PRODUCT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->sProduct:Ljava/lang/String;

    return-object v0
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    return-void
.end method
