.class public Lcom/intlgame/video/INTLVideoManager;
.super Ljava/lang/Object;
.source "INTLVideoManager.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoShareControlCallback;


# static fields
.field private static final REQUEST_CODE_CONTACT:I = 0x65

.field private static final REQUEST_CODE_FILECHOOSER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "INTLVideoManager"

.field private static mRecorder:Lcom/intlgame/video/INTLVideoRecorder;


# instance fields
.field private cropHeight:I

.field private cropWidth:I

.field private mActivity:Landroid/app/Activity;

.field private mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

.field private mGmeVideoScreenRecordControlCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

.field private mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

.field private mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

.field private mIsInitial:Z

.field private mIsSoLoaded:Z

.field private mOriginalToResized:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/intlgame/video/INTLVideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;

.field private mResizedToOriginal:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

.field private mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

.field private mUploadRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUUIDRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVideoPlay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsSoLoaded:Z

    .line 52
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    .line 55
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mVideoPlay:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoScreenRecordControlCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    .line 66
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    const/16 v0, 0xba

    .line 77
    iput v0, p0, Lcom/intlgame/video/INTLVideoManager;->cropWidth:I

    const/16 v0, 0x5a

    .line 78
    iput v0, p0, Lcom/intlgame/video/INTLVideoManager;->cropHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/video/INTLVideoManager;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/video/INTLVideoPlayer;

    return-object p1
.end method

.method private initialize()I
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/intlgame/foundation/NDKHelper;->loadSO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "INTLFoundation is not loaded!"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const/16 v0, 0x44

    return v0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoManager;->loadLibs()V

    .line 101
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsSoLoaded:Z

    if-nez v0, :cond_2

    .line 102
    const-string v0, "INTLVideo is not loaded!"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const/16 v0, 0x43

    return v0

    .line 105
    :cond_2
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    .line 107
    invoke-static {}, Lcom/intlgame/video/INTLVideoSdk;->getSavedActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {v0}, Lcom/gme/video/sdk/IGmeVideoSDK;->getVideoShareControlInstance()Lcom/gme/video/sdk/IGmeVideoShareControl;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    .line 113
    invoke-virtual {v0, p0}, Lcom/gme/video/sdk/IGmeVideoShareControl;->setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V

    .line 116
    new-instance v0, Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-direct {v0}, Lcom/intlgame/video/INTLVideoFileStorage;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    .line 117
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoFileStorage;->initialize(Landroid/app/Activity;)I

    .line 118
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoFileStorage;->deleteTempDirectory()Z

    .line 120
    new-instance v0, Lcom/intlgame/video/INTLVideoRecorder;

    invoke-direct {v0}, Lcom/intlgame/video/INTLVideoRecorder;-><init>()V

    sput-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    .line 121
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0, v1, v2}, Lcom/intlgame/video/INTLVideoRecorder;->initialize(Landroid/app/Activity;Lcom/intlgame/video/INTLVideoFileStorage;)I

    .line 124
    const-string v0, "INTLVideoManager"

    const-string v1, "INTLVideoManager init OK!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadUUIDRecords:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mOriginalToResized:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    .line 132
    invoke-static {}, Lcom/intlgame/video/INTLVideoSdk;->setINTLVideoManager()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    const/4 v0, 0x0

    return v0
.end method

.method private loadLibs()V
    .locals 3

    .line 82
    :try_start_0
    const-string v0, "INTLVideo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    const-string v0, "WGRecorder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsSoLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    const-string v1, "INTLVideoManager"

    const-string v2, "loadLibrary INTLVideo failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static native nativePostEvent(IILjava/lang/String;)V
.end method

.method static native nativeSetVideoProgress(IJJ)V
.end method

