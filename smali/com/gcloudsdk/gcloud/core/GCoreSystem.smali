.class public Lcom/gcloudsdk/gcloud/core/GCoreSystem;
.super Ljava/lang/Object;
.source "GCoreSystem.java"


# static fields
.field private static final AES_KEY:Ljava/lang/String; = ""


# instance fields
.field private m_szBundleId:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szTargetVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szModel:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szSysVersion:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szBundleId:Ljava/lang/String;

    return-void
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public GetAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 61
    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 69
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetGameVersion Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TXSystem"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public GetBundleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szBundleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetBundleId Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXSystem"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public GetModel()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "Model unknown"

    return-object v0
.end method

.method public GetSysVersion()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szSysVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "SysVersion unknown"

    return-object v0
.end method

.method public GetTargetVersion(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 51
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/gcloudsdk/gcloud/core/GCoreSystem;->m_szTargetVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTargetVersion Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TXSystem"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public GetUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 78
    const-string p1, ""

    return-object p1
.end method
