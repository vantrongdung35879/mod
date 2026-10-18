.class public Lcom/uqm/crashsight/core/api/CrashSightPlatform;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static volatile mActivityCached:Landroid/app/Activity;

.field private static mActivityCur:Landroid/app/Activity;


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

.method public static getActivity()Landroid/content/Context;
    .locals 1

    .line 77
    sget-object v0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCached:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCached:Landroid/app/Activity;

    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/core/api/UQMApplications;->context()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityCur()Landroid/content/Context;
    .locals 1

    .line 62
    sget-object v0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCur:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCached:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCached:Landroid/app/Activity;

    return-object v0

    .line 69
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/core/api/UQMApplications;->context()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)Z
    .locals 1

    .line 23
    sput-object p0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCached:Landroid/app/Activity;

    .line 24
    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadSO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 25
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "so library is loaded"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static loadCrashSightCoreSo()Z
    .locals 3

    .line 35
    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadSO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "so library is loaded"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/uqm/crashsight/core/api/UQMApplications;->context()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "cache context error!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_1
    const-string v0, "fail to load libUQMCore.so"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static setActivityCur(Landroid/app/Activity;)V
    .locals 0

    .line 55
    sput-object p0, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->mActivityCur:Landroid/app/Activity;

    return-void
.end method
