.class public Lcom/tencent/ngame/utility/SGameUtility;
.super Ljava/lang/Object;
.source "SGameUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ngame/utility/SGameUtility$PowerSaveModeReceiver;,
        Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;,
        Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;,
        Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;,
        Lcom/tencent/ngame/utility/SGameUtility$AnsQueryConstants;,
        Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;
    }
.end annotation


# static fields
.field static final MAX_LEN:I = 0xc800

.field private static final TAG:Ljava/lang/String; = "SGameUtility"

.field private static final TIMEOUT_SECONDS:J = 0x5L

.field static batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver; = null

.field private static dmi:Landroid/os/Debug$MemoryInfo; = null

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field public static g_EnableInput:Z = false

.field static final g_EnableMultiSimCard:Z = true

.field static final g_GAID:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g_logBuffer:Ljava/lang/StringBuffer;

.field private static lastPowerSaveModeRet:I

.field private static lastRet:I

.field private static mActivityResultListener:Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;

.field private static mPermissionListener:Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;

.field private static powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

.field private static powerSaveModeRegisterContext:Landroid/content/Context;

.field public static pss:J

.field public static pssCode:J

.field public static pssGraphics:J

.field public static pssJavaHeap:J

.field public static pssNativeHeap:J

.field public static pssPrivateOther:J

.field public static pssStack:J

.field public static pssSystem:J

.field private static sDeeplink:Ljava/lang/String;

