.class public Lcom/intlgame/foundation/NDKHelper;
.super Ljava/lang/Object;
.source "NDKHelper.java"


# static fields
.field private static SO_NAME:Ljava/lang/String; = "INTLFoundation"

.field private static mActivity:Landroid/app/Activity; = null

.field protected static mIsLoadedSO:Z = false

.field private static mIsLoadingSO:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSOLoaded()Z
    .locals 2

    .line 48
    sget-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    const-string v0, "NDKHelper"

    const-string v1, "--------------------------------------------\n.so has not been loaded.  \n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static loadSO()Z
    .locals 4

    .line 24
    sget-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    const-string v1, "INTL"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadingSO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadingSO:Z

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "try to load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/intlgame/foundation/NDKHelper;->SO_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 28
    :try_start_0
    sget-object v2, Lcom/intlgame/foundation/NDKHelper;->SO_NAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    sput-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intlgame/foundation/NDKHelper;->SO_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so loading failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intlgame/foundation/NDKHelper;->SO_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so have been loaded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadingSO:Z

    .line 40
    sget-boolean v0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    return v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 59
    sput-object p0, Lcom/intlgame/foundation/NDKHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setSoLoadedFlag(Z)V
    .locals 0

    .line 44
    sput-boolean p0, Lcom/intlgame/foundation/NDKHelper;->mIsLoadedSO:Z

    return-void
.end method


# virtual methods
.method public generateUUID()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 89
    sget-object v0, Lcom/intlgame/foundation/NDKHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
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

.method public runOnUIThread(JI)V
    .locals 2

    .line 74
    sget-object v0, Lcom/intlgame/foundation/NDKHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/intlgame/foundation/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/intlgame/foundation/NDKHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/intlgame/foundation/NDKHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/intlgame/foundation/NDKHelper$1;-><init>(Lcom/intlgame/foundation/NDKHelper;JI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public native runOnUiThreadHandler(JI)V
.end method