.method private requestPermission()V
    .locals 3

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoManager;->checkAlbumPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoManager;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-static {v1, v0, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoManager;->validateWritePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoFileStorage;->moveOldVideosToStoredFolder()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resizedFileID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mRegion:Ljava/lang/String;

    const-string v1, "AWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mRegion:Ljava/lang/String;

    const-string v1, "AWS_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported region "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private validateWritePermission()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoFileStorage;->validateWritePermission()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelUpload(Ljava/lang/String;)I
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelUpload uuid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadUUIDRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 343
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadUUIDRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoShareControl;->cancelGenerateShareLink(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkAlbumPermission()Z
    .locals 7

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoManager;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 500
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 501
    iget-object v6, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v5}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public clearMomentVideo()I
    .locals 1

    .line 448
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoRecorder;->clearMomentVideo()I

    move-result v0

    return v0
.end method

.method public deleteVideo(Ljava/lang/String;)I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoFileStorage;->deleteVideo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableUnityMultithreadRender(Z)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableUnityMultithreadRender:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    iput-boolean p1, v0, Lcom/intlgame/video/INTLVideoRecorder;->enableUnityMultithreadRender:Z

    return-void
.end method

.method public generateMomentVideo(Ljava/lang/String;)I
    .locals 1

    .line 444
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoRecorder;->generateVideoForMoment(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAvailableDeviceSpace()J
    .locals 2

    .line 472
    invoke-static {}, Lcom/intlgame/video/INTLVideoUtils;->getAvailableDeviceSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceModelInfo()Ljava/lang/String;
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/intlgame/video/INTLVideoUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/intlgame/video/INTLVideoUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVersionInfo()Ljava/lang/String;
    .locals 1

    .line 480
    invoke-static {}, Lcom/intlgame/video/INTLVideoUtils;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 3

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 488
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    .line 492
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTexture(II)I
    .locals 0

    .line 362
    iget-boolean p2, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz p2, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/intlgame/video/INTLVideoPlayer;->getTexture()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method

.method public getVideoCount()I
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoFileStorage;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public getVideoInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoFileStorage;->getVideoInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVideoList()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoFileStorage;->getVideoList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTotalDuration(I)J
    .locals 2

    .line 350
    const-string v0, "INTLVideoManager"

    const-string v1, "getVideoTotalDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/intlgame/video/INTLVideoPlayer;->getFileDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x49

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3e

    return-wide v0
.end method

.method public initPlayer(I)I
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 174
    :cond_1
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer;

    invoke-direct {v0}, Lcom/intlgame/video/INTLVideoPlayer;-><init>()V

    .line 175
    invoke-virtual {v0, p1}, Lcom/intlgame/video/INTLVideoPlayer;->setPlayerId(I)V

    .line 176
    new-instance v2, Lcom/intlgame/video/INTLVideoPlayerEventHandler;

    invoke-direct {v2, p1, v0}, Lcom/intlgame/video/INTLVideoPlayerEventHandler;-><init>(ILcom/intlgame/video/INTLVideoPlayer;)V

    invoke-virtual {v0, v2}, Lcom/intlgame/video/INTLVideoPlayer;->setEventCallback(Lcom/intlgame/video/IINTLVideoPlayerEventCallback;)V

    .line 177
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoManager;->mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public initVideoManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "will initialize,this obj:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoManager;->initialize()I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    .line 146
    :cond_1
    iput-object p3, p0, Lcom/intlgame/video/INTLVideoManager;->mRegion:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {v0, p3}, Lcom/gme/video/sdk/IGmeVideoSDK;->setRegion(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_2

    return p3

    .line 151
    :cond_2
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoManager;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {p3, p1, p4, p2}, Lcom/gme/video/sdk/IGmeVideoSDK;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return p1

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {p1, p4}, Lcom/intlgame/video/INTLVideoFileStorage;->setOpenID(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isMomentRecording()Z
    .locals 1

    .line 429
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoRecorder;->isMomentRecording()Z

    move-result v0

    return v0
.end method

.method public isNormalRecording()Z
    .locals 1

    .line 425
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoRecorder;->isNormalRecording()Z

    move-result v0

    return v0
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onComplete filePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fileID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " region = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .line 683
    invoke-interface/range {v2 .. v8}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object p2, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 688
    iget-object p4, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_1

    .line 690
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mOriginalToResized:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_1
    const-string p1, "failed to upload resized image"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    invoke-virtual {p0, p2}, Lcom/intlgame/video/INTLVideoManager;->uploadPublicRead(Ljava/lang/String;)I

    return-void

    .line 699
    :cond_2
    :try_start_0
    new-instance v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;-><init>()V

    .line 700
    iput-object p1, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->filePath:Ljava/lang/String;

    .line 701
    iput-object p2, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->uuid:Ljava/lang/String;

    .line 702
    iput-object p3, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->fileId:Ljava/lang/String;

    .line 703
    iput-object p4, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->region:Ljava/lang/String;

    int-to-long v1, p5

    .line 704
    iput-wide v1, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->errorCode:J

    .line 705
    iput-object p6, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->errorInfo:Ljava/lang/String;

    .line 706
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p6

    if-nez p5, :cond_3

    .line 710
    iget-object p5, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {p5, p2, p4, p1}, Lcom/intlgame/video/INTLVideoFileStorage;->saveFileID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_3
    iget-object p4, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    const/16 p5, 0x36

    if-nez p4, :cond_4

    .line 715
    sget-object p3, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p3}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p3

    invoke-static {p3, p5, p6}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_2

    .line 717
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 718
    iget-object p4, p0, Lcom/intlgame/video/INTLVideoManager;->mOriginalToResized:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_5

    .line 720
    iput-object p3, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->resizedFileId:Ljava/lang/String;

    goto :goto_1

    .line 722
    :cond_5
    iput-object p4, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->resizedFileId:Ljava/lang/String;

    .line 723
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoManager;->mOriginalToResized:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :goto_1
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object p3

    .line 726
    sget-object p4, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p4}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p4

    const/16 p5, 0x33

    invoke-static {p4, p5, p3}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_2

    .line 729
    :cond_6
    sget-object p3, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p3}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p3

    invoke-static {p3, p5, p6}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    .line 732
    :goto_2
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadUUIDRecords:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "nativePostEvent exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onProgress(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgress filePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uploadBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 754
    invoke-interface/range {v2 .. v8}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onProgress(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    const-string/jumbo p1, "uploading resized image. skip callback"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 763
    :cond_1
    :try_start_0
    new-instance v0, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;-><init>()V

    .line 764
    iput-object p1, v0, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;->filePath:Ljava/lang/String;

    .line 765
    iput-object p2, v0, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;->uuid:Ljava/lang/String;

    .line 766
    iput-wide p3, v0, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;->uploadBytes:J

    .line 767
    iput-wide p5, v0, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;->totalBytes:J

    .line 768
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoUploadProgressMessage;->toJSONString()Ljava/lang/String;

    move-result-object p2

    .line 770
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/16 p3, 0x37

    if-nez p1, :cond_2

    .line 772
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    invoke-static {p1, p3, p2}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 775
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p3, 0x34

    invoke-static {p1, p3, p2}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_3
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    invoke-static {p1, p3, p2}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 782
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "nativePostEvent exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onQuitFullScreen()V
    .locals 3

    .line 876
    sget-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v0}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v0

    const/16 v1, 0xf

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 556
    :try_start_0
    new-instance p1, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;

    invoke-direct {p1}, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;-><init>()V

    .line 558
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoManager;->checkAlbumPermission()Z

    move-result v0

    iput-boolean v0, p1, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;->result:Z

    .line 559
    invoke-virtual {p1}, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-boolean p1, p1, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;->result:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoManager;->validateWritePermission()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLVideoFileStorage;->moveOldVideosToStoredFolder()V

    :cond_0
    const/4 p1, 0x0

    .line 564
    :goto_0
    array-length v1, p3

    if-ge p1, v1, :cond_1

    .line 565
    const-string/jumbo v1, "testRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission grantResults: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 567
    :cond_1
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_REQUEST_ALBUN_PERMISSION:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0x3c

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 570
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "nativePostEvent exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart filePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0, p1, p2}, Lcom/gme/video/sdk/IGmeVideoShareControlCallback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const-string p1, "start to upload resized image. skip callback"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 653
    :cond_1
    :try_start_0
    new-instance v0, Lcom/intlgame/video/model/INTLVideoUploadStartMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoUploadStartMessage;-><init>()V

    .line 654
    iput-object p1, v0, Lcom/intlgame/video/model/INTLVideoUploadStartMessage;->filePath:Ljava/lang/String;

    .line 655
    iput-object p2, v0, Lcom/intlgame/video/model/INTLVideoUploadStartMessage;->uuid:Ljava/lang/String;

    .line 656
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoUploadStartMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadUUIDRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object p2, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/16 p2, 0x35

    if-nez p1, :cond_2

    .line 661
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 664
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    const/16 p2, 0x32

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_3
    sget-object p1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {p1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 671
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "nativePostEvent exception"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public playFullScreen(Ljava/lang/String;)I
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playFullScreen url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x3e

    return p1
.end method

.method public requestAlbumPermission()I
    .locals 3

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoManager;->checkAlbumPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/intlgame/video/INTLVideoManager;->requestPermission()V

    goto :goto_0

    .line 538
    :cond_0
    :try_start_0
    new-instance v0, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;-><init>()V

    const/4 v1, 0x1

    .line 540
    iput-boolean v1, v0, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;->result:Z

    .line 541
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoRequestAlbumPermissionCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_REQUEST_ALBUN_PERMISSION:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v1}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v1, v2, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativePostEvent exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectPhotoFromAlbum(III)I
    .locals 1

    .line 627
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iput p2, p0, Lcom/intlgame/video/INTLVideoManager;->cropWidth:I

    .line 631
    iput p3, p0, Lcom/intlgame/video/INTLVideoManager;->cropHeight:I

    .line 634
    iget-object p2, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setActivityResult(IILandroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 798
    const-string v3, " kb"

    const-string v4, " with size "

    .line 0
    const-string v5, "get bitmap width:"

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setActivityResult requestCode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " resultCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "INTLVideoManager"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v0, -0x1

    .line 802
    const-string v8, "nativePostEvent exception"

    if-ne v2, v0, :cond_3

    if-eqz p3, :cond_4

    .line 805
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 813
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 814
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 815
    iget-object v9, v1, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    .line 816
    invoke-static {v9, v10, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    .line 817
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 818
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 819
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 820
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xbb8

    if-gt v9, v5, :cond_0

    if-le v2, v5, :cond_1

    .line 827
    :cond_0
    :goto_0
    div-int v11, v9, v6

    if-ge v11, v5, :cond_2

    div-int v11, v2, v6

    if-lt v11, v5, :cond_1

    goto/16 :goto_1

    .line 832
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset bitmap inSampleSize:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 835
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 836
    iget-object v5, v1, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    .line 837
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v10, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 840
    iget-object v11, v1, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    const-string/jumbo v14, "upload_image"

    const/16 v15, 0x96

    const/16 v16, 0x400

    const/4 v13, 0x1

    move-object v12, v0

    invoke-virtual/range {v11 .. v16}, Lcom/intlgame/video/INTLVideoFileStorage;->saveBitmapToLocal(Landroid/graphics/Bitmap;ZLjava/lang/String;II)Ljava/io/File;

    move-result-object v2

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save image to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v18, 0x400

    div-long v9, v9, v18

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v11, v1, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    const-string/jumbo v14, "upload_image_resized"

    iget v5, v1, Lcom/intlgame/video/INTLVideoManager;->cropWidth:I

    iget v6, v1, Lcom/intlgame/video/INTLVideoManager;->cropHeight:I

    const/4 v13, 0x1

    const/16 v15, 0x96

    move-object v12, v0

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lcom/intlgame/video/INTLVideoFileStorage;->saveBitmapToLocal(Landroid/graphics/Bitmap;ZLjava/lang/String;III)Ljava/io/File;

    move-result-object v0

    .line 847
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save resized image to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    div-long v9, v9, v18

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v3, v1, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/intlgame/video/INTLVideoManager;->uploadPublicRead(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    :goto_1
    mul-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    const-wide/16 v2, 0x48

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v2, 0x3d

    .line 863
    :goto_3
    :try_start_1
    new-instance v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;

    invoke-direct {v0}, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;-><init>()V

    .line 864
    iput-wide v2, v0, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->errorCode:J

    .line 865
    invoke-virtual {v0}, Lcom/intlgame/video/model/INTLVideoUploadCompleteMessage;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 866
    sget-object v2, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v2}, Lcom/intlgame/video/INTLServiceId;->getValue()I

    move-result v2

    const/16 v3, 0x33

    invoke-static {v2, v3, v0}, Lcom/intlgame/video/INTLVideoManager;->nativePostEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method

.method public setAutoPlay(IZ)I
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 895
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 897
    invoke-virtual {p1, p2}, Lcom/intlgame/video/INTLVideoPlayer;->setAutoPlay(Z)I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x49

    return p1
.end method

.method public setGmeVideoScreenRecordControlCallback(Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoScreenRecordControlCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    return-void
.end method

.method public setLoopback(IZ)I
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 884
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 886
    invoke-virtual {p1, p2}, Lcom/intlgame/video/INTLVideoPlayer;->setLoopback(Z)I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x49

    return p1
.end method

.method public setPlayerVolume(IF)I
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 906
    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 908
    invoke-virtual {p1, p2}, Lcom/intlgame/video/INTLVideoPlayer;->setPlayVolume(F)I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x49

    return p1
.end method

.method public setVideoQuality(I)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVideoQuality:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    iput p1, v0, Lcom/intlgame/video/INTLVideoRecorder;->videoQuality:I

    return-void
.end method

.method public setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mGmeVideoShareControlCallback:Lcom/gme/video/sdk/IGmeVideoShareControlCallback;

    return-void
.end method

.method public startMomentRecord()I
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startMomentRecord , this obj:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoRecorder;->startRecord(Z)I

    move-result v0

    return v0
.end method

.method public startNormalRecord()I
    .locals 2

    .line 414
    const-string v0, "INTLVideoManager"

    const-string/jumbo v1, "startNormalRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoRecorder;->startRecord(Z)I

    move-result v0

    return v0
.end method

.method public startRecord(Ljava/lang/String;)I
    .locals 12

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startRecord filePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 190
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startRecord metrics.widthPixels = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " metrics.heightPixels = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoManager;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    iget-object v5, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v0, v2

    int-to-double v8, v0

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double v8, v8, v10

    double-to-int v8, v8

    const v10, 0xbb80

    const/4 v11, 0x2

    const/16 v9, 0x1e

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->startRecord(Ljava/lang/String;Landroid/app/Activity;IIIIII)I

    move-result p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startRecord result = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const/16 p1, 0x3e

    return p1
.end method

.method public stopMomentRecord()I
    .locals 2

    .line 438
    const-string v0, "INTLVideoManager"

    const-string/jumbo v1, "stopMomentRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoRecorder;->stopRecord(Z)I

    return v1
.end method

.method public stopNormalRecord()I
    .locals 2

    .line 419
    const-string v0, "INTLVideoManager"

    const-string/jumbo v1, "stopNormalRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/intlgame/video/INTLVideoManager;->mRecorder:Lcom/intlgame/video/INTLVideoRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoRecorder;->stopRecord(Z)I

    const/4 v0, 0x0

    return v0
.end method

.method public stopRecord()I
    .locals 2

    .line 212
    const-string v0, "INTLVideoManager"

    const-string/jumbo v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->stopRecord(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3e

    return v0
.end method

.method public updateTexture(I)V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_2

    .line 374
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->isUrlValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->createSurface()V

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init a new player ,id :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INTLVideoManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/intlgame/video/INTLVideoManager$1;

    invoke-direct {v1, p0, v0}, Lcom/intlgame/video/INTLVideoManager$1;-><init>(Lcom/intlgame/video/INTLVideoManager;Lcom/intlgame/video/INTLVideoPlayer;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->updateTexture()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateVideoTitle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v0, p1, p2}, Lcom/intlgame/video/INTLVideoFileStorage;->updateVideoTitle(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public upload(Ljava/lang/String;)I
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload localPath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoManager;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/IGmeVideoShareControl;->generateShareLink(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public uploadPhotoFromSandbox(Ljava/lang/String;II)I
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    .line 582
    const-string v2, "INTLVideoManager"

    .line 0
    const-string v3, "get bitmap width:"

    .line 582
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 583
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 584
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 585
    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 586
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x0

    .line 587
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 588
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 589
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 590
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xbb8

    if-gt v8, v3, :cond_0

    if-le v4, v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    div-int v9, v8, v5

    if-ge v9, v3, :cond_2

    div-int v9, v4, v5

    if-lt v9, v3, :cond_1

    goto :goto_1

    .line 601
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset bitmap inSampleSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 604
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 605
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-static {v4, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 607
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 608
    iget-object v8, v1, Lcom/intlgame/video/INTLVideoManager;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    const-string/jumbo v11, "upload_image_resized"

    const/16 v12, 0x96

    const/4 v10, 0x1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lcom/intlgame/video/INTLVideoFileStorage;->saveBitmapToLocal(Landroid/graphics/Bitmap;ZLjava/lang/String;III)Ljava/io/File;

    move-result-object v3

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save resized image to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v2, v1, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/video/INTLVideoManager;->uploadPublicRead(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_2
    :goto_1
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x3d

    return v0

    :catch_1
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v0, 0x45

    return v0
.end method

.method public uploadPublicRead(Ljava/lang/String;)I
    .locals 4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploadPublicRead localPath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    return p1

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const-string v0, "image/png"

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, ""

    .line 328
    :goto_0
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoManager;->mResizedToOriginal:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 329
    const-string v2, "attempt to upload resized image. skip adding to upload records"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mUploadRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :goto_1
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    invoke-virtual {v1, p1, v3, v0}, Lcom/gme/video/sdk/IGmeVideoShareControl;->generateShareLink(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public videoPause(I)I
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoPause,playerId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/intlgame/video/INTLVideoPlayer;->pause()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method

.method public videoPlay(ILjava/lang/String;)I
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoPlay url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1, v0, p2}, Lcom/intlgame/video/INTLVideoPlayer;->setVideoUrl(ILjava/lang/String;)V

    .line 252
    invoke-virtual {p1, v0}, Lcom/intlgame/video/INTLVideoPlayer;->setPlayQuality(I)V

    return v0

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method

.method public videoResume(I)I
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoResume,playerId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/intlgame/video/INTLVideoPlayer;->resume()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method

.method public videoSeek(IJ)I
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    long-to-int p3, p2

    .line 235
    invoke-virtual {p1, p3}, Lcom/intlgame/video/INTLVideoPlayer;->seek(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method

.method public videoStop(I)I
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoStop,playerId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoManager;->mIsInitial:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoManager;->getPlayer(I)Lcom/intlgame/video/INTLVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoManager;->mPlayersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->stop()I

    move-result p1

    .line 291
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoPlayer;->deInit()V

    return p1

    :cond_0
    const/16 p1, 0x49

    return p1

    :cond_1
    const/16 p1, 0x3e

    return p1
.end method
