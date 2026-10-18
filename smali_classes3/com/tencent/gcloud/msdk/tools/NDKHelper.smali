.class public Lcom/tencent/gcloud/msdk/tools/NDKHelper;
.super Ljava/lang/Object;
.source "NDKHelper.java"


# static fields
.field protected static mIsLoadedSO:Z = false

.field private static mIsLoadingSO:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JNIONLoad()V
    .locals 2

    .line 247
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/IT;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "###### WHO INVOKE MSDKCore.SO ######"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static checkSOLoaded()Z
    .locals 2

    .line 51
    sget-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadedSO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadingSO:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "NDKHelper"

    const-string v1, "--------------------------------------------\n.so has not been loaded. To use JNI helper, please initialize with \nMSDKPlatform.initialize (Activity activity);\n--------------------------------------------\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static loadPluginByReflection(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libName"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    :try_start_0
    const-string v2, "com.tencent.gcloud.plugin.PluginUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 229
    const-string v3, "loadLibrary"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 230
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_1
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static loadSO()Z
    .locals 2

    .line 33
    sget-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadedSO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadingSO:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadingSO:Z

    .line 35
    const-string/jumbo v1, "try to load MSDKCore.so"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 36
    const-string v1, "TDataMaster"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->loadPluginByReflection(Ljava/lang/String;)Z

    .line 37
    const-string v1, "MSDKCore"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->loadPluginByReflection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sput-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadedSO:Z

    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "MSDK"

    const-string v1, "MSDKCore.so loading failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "MSDKCore.so have been loaded"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadingSO:Z

    .line 47
    sget-boolean v0, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->mIsLoadedSO:Z

    return v0
.end method


# virtual methods
.method public getAPN()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUInfo()Ljava/lang/String;
    .locals 1

    .line 187
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getCpuInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getChannelExtra()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getChannelExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 2

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 196
    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 199
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameVersionCode()Ljava/lang/String;
    .locals 3

    .line 104
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    const-string v1, "getGameVersionCode fail"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, ""

    return-object v0
.end method

.method public getGameVersionName()Ljava/lang/String;
    .locals 3

    .line 116
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 119
    const-string v1, "getGameVersionName fail"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRAMInfo()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getRAMInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getROMInfo()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getROMInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getScreenDPI()F
    .locals 1

    .line 126
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getScreenDPI()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 215
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXForwardedFor()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getXForwardedFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/tools/MSDKDeviceInfo;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMainThread()Z
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public runOnUIThread(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "callbackPtr",
            "argsPtr"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/tools/NDKHelper$1;-><init>(Lcom/tencent/gcloud/msdk/tools/NDKHelper;JJ)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public native runOnUiThreadHandler(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callbackPtr",
            "argsPtr"
        }
    .end annotation
.end method
