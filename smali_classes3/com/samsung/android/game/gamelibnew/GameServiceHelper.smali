.class public Lcom/samsung/android/game/gamelibnew/GameServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;,
        Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;,
        Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameServiceHelper"


# instance fields
.field private mBindListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;

.field private mContext:Landroid/content/Context;

.field private mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

.field private mListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToTGPACallback:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mToTGPACallback:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;

    new-instance v0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$1;-><init>(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;Lcom/samsung/android/game/tsdk/ISceneSdkService;)Lcom/samsung/android/game/tsdk/ISceneSdkService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mToTGPACallback:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

    return-object p0
.end method


# virtual methods
.method public applyHardwareResource(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "GameServiceHelper"

    const-string v0, "game service is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->applyHardwareResource(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public applyThreadGuarantee(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "GameServiceHelper"

    const-string v0, "game service is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->applyThreadGuarantee(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public bind(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.samsung.android.game.gos"

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "GameServiceHelper"

    if-eqz p1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "New package doesn\'t exist."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.enhance.gameservice"

    :goto_0
    const-string/jumbo p1, "targetPkgName: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.tsdk.SceneSdkService"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bindService. ret: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getVendorSupportStrategy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const-string v1, "ERROR"

    if-nez v0, :cond_0

    const-string p1, "GameServiceHelper"

    const-string v0, "game service is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->getVendorSupportStrategy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public getVersion()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->getVersion()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public init()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->initSceneSdk()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public initLowLatencyIPC(Ljava/lang/String;Lcom/samsung/android/game/compatibility/SharedMemory;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, -0x1

    const-string v2, "GameServiceHelper"

    if-nez v0, :cond_0

    const-string p1, "game service is not available"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->initLowLatencyIPC(Ljava/lang/String;Lcom/samsung/android/game/compatibility/SharedMemory;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "game service remote exception"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public registerBindListener(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$BindListener;

    return-void
.end method

.method public registerListener(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;)Z
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->setSceneSdkListener(Lcom/samsung/android/game/tsdk/ISceneSdkListener;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_0
    new-instance p1, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;-><init>(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->setSceneSdkListener(Lcom/samsung/android/game/tsdk/ISceneSdkListener;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public registerToTGPACallback(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;F)I
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mToTGPACallback:Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "GameServiceHelper"

    const-string p2, "game service is not available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->registerToTGPACallback(Lcom/samsung/android/game/tsdk/IToTGPACallback;F)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$2;-><init>(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)V

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->registerToTGPACallback(Lcom/samsung/android/game/tsdk/IToTGPACallback;F)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public totgpa()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const-string v1, "ERROR"

    if-nez v0, :cond_0

    const-string v0, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->totgpa()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public unbind()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unbind can\'t be called. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateGameInfo(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tsdk/ISceneSdkService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "GameServiceHelper"

    const-string v0, "game service is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/game/tsdk/ISceneSdkService;->updateGameInfo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