.field private static sSavedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->executor:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->g_GAID:Ljava/util/concurrent/atomic/AtomicReference;

    .line 832
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->sSavedIntent:Landroid/content/Intent;

    .line 833
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->sDeeplink:Ljava/lang/String;

    .line 869
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->mPermissionListener:Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;

    .line 885
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->mActivityResultListener:Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;

    const/4 v0, 0x0

    .line 933
    sput v0, Lcom/tencent/ngame/utility/SGameUtility;->lastRet:I

    const/4 v0, -0x1

    .line 955
    sput v0, Lcom/tencent/ngame/utility/SGameUtility;->lastPowerSaveModeRet:I

    .line 1203
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-wide/16 v0, 0x0

    .line 1210
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pss:J

    .line 1211
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssJavaHeap:J

    .line 1212
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssNativeHeap:J

    .line 1213
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssCode:J

    .line 1214
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssStack:J

    .line 1215
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssGraphics:J

    .line 1216
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssPrivateOther:J

    .line 1217
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssSystem:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyTextToClipboard(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 534
    const-string v0, "Call CopyTextToClipboard"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/ngame/utility/SGameUtility$4;

    invoke-direct {v1, p0}, Lcom/tencent/ngame/utility/SGameUtility$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static EMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "subject",
            "text"
        }
    .end annotation

    .line 603
    const-string v0, "SGameUtilitysendEmail"

    .line 0
    const-string v1, "mailto:"

    const/4 v2, 0x0

    .line 603
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 605
    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string p0, "android.intent.extra.TEXT"

    invoke-virtual {v3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 609
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string p1, ""

    invoke-static {v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 612
    :cond_0
    const-string p0, "UnityPlayer.currentActivity  cannot be null \uff01Failed to send email"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Throwable:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static EnableInput(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnable"
        }
    .end annotation

    .line 79
    sput-boolean p0, Lcom/tencent/ngame/utility/SGameUtility;->g_EnableInput:Z

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "java EnableInput "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/ngame/utility/SGameUtility;->g_EnableInput:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnableInput"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ExitApp()V
    .locals 2

    .line 483
    const-string v0, "XXXX"

    const-string v1, "ExitApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 486
    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    .line 489
    :cond_0
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->unregisterPowerSaveModeReceiver()V

    .line 491
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 494
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 497
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static GetApkAbsPath()Ljava/lang/String;
    .locals 3

    .line 165
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 167
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 169
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static GetAppCodeVersion()Ljava/lang/String;
    .locals 3

    .line 130
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 131
    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 137
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, ""

    .line 139
    :goto_0
    const-string v1, "GetAppCodeVersion"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static GetAppName()Ljava/lang/String;
    .locals 3

    .line 324
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 328
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetAtachLog()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 100
    const-string v0, ""

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMainObbPath()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, ""

    return-object v0
.end method

.method public static GetNetworkType()I
    .locals 5

    const/4 v0, -0x1

    .line 384
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v2, "connectivity"

    .line 385
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 391
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 397
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    return v4

    .line 403
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 406
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :cond_4
    return v2

    :catch_0
    :cond_5
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static GetObbPath(Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 183
    const-string v0, ""

    .line 185
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 188
    sget-object v4, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->MAIN:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    if-ne p0, v4, :cond_0

    const-string p0, "/main."

    goto :goto_0

    :cond_0
    const-string p0, "/patch."

    .line 189
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".obb"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string p0, "SGameUtility"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static GetTextFromClipboard()Ljava/lang/String;
    .locals 2

    .line 553
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 554
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 556
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static IsFileExistInObb(Ljava/lang/String;Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "type"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->GetObbPath(Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 215
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 217
    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static IsFileExistInStreamingAssets(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 287
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 295
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 301
    throw p0

    :catch_1
    const/4 v0, 0x0

    .line 302
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exist in apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SGameUtility"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "assets/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 309
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->MAIN:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    invoke-static {p0, v0}, Lcom/tencent/ngame/utility/SGameUtility;->IsFileExistInObb(Ljava/lang/String;Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Z

    move-result v0

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " exist in main obb"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 314
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->PATCH:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    invoke-static {p0, v0}, Lcom/tencent/ngame/utility/SGameUtility;->IsFileExistInObb(Ljava/lang/String;Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Z

    move-result v0

    .line 316
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " exist in patch obb"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static MoveAppToBack()V
    .locals 2

    .line 502
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public static OnRestartFromCSHarp()V
    .locals 1

    .line 508
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 510
    const-string v0, "currentActivity is null"

    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->dtLog(Ljava/lang/String;)V

    return-void

    .line 513
    :cond_0
    new-instance v0, Lcom/tencent/ngame/utility/SGameUtility$3;

    invoke-direct {v0}, Lcom/tencent/ngame/utility/SGameUtility$3;-><init>()V

    .line 529
    invoke-virtual {v0}, Lcom/tencent/ngame/utility/SGameUtility$3;->start()V

    .line 530
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static ShowInstalledPackageNotIntect()V
    .locals 2

    .line 259
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/ngame/utility/SGameUtility$1;

    invoke-direct {v1}, Lcom/tencent/ngame/utility/SGameUtility$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static UploadException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameStr",
            "str"
        }
    .end annotation

    .line 110
    const-string v0, "UploadException"

    .line 0
    const-string v1, " new java RuntimeException("

    const-string v2, " C# CrashAttchLog\n-------\n"

    const-string v3, "CatchedException_(no crash)_"

    .line 110
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n-----------\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/tencent/ngame/utility/SGameUtility;->getBatteryStateToInt(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 59
    sget v0, Lcom/tencent/ngame/utility/SGameUtility;->lastRet:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 59
    sput p0, Lcom/tencent/ngame/utility/SGameUtility;->lastRet:I

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/tencent/ngame/utility/SGameUtility;->queryPowerSaveModeStateInternal(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 59
    sget v0, Lcom/tencent/ngame/utility/SGameUtility;->lastPowerSaveModeRet:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 59
    sput p0, Lcom/tencent/ngame/utility/SGameUtility;->lastPowerSaveModeRet:I

    return p0
.end method

.method public static asyncGetGAID()V
    .locals 2

    .line 1142
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/ngame/utility/SGameUtility$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/tencent/ngame/utility/SGameUtility$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static checkObbFileVaild()Z
    .locals 4

    .line 239
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->MAIN:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->GetObbPath(Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 242
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method public static clearDeeplink()V
    .locals 1

    const/4 v0, 0x0

    .line 862
    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->sDeeplink:Ljava/lang/String;

    return-void
.end method

.method public static dtLog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java dtlog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dtlog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    sget-object p0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    sget-object p0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const v0, 0xc800

    if-le p0, v0, :cond_1

    .line 93
    sget-object p0, Lcom/tencent/ngame/utility/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public static enableNativeLog(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 75
    :goto_0
    invoke-static {p0}, Lcom/tencent/ngame/utility/DebugLog;->setLogLevel(I)V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    .line 642
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "Exception during AdId retrieval task: "

    const-class v1, Lcom/tencent/ngame/utility/SGameUtility;

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 1101
    :try_start_0
    sget-object v3, Lcom/tencent/ngame/utility/SGameUtility;->g_GAID:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1103
    monitor-exit v1

    return-object v3

    .line 1106
    :cond_0
    :try_start_1
    sget-object v3, Lcom/tencent/ngame/utility/SGameUtility;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/tencent/ngame/utility/SGameUtility$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/tencent/ngame/utility/SGameUtility$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-interface {p0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object p0

    :catch_0
    move-exception p0

    .line 1135
    :try_start_3
    const-string v3, "SGameUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1133
    const-string v0, "SGameUtility"

    const-string v3, "Timed out waiting for AdId retrieval after 5 seconds."

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1131
    const-string v0, "SGameUtility"

    const-string v3, "getAdId interrupted."

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1138
    :goto_0
    monitor-exit v1

    return-object v2

    .line 1096
    :cond_1
    :try_start_4
    const-string p0, "SGameUtility"

    const-string v0, "Context is null or Android version is too low."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1097
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static getAndroidMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 565
    const-string v0, ""

    .line 567
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 568
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    .line 629
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 633
    const-string v1, "SGameUtilitygetAppVersion"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v0, "UNKNOW"

    return-object v0
.end method

.method public static getAvailMemory()J
    .locals 4

    .line 367
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "activity"

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 371
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 372
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getBatteryState()I
    .locals 3

    .line 899
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;-><init>(Lcom/tencent/ngame/utility/SGameUtility$1;)V

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    .line 901
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 902
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/tencent/ngame/utility/SGameUtility;->batteryReceiver:Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 904
    const-string/jumbo v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 905
    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->getBatteryStateToInt(I)I

    move-result v0

    return v0

    .line 907
    :cond_0
    sget v0, Lcom/tencent/ngame/utility/SGameUtility;->lastRet:I

    return v0
.end method

.method private static getBatteryStateToInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v3, 0x4

    if-eq p0, v3, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_0
    return v0
.end method

.method public static getCachedGAID()Ljava/lang/String;
    .locals 1

    .line 1152
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->g_GAID:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1153
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 5

    .line 456
    new-instance v0, Lcom/tencent/ngame/utility/SimCardUtil;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/ngame/utility/SimCardUtil;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {v0}, Lcom/tencent/ngame/utility/SimCardUtil;->getSimInfo()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v0, v0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->l_ssim_info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;

    if-eqz v2, :cond_0

    .line 460
    iget-object v3, v2, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->carrierName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->carrierName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 461
    iget-object v2, v2, Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;->carrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 465
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeeplink()Ljava/lang/String;
    .locals 1

    .line 858
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->sDeeplink:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPowerSaveModeRegisterContext()Landroid/content/Context;
    .locals 2

    .line 960
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getPowerSaveModeState()I
    .locals 6

    .line 998
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "SGameUtility"

    if-nez v0, :cond_0

    .line 999
    const-string v0, "getPowerSaveModeState currentActivity is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1010
    :try_start_0
    sget-object v2, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 1011
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->getPowerSaveModeRegisterContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1013
    const-string v2, "register PowerSaveModeReceiver failed because context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_1
    new-instance v3, Lcom/tencent/ngame/utility/SGameUtility$PowerSaveModeReceiver;

    invoke-direct {v3, v0}, Lcom/tencent/ngame/utility/SGameUtility$PowerSaveModeReceiver;-><init>(Lcom/tencent/ngame/utility/SGameUtility$1;)V

    .line 1016
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1017
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1019
    sput-object v3, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1020
    sput-object v2, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeRegisterContext:Landroid/content/Context;

    .line 1021
    const-string v2, "register PowerSaveModeReceiver success."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1025
    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1026
    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeRegisterContext:Landroid/content/Context;

    .line 1027
    const-string v0, "register PowerSaveModeReceiver failed."

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    :cond_2
    :goto_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->queryPowerSaveModeStateInternal(Landroid/content/Context;)I

    move-result v0

    .line 1031
    sput v0, Lcom/tencent/ngame/utility/SGameUtility;->lastPowerSaveModeRet:I

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPowerSaveModeState ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", brand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getProcessMemery()J
    .locals 2

    .line 1206
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1207
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getSavedIntent()Landroid/content/Intent;
    .locals 1

    .line 846
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->sSavedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getTextFromClipboard()Ljava/lang/String;
    .locals 3

    .line 648
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getTextFromClipboard"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 660
    :cond_0
    const-string v0, "null"

    return-object v0
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1189
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1192
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method private static isDeeplink(Landroid/net/Uri;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 851
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static killProcessByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "processName"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/tencent/ngame/utility/SGameUtility$2;

    invoke-direct {v0, p0}, Lcom/tencent/ngame/utility/SGameUtility$2;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/tencent/ngame/utility/SGameUtility$2;->start()V

    return-void
.end method

.method static synthetic lambda$asyncGetGAID$1()V
    .locals 4

    .line 1143
    const-string v0, "getAdId() start"

    const-string v1, "SGameUtility"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1145
    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->getAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GAID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v0, "getAdId() end"

    invoke-static {v1, v0}, Lcom/tencent/ngame/utility/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAdId$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1108
    const-string v0, "SGameUtility"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0

    .line 1113
    sget-object v2, Lcom/tencent/ngame/utility/SGameUtility;->g_GAID:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 1122
    const-string v2, "Unexpected exception getting AdId."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1120
    const-string v2, "Connection to Google Play Services failed."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1118
    const-string v2, "Recoverable error connecting to Google Play Services."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1116
    const-string v2, "Google Play is not installed on this device."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1258
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1267
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    .line 1262
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 892
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->mActivityResultListener:Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;

    if-eqz v0, :cond_0

    .line 893
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 876
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->mPermissionListener:Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;

    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public static processPss()J
    .locals 2

    .line 1243
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pss:J

    return-wide v0
.end method

.method public static processPssCode()J
    .locals 2

    .line 1246
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssCode:J

    return-wide v0
.end method

.method public static processPssGraphics()J
    .locals 2

    .line 1248
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssGraphics:J

    return-wide v0
.end method

.method public static processPssJavaHeap()J
    .locals 2

    .line 1244
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssJavaHeap:J

    return-wide v0
.end method

.method public static processPssNativeHeap()J
    .locals 2

    .line 1245
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssNativeHeap:J

    return-wide v0
.end method

.method public static processPssPrivateOther()J
    .locals 2

    .line 1249
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssPrivateOther:J

    return-wide v0
.end method

.method public static processPssStack()J
    .locals 2

    .line 1247
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssStack:J

    return-wide v0
.end method

.method public static processPssSystem()J
    .locals 2

    .line 1250
    sget-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssSystem:J

    return-wide v0
.end method

.method private static queryPowerSaveModeStateInternal(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1047
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    :cond_0
    const/4 v0, -0x1

    .line 1050
    const-string v1, "SGameUtility"

    if-nez p0, :cond_1

    .line 1051
    const-string p0, "queryPowerSaveModeStateInternal context is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1060
    :cond_1
    :try_start_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_2

    .line 1062
    const-string p0, "queryPowerSaveModeStateInternal powerManager is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1065
    :cond_2
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1067
    const-string v2, "queryPowerSaveModeStateInternal failed."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static queryProcessPss()V
    .locals 3

    .line 1221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 1225
    :try_start_0
    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssSystem:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssPrivateOther:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssGraphics:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssStack:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssCode:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssNativeHeap:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssJavaHeap:J

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pss:J

    .line 1226
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1227
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pss:J

    .line 1228
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.java-heap"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssJavaHeap:J

    .line 1229
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.native-heap"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssNativeHeap:J

    .line 1230
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.code"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssCode:J

    .line 1231
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.stack"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssStack:J

    .line 1232
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.graphics"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssGraphics:J

    .line 1233
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.private-other"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssPrivateOther:J

    .line 1234
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->dmi:Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "summary.system"

    invoke-static {v0, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/ngame/utility/SGameUtility;->pssSystem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryProcessPss error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static registerAudioObservers()V
    .locals 1

    .line 825
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 827
    invoke-static {v0}, Lcom/tencent/ngame/utility/AudioUtility;->registerVolumeChange(Landroid/app/Activity;)V

    .line 829
    invoke-static {v0}, Lcom/tencent/ngame/utility/AudioUtility;->registerHeadSetPlug(Landroid/app/Activity;)V

    return-void
.end method

.method public static saveCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "calendarName",
            "calendarColor",
            "title",
            "location",
            "notes",
            "startDate",
            "endDate",
            "alarmDate",
            "isAllDay",
            "urlString"
        }
    .end annotation

    .line 1167
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v10, Lcom/tencent/ngame/utility/SGameUtility$5;

    invoke-direct {v10}, Lcom/tencent/ngame/utility/SGameUtility$5;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->addCalendarEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-99###"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NatviceCallbackUtilGameObject"

    const-string v2, "saveCalendarCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static setActivityResultListener(Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 888
    sput-object p0, Lcom/tencent/ngame/utility/SGameUtility;->mActivityResultListener:Lcom/tencent/ngame/utility/SGameUtility$ActivityResultListener;

    return-void
.end method

.method public static setPermissionListener(Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 872
    sput-object p0, Lcom/tencent/ngame/utility/SGameUtility;->mPermissionListener:Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;

    return-void
.end method

.method public static setSavedIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 836
    sput-object p0, Lcom/tencent/ngame/utility/SGameUtility;->sSavedIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 838
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ngame/utility/SGameUtility;->isDeeplink(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/ngame/utility/SGameUtility;->sDeeplink:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static unregisterPowerSaveModeReceiver()V
    .locals 4

    .line 971
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 972
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeRegisterContext:Landroid/content/Context;

    return-void

    .line 976
    :cond_0
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeRegisterContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 978
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->getPowerSaveModeRegisterContext()Landroid/content/Context;

    move-result-object v0

    .line 982
    :cond_1
    const-string v2, "SGameUtility"

    if-eqz v0, :cond_2

    .line 983
    :try_start_0
    sget-object v3, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 985
    :cond_2
    const-string/jumbo v0, "unregister powerSaveModeReceiver skipped because context is null."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 988
    :goto_0
    const-string/jumbo v3, "unregister powerSaveModeReceiver failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    :goto_1
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    .line 992
    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility;->powerSaveModeRegisterContext:Landroid/content/Context;

    return-void
.end method
