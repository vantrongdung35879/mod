.class public Lcom/garena/game/playfeaturedelivery/PFDManager;
.super Ljava/lang/Object;
.source "PFDManager.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PFDManager"


# instance fields
.field private final MY_REQUEST_CODE:I

.field private mCurrentSessionid:I

.field private splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 31
    iput-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    const/16 v0, 0x12

    .line 32
    iput v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->MY_REQUEST_CODE:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->mCurrentSessionid:I

    return-void
.end method

.method private initSplitInstallManager()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 54
    invoke-interface {v0, p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelInstall(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelInstall, sessionId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    .line 72
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;I)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda5;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;I)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public checkBridge(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz v0, :cond_0

    .line 43
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onSuccess(ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    invoke-interface {v0, p1, v1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onFailure(ILjava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    const-wide/16 v7, 0x3

    const/4 v9, 0x4

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    move v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onStateUpdate(IIJJI)V

    .line 46
    iget-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v0}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCheckSessionStateComplete(II)V

    .line 47
    iget-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    const-string v0, "modules"

    invoke-interface {p1, v0}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onDeferredInstallComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkSessionState()V
    .locals 2

    .line 232
    const-string v0, "PFDManager"

    const-string v1, "checkSessionState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    .line 235
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 236
    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getSessionStates()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda0;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda2;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda3;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public deferredInstall(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleNames"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startUpdate, moduleName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    .line 198
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 201
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 204
    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredInstall(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda6;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda7;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda8;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    :cond_0
    return-void
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libraryName"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "findLibrary, libraryName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, ""

    .line 264
    :try_start_0
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v2, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "findLibrary, path:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getInstalledModules()Ljava/lang/String;
    .locals 4

    .line 218
    const-string v0, "PFDManager"

    const-string v1, "getInstalledModules"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    .line 221
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method synthetic lambda$cancelInstall$0$com-garena-game-playfeaturedelivery-PFDManager(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sessionId",
            "unused"
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz p2, :cond_0

    .line 76
    invoke-interface {p2, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCancelInstallSuccess(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$cancelInstall$1$com-garena-game-playfeaturedelivery-PFDManager(ILjava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sessionId",
            "e"
        }
    .end annotation

    .line 81
    instance-of v0, p2, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v1, -0x6

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p2

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x6

    .line 84
    :goto_0
    instance-of p2, p2, Landroid/os/RemoteException;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 88
    :goto_1
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz p2, :cond_2

    .line 89
    invoke-interface {p2, v1, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCancelInstallFailure(II)V

    :cond_2
    return-void
.end method

.method synthetic lambda$checkSessionState$10$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSessionState addOnFailureListener e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCheckSessionStateFailure(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$checkSessionState$8$com-garena-game-playfeaturedelivery-PFDManager(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "task"
        }
    .end annotation

    .line 238
    const-string v0, "checkForActiveDownloads OnComplete"

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " state.status()\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    invoke-interface {v2, v3, v0}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCheckSessionStateComplete(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic lambda$checkSessionState$9$com-garena-game-playfeaturedelivery-PFDManager(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "splitInstallSessionStates"
        }
    .end annotation

    .line 247
    const-string p1, "PFDManager"

    const-string v0, "checkSessionState addOnSuccessListener"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz p1, :cond_0

    .line 249
    invoke-interface {p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onCheckSessionStateSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deferredInstall$5$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "moduleNames",
            "task"
        }
    .end annotation

    .line 206
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    invoke-interface {p2, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onDeferredInstallComplete(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$deferredInstall$6$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "moduleNames",
            "unused"
        }
    .end annotation

    .line 209
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    invoke-interface {p2, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onDeferredInstallSuccess(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$deferredInstall$7$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "moduleNames",
            "e"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    check-cast p2, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {p2}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result p2

    invoke-interface {v0, p2, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onDeferredInstallFailure(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startUpdate$2$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "moduleNames",
            "task"
        }
    .end annotation

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "task Complete: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->mCurrentSessionid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PFDManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string p2, "onSuccess: "

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz p2, :cond_0

    .line 111
    iget v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->mCurrentSessionid:I

    invoke-interface {p2, v0, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onSuccess(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$startUpdate$3$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect gp onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->mCurrentSessionid:I

    return-void
.end method

.method synthetic lambda$startUpdate$4$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "moduleNames",
            "e"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PFDManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    instance-of v0, p2, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v3, -0x6

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p2

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x6

    .line 128
    :goto_0
    instance-of p2, p2, Landroid/os/RemoteException;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 132
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p2, v3, p1}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onFailure(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "librariesName"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadLibrary, librariesName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 283
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 284
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 285
    invoke-static {v0, v3}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateUpdate:  sessionId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v9

    invoke-interface/range {v2 .. v9}, Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;->onStateUpdate(IIJJI)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_3

    .line 343
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v2

    .line 304
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onStateUpdate: \u4e0b\u8f7d\u4e2d: totalBytes:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\t progress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method

.method public registerUnityInterface(Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->unityProxyInterface:Lcom/garena/game/playfeaturedelivery/UnityProxyInterface;

    .line 37
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    return-void
.end method

.method public startUpdate(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleNames"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startUpdate, moduleName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PFDManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/garena/game/playfeaturedelivery/PFDManager;->initSplitInstallManager()V

    .line 99
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v1

    .line 101
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 102
    invoke-virtual {v1, v4}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 106
    invoke-interface {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda9;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda10;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;-><init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
