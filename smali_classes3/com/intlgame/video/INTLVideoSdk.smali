.class public Lcom/intlgame/video/INTLVideoSdk;
.super Ljava/lang/Object;
.source "INTLVideoSdk.java"


# static fields
.field public static final ERROR_CLASS_NOT_FOUND:I = 0x40

.field public static final ERROR_FILE_NOT_FOUND:I = 0x45

.field public static final ERROR_INTLFOUNDATION_NOT_INITED:I = 0x44

.field public static final ERROR_INTLVIDEO_SO_NOT_INITED:I = 0x43

.field public static final ERROR_INVALID_ARGUMENT:I = 0x47

.field public static final ERROR_JSON_FORMAT_ERROR:I = 0x41

.field public static final ERROR_NOT_INITED:I = 0x3e

.field public static final ERROR_NOT_SUPPORT:I = 0x3f

.field public static final ERROR_NO_TARGET_PALYER:I = 0x49

.field public static final ERROR_RECORDING_IN_PROGRESS:I = 0x46

.field public static final ERROR_TRY_CATCH_ERROR:I = 0x42

.field public static final ERROR_UNKNOWN:I = 0x3d

.field public static final ERROR_USER_CANCEL:I = 0x48

.field public static final EVENT_ALBUM_PERMISSION_REQUEST_ON_COMPLETE:I = 0x3c

.field public static final EVENT_IMAGE_SHARE_ON_COMPLETE:I = 0x33

.field public static final EVENT_IMAGE_SHARE_ON_PROGRESS:I = 0x34

.field public static final EVENT_IMAGE_SHARE_ON_START:I = 0x32

.field public static final EVENT_MOMENT_GENERATION_ON_COMPLETE:I = 0x25

.field public static final EVENT_MOMENT_GENERATION_ON_PROGRESS:I = 0x24

.field public static final EVENT_MOMENT_RECORD_ON_COMPLETE:I = 0x23

.field public static final EVENT_MOMENT_RECORD_ON_START:I = 0x22

.field public static final EVENT_NORMAL_RECORD_ON_COMPLETE:I = 0x21

.field public static final EVENT_NORMAL_RECORD_ON_START:I = 0x20

.field public static final EVENT_SCREEN_RECORDER_ON_COMPLETE:I = 0x1f

.field public static final EVENT_SCREEN_RECORDER_ON_START:I = 0x1e

.field public static final EVENT_VIDEO_PLAYER_ON_BUFFERING_END:I = 0xb

.field public static final EVENT_VIDEO_PLAYER_ON_BUFFERING_START:I = 0xa

.field public static final EVENT_VIDEO_PLAYER_ON_ERROR:I = 0xe

.field public static final EVENT_VIDEO_PLAYER_ON_FIRST_FRAME_SUCESS:I = 0x10

.field public static final EVENT_VIDEO_PLAYER_ON_PLAY:I = 0xc

.field public static final EVENT_VIDEO_PLAYER_ON_QUIT_FULL_SCREEN:I = 0xf

.field public static final EVENT_VIDEO_PLAYER_ON_STOP:I = 0xd

.field public static final EVENT_VIDEO_SHARE_ON_COMPLETE:I = 0x36

.field public static final EVENT_VIDEO_SHARE_ON_PROGRESS:I = 0x37

.field public static final EVENT_VIDEO_SHARE_ON_START:I = 0x35

.field public static final START_RECORD_FAILED:I = 0x0

.field public static final START_RECORD_RECORDING:I = 0x2

.field public static final START_RECORD_STARTING:I = 0x1

.field public static final START_RECORD_SUCCESS:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final VIDEO_QUALITY_HIGH:I = 0x0

.field public static final VIDEO_QUALITY_LOW:I = 0x1

.field private static mActivity:Landroid/app/Activity;

.field private static playerId:I

.field private static sVideoManager:Lcom/intlgame/video/INTLVideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelUpload(Ljava/lang/String;)I
    .locals 1

    .line 156
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 159
    :cond_0
    invoke-virtual {v0, p0}, Lcom/intlgame/video/INTLVideoManager;->cancelUpload(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getINTLVideoManager()Lcom/intlgame/video/INTLVideoManager;
    .locals 1

    .line 100
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    return-object v0
.end method

.method public static getSavedActivity()Landroid/app/Activity;
    .locals 1

    .line 92
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getTexture(I)I
    .locals 2

    .line 184
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1, p0}, Lcom/intlgame/video/INTLVideoManager;->getTexture(II)I

    move-result p0

    return p0
