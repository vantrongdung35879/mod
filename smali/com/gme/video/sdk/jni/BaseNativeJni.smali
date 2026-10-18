.class public Lcom/gme/video/sdk/jni/BaseNativeJni;
.super Ljava/lang/Object;
.source "BaseNativeJni.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseNativeJni"

.field private static sLogCallback:Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;


# instance fields
.field mEditControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

.field mEditControlGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cancelDownloadFile(Ljava/lang/String;)I
.end method

.method public static native cancelUploadFile(Ljava/lang/String;)I
.end method

.method public static native downloadFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native enableLogBack(Z)V
.end method

.method public static getDefaultDir()Ljava/lang/String;
    .locals 3

    .line 100
    :try_start_0
    invoke-static {}, Lcom/gme/video/sdk/impl/GmeVideoContext;->get()Lcom/gme/video/sdk/impl/GmeVideoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gme/video/sdk/impl/GmeVideoContext;->getCtx()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    sget-object v0, Lcom/gme/video/sdk/jni/BaseNativeJni;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDefaultDir context is null"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static native getSDKVersion()Ljava/lang/String;
.end method

.method public static native initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static onLogCall(Ljava/lang/String;I)V
    .locals 1

    .line 166
    sget-object v0, Lcom/gme/video/sdk/jni/BaseNativeJni;->sLogCallback:Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0, p1}, Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;->onLogCallMsg(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setLogCallback(Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;)V
    .locals 0

    .line 160
    sput-object p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->sLogCallback:Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 161
    :goto_0
    invoke-static {p0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->enableLogBack(Z)V

    return-void
.end method

.method public static native setLogLevel(II)V
.end method

.method public static native setRegion(Ljava/lang/String;)I
.end method

.method public static native uploadFile(Ljava/lang/String;ZLjava/lang/String;)I
.end method

.method public static native writeLog(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public native getBGMDuration(Ljava/lang/String;)J
.end method

.method public native getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
.end method

.method public native initCallback()V
.end method

.method public onGenerateComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGenerateProgress(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;->onProgress(I)V

    :cond_0
    return-void
.end method

.method public onPreviewBuffer([BIII)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewBuffer([BIII)V

    :cond_0
    return-void
.end method

.method public onPreviewFinished()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewFinished()V

    :cond_0
    return-void
.end method

.method public onPreviewProgress(J)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1, p2}, Lcom/gme/video/sdk/IGmeVideoEditControlCallback;->onPreviewProgress(J)V

    :cond_0
    return-void
.end method

.method public native pauseGenerate()V
.end method

.method public native pausePreview()V
.end method

.method public native resumeGenerate()V
.end method

.method public native resumePreview()V
.end method

.method public native setBGM(Ljava/lang/String;)V
.end method

.method public native setBGMAtVideoTime(J)V
.end method

.method public native setBGMLoop(Z)V
.end method

.method public native setBGMTime(JJ)V
.end method

.method public native setBGMVideoVolume(F)V
.end method

.method public native setBGMVolume(F)V
.end method

.method public setEditControlCallback(Lcom/gme/video/sdk/IGmeVideoEditControlCallback;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlCallback:Lcom/gme/video/sdk/IGmeVideoEditControlCallback;

    return-void
.end method

.method public setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/gme/video/sdk/jni/BaseNativeJni;->mEditControlGenerateCallback:Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    return-void
.end method

.method public native setRepeatConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setReverse(Z)V
.end method

.method public native setSpeedConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setVideoPath(Ljava/lang/String;)I
.end method

.method public native startGenerate(Ljava/lang/String;Z)V
.end method

.method public native startPreview(JJ)V
.end method

.method public native stopGenerate()V
.end method

.method public native stopPreview()V
.end method

.method public native unInit()V
.end method
