.class public Lcom/gcore/abase/GCloudCoreSystem;
.super Ljava/lang/Object;
.source "GCloudCoreSystem.java"


# static fields
.field private static final AES_KEY:Ljava/lang/String; = ""

.field private static m_bEnableFlag:Z

.field private static m_bHasGetFlag:Z


# instance fields
.field private m_szBundleId:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szTargetVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szModel:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szSysVersion:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szBundleId:Ljava/lang/String;

    return-void
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-static {}, Lcom/gcore/abase/GCloudCoreSystem;->getEnableFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "ForbiddenGetBrand"

    return-object v0

    .line 186
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static getEnableFlag()Z
    .locals 4

    .line 55
    sget-boolean v0, Lcom/gcore/abase/GCloudCoreSystem;->m_bHasGetFlag:Z

    if-eqz v0, :cond_0

    .line 56
    sget-boolean v0, Lcom/gcore/abase/GCloudCoreSystem;->m_bEnableFlag:Z

    return v0

    .line 58
    :cond_0
    sget-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    const-string v1, "EnableUDID"

    const/4 v2, 0x0

    const-string v3, "GCloud.GCloudCore"

    invoke-virtual {v0, v3, v1, v2}, Lcom/gcore/abase/GCloudCore;->getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/gcore/abase/GCloudCoreSystem;->m_bEnableFlag:Z

    const/4 v1, 0x1

    .line 59
    sput-boolean v1, Lcom/gcore/abase/GCloudCoreSystem;->m_bHasGetFlag:Z

    return v0
.end method


# virtual methods
.method public GetAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 110
    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 118
    :cond_1
    sget-object v1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    const-string v2, "GCloud.GCloudCore"

    const-string v3, "EnableVersionCode"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/gcore/abase/GCloudCore;->getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetGameVersion Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GCloudCoreSystem"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public GetBundleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szBundleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetBundleId Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCloudCoreSystem"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public GetModel()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {}, Lcom/gcore/abase/GCloudCoreSystem;->getEnableFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "ForbiddenGetModel"

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 82
    :cond_1
    const-string v0, "Model unknown"

    return-object v0
.end method

.method public GetSysVersion()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szSysVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "SysVersion unknown"

    return-object v0
.end method

.method public GetTargetVersion(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 100
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/gcore/abase/GCloudCoreSystem;->m_szTargetVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTargetVersion Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GCloudCoreSystem"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public GetUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-static {}, Lcom/gcore/abase/GCloudCoreSystem;->getEnableFlag()Z

    .line 133
    const-string p1, ""

    return-object p1
.end method