.end method

.method public static getVideoTotalDuration()J
    .locals 2

    .line 177
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 180
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoManager;->getVideoTotalDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static initialize(Landroid/app/Activity;)I
    .locals 2

    .line 72
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/intlgame/api/INTLSDK;->initialize(Landroid/app/Activity;)Z

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize intlvideosdk activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IVideoSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sput-object p0, Lcom/intlgame/video/INTLVideoSdk;->mActivity:Landroid/app/Activity;

    if-nez p0, :cond_1

    .line 79
    const-string p0, "initialize activity == null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    const-string p0, "initialize activity != null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-static {}, Lcom/intlgame/foundation/NDKHelper;->loadSO()Z

    move-result p0

    if-nez p0, :cond_2

    .line 85
    const-string p0, "INTLFoundation is not loaded!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x44

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isMomentRecording()Z
    .locals 1

    .line 244
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->isMomentRecording()Z

    move-result v0

    return v0
.end method

.method public static isNormalRecording()Z
    .locals 1

    .line 237
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->isNormalRecording()Z

    move-result v0

    return v0
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 251
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/intlgame/video/INTLVideoManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static playFullScreen(Ljava/lang/String;)I
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playFullScreen url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IVideoSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    invoke-virtual {v0, p0}, Lcom/intlgame/video/INTLVideoManager;->playFullScreen(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 198
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/intlgame/video/INTLVideoManager;->setActivityResult(IILandroid/content/Intent;)V

    .line 202
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1, p2}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->setActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    return-void
.end method

.method public static setINTLVideoManager()V
    .locals 1

    .line 96
    const-class v0, Lcom/intlgame/video/INTLVideoManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/video/INTLVideoManager;

    sput-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    return-void
.end method

.method public static startMomentRecord()I
    .locals 1

    .line 223
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->startMomentRecord()I

    move-result v0

    return v0
.end method

.method public static startNormalRecord()I
    .locals 1

    .line 209
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->startNormalRecord()I

    move-result v0

    return v0
.end method

.method public static startRecord(Ljava/lang/String;)I
    .locals 1

    .line 163
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    invoke-virtual {v0, p0}, Lcom/intlgame/video/INTLVideoManager;->startRecord(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static stopMomentRecord()I
    .locals 1

    .line 230
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->stopMomentRecord()I

    move-result v0

    return v0
.end method

.method public static stopNormalRecord()I
    .locals 1

    .line 216
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->stopNormalRecord()I

    move-result v0

    return v0
.end method

.method public static stopRecord()I
    .locals 1

    .line 170
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/intlgame/video/INTLVideoManager;->stopRecord()I

    move-result v0

    return v0
.end method

.method public static updateTexture()V
    .locals 2

    .line 191
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoManager;->updateTexture(I)V

    return-void
.end method

.method public static upload(Ljava/lang/String;)I
    .locals 1

    .line 149
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 152
    :cond_0
    invoke-virtual {v0, p0}, Lcom/intlgame/video/INTLVideoManager;->upload(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static videoPause()I
    .locals 2

    .line 128
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoManager;->videoPause(I)I

    move-result v0

    return v0
.end method

.method public static videoPlay(Ljava/lang/String;)I
    .locals 2

    .line 121
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1, p0}, Lcom/intlgame/video/INTLVideoManager;->videoPlay(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static videoResume()I
    .locals 2

    .line 135
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoManager;->videoResume(I)I

    move-result v0

    return v0
.end method

.method public static videoSeek(J)I
    .locals 2

    .line 114
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/intlgame/video/INTLVideoManager;->videoSeek(IJ)I

    move-result p0

    return p0
.end method

.method public static videoStop()I
    .locals 2

    .line 142
    sget-object v0, Lcom/intlgame/video/INTLVideoSdk;->sVideoManager:Lcom/intlgame/video/INTLVideoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    sget v1, Lcom/intlgame/video/INTLVideoSdk;->playerId:I

    invoke-virtual {v0, v1}, Lcom/intlgame/video/INTLVideoManager;->videoStop(I)I

    move-result v0

    return v0
.end method
