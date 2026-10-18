.class public Lcom/intlgame/video/INTLVideoRecorder;
.super Ljava/lang/Object;
.source "INTLVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;,
        Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;,
        Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;
    }
.end annotation


# static fields
.field private static final MAX_PCM_FRAME_LENGTH:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "INTLVideoMomentRecord"


# instance fields
.field private audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

.field public enableUnityMultithreadRender:Z

.field public isUseNormalRecord:Z

.field private mActivity:Landroid/app/Activity;

.field public mBitPerSample:I

.field public mChannels:I

.field private mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

.field private mFilePath:Ljava/lang/String;

.field private mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

.field private mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

.field public mIsRecording:Z

.field public mIsWaitingRecordCallback:Z

.field private mJniHandler:J

.field private mMomentSourceFilePath:Ljava/lang/String;

.field private mPcmBuffer:[S

.field private mPcmByteBuffer:Ljava/nio/ByteBuffer;

.field public mSampleRate:I

.field public mSamplesPerFrame:S

.field private mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

.field private mThread:Ljava/lang/Thread;

.field private mVideoTitle:Ljava/lang/String;

.field private videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

.field public videoQuality:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    .line 51
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsWaitingRecordCallback:Z

    .line 52
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    .line 55
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    .line 56
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    .line 57
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    .line 58
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    .line 61
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mMomentSourceFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 65
    iput v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoQuality:I

    const-wide/16 v2, -0x1

    .line 68
    iput-wide v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    .line 75
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmBuffer:[S

    .line 77
    iput-boolean v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->enableUnityMultithreadRender:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/video/INTLVideoRecorder;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/video/INTLVideoRecorder;)[S
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmBuffer:[S

    return-object p0
.end method

.method static synthetic access$202(Lcom/intlgame/video/INTLVideoRecorder;[S)[S
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmBuffer:[S

    return-object p1
.end method

.method static synthetic access$300(Lcom/intlgame/video/INTLVideoRecorder;[S)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoRecorder;->feedAudioData([S)V

    return-void
.end method

.method static synthetic access$400(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/intlgame/video/INTLVideoFileStorage;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    return-object p0
.end method

.method static synthetic access$500(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/intlgame/video/INTLVideoRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/intlgame/video/INTLVideoRecorder;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/intlgame/video/INTLVideoRecorder;->saveVideoInfo(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/intlgame/video/INTLVideoRecorder;)Lcom/gme/video/sdk/IGmeVideoEditControl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    return-object p0
.end method

.method private feedAudioData([S)V
    .locals 4

    .line 157
    const-string v0, "INTLVideoMomentRecord"

    if-nez p1, :cond_0

    .line 158
    const-string p1, "feedAudioData -> buffer is null  "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->feedAudioData([SJ)I

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "feedAudioData  errorCode ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private saveVideoInfo(Z)V
    .locals 11

    .line 336
    const-string v0, "INTLVideoMomentRecord"

    const-string v1, ""

    .line 0
    const-string v2, "saveVideoInfo"

    .line 336
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gme/video/sdk/IGmeVideoEditControl;->getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoInfo;

    move-result-object v2

    .line 338
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 339
    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getCoverImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 340
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v10, v4, 0x2

    .line 341
    iget-object v5, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getCoverImage()Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v8, "cover_image"

    const/16 v9, 0xa

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/intlgame/video/INTLVideoFileStorage;->saveBitmapToLocal(Landroid/graphics/Bitmap;ZLjava/lang/String;II)Ljava/io/File;

    move-result-object v4

    .line 343
    const-string v5, "cover_image"

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v4, "cover_image_id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v4, "cover_image_region"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v4, "create_ts"

    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getCreateTimeStamp()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 347
    const-string v4, "duration"

    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getDurationMs()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 348
    const-string v4, "is_normal"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string p1, "size"

    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 350
    const-string p1, "md5"

    invoke-virtual {v2}, Lcom/gme/video/sdk/GmeVideoInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mVideoTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "title"

    if-nez p1, :cond_1

    .line 353
    :try_start_1
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 356
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mVideoTitle:Ljava/lang/String;

    .line 358
    :goto_1
    const-string/jumbo p1, "url"

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string/jumbo p1, "url_id"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string/jumbo p1, "url_region"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {p1, v3}, Lcom/intlgame/video/INTLVideoFileStorage;->saveVideoData(Lorg/json/JSONObject;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativePostEvent exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private setAudioConfig(III)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAudioConfig  channels "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitPerSample = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mChannels:I

    .line 145
    iput p2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mSampleRate:I

    .line 146
    iput p3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mBitPerSample:I

    return-void
.end method

.method private setSamplesPerFrame(S)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "samplesPerFrame = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-short p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mSamplesPerFrame:S

    return-void
.end method


# virtual methods
.method public clearMomentVideo()I
    .locals 3

    .line 325
    const-string v0, "clearMomentVideo"

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mMomentSourceFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    invoke-virtual {v2, v0}, Lcom/intlgame/video/INTLVideoFileStorage;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mMomentSourceFilePath:Ljava/lang/String;

    .line 329
    const-string v0, "mMomentSourceFilePath=nil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public generateVideoForMoment(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 268
    const-string v2, "INTLVideoMomentRecord"

    .line 0
    const-string v3, "generateVideoForMoment"

    .line 268
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0x45

    return v0

    .line 276
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "timestamps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 280
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 281
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 282
    new-instance v8, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;

    invoke-direct {v8}, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;-><init>()V

    .line 284
    const-string v9, "start"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 285
    const-string v11, "end"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v13, v11, v9

    const-wide/16 v15, 0x3e8

    cmp-long v7, v13, v15

    if-gez v7, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    iput-wide v9, v8, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->startTimeMs:J

    .line 292
    iput-wide v11, v8, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->endTimeMs:J

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateVideoForMoment.node"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " start: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " end: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/intlgame/video/INTLVideoRecorder;->clearMomentVideo()I

    const/16 v0, 0x47

    return v0

    .line 303
    :cond_3
    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/intlgame/video/INTLVideoRecorder;->mVideoTitle:Ljava/lang/String;

    .line 305
    iget-object v0, v1, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    .line 307
    invoke-virtual {v6, v5}, Lcom/intlgame/video/INTLVideoFileStorage;->getExternalStorageDirectory(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".mp4"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    iput-object v3, v1, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    .line 309
    iput-object v0, v1, Lcom/intlgame/video/INTLVideoRecorder;->mMomentSourceFilePath:Ljava/lang/String;

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateVideoForMoment.sourceFilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "destinationFilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v2, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    invoke-direct {v2, v4}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;-><init>(Ljava/util/List;)V

    .line 313
    invoke-virtual {v2, v0, v3}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->videoPath(Ljava/lang/String;Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->build()Lcom/gme/video/sdk/GmeVideoGeneratorParam;

    move-result-object v0

    .line 315
    iget-object v2, v1, Lcom/intlgame/video/INTLVideoRecorder;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    invoke-virtual {v2, v0}, Lcom/gme/video/sdk/IGmeVideoEditControl;->startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public native getAudioConfig()V
.end method

.method public native getPCMData(JLjava/nio/ByteBuffer;)I
.end method

.method public native init()J
.end method

.method public initialize(Landroid/app/Activity;Lcom/intlgame/video/INTLVideoFileStorage;)I
    .locals 3

    .line 115
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mActivity:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    .line 117
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoSDK;->getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;

    move-result-object p2

    iput-object p2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    .line 118
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->NONE:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    sget-object v1, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->DEBUG:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    invoke-virtual {p2, v0, v1}, Lcom/gme/video/sdk/IGmeVideoSDK;->setLogLevel(Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;)V

    .line 119
    iget-object p2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gme/video/sdk/IGmeVideoSDK;->setContext(Landroid/content/Context;)V

    .line 120
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {p1}, Lcom/gme/video/sdk/IGmeVideoSDK;->getScreenRecordControlInstance()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    .line 121
    new-instance p2, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;

    invoke-direct {p2, p0}, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoScreenRecordCallback;-><init>(Lcom/intlgame/video/INTLVideoRecorder;)V

    invoke-virtual {p1, p2}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->setScreenRecordCallBack(Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;)V

    .line 122
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIGmeVideoSDK:Lcom/gme/video/sdk/IGmeVideoSDK;

    invoke-virtual {p1}, Lcom/gme/video/sdk/IGmeVideoSDK;->getEditControlInstance()Lcom/gme/video/sdk/IGmeVideoEditControl;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    .line 123
    new-instance p2, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;

    invoke-direct {p2, p0}, Lcom/intlgame/video/INTLVideoRecorder$GmeVideoEditCallback;-><init>(Lcom/intlgame/video/INTLVideoRecorder;)V

    invoke-virtual {p1, p2}, Lcom/gme/video/sdk/IGmeVideoEditControl;->setEditControlGenerateCallback(Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;)V

    .line 124
    const-string p1, "INTLVideoMomentRecord"

    const-string p2, "INTLVideoAudioStream inited"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-wide p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoRecorder;->unInitialize()V

    :cond_0
    const/16 p1, 0x14

    .line 130
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmBuffer:[S

    .line 131
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoRecorder;->init()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    const/16 p1, 0x1000

    .line 132
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mPcmByteBuffer:Ljava/nio/ByteBuffer;

    .line 133
    new-instance p1, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;

    invoke-direct {p1, p0}, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;-><init>(Lcom/intlgame/video/INTLVideoRecorder;)V

    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mThread:Ljava/lang/Thread;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method public isMomentRecording()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormalRecording()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startRecord(Z)I
    .locals 8

    .line 177
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    iget-boolean v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->enableUnityMultithreadRender:Z

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->enableOpengl(Z)V

    if-eqz p1, :cond_1

    .line 183
    const-string/jumbo v0, "startNormalRecord"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "startMomentRecord"

    .line 185
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFileStorage:Lcom/intlgame/video/INTLVideoFileStorage;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/intlgame/video/INTLVideoFileStorage;->getExternalStorageDirectory(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTLVideoMomentRecord"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 189
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " metrics.widthPixels = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " metrics.heightPixels = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/intlgame/video/INTLVideoRecorder;->getAudioConfig()V

    .line 195
    new-instance v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    invoke-direct {v1}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;-><init>()V

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    .line 196
    new-instance v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    invoke-direct {v1}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;-><init>()V

    iput-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    .line 198
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    const/16 v4, 0x1e

    iput v4, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->frameRate:I

    .line 199
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordHeight:I

    .line 200
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordWidth:I

    .line 202
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iget v1, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordHeight:I

    const/16 v4, 0x2d0

    if-le v1, v4, :cond_2

    .line 203
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iput v4, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordHeight:I

    .line 204
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x4086800000000000L    # 720.0

    div-double/2addr v6, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    float-to-double v3, v3

    mul-double v6, v6, v3

    double-to-int v3, v6

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordWidth:I

    .line 207
    :cond_2
    iget v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoQuality:I

    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    const v3, 0x2dc6c0

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->bitRate:I

    goto :goto_1

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    const v3, 0x1e8480

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->bitRate:I

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    iget v3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mBitPerSample:I

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->sampleBit:I

    .line 214
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    iget v3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mChannels:I

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->channel:I

    .line 215
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    iget v3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mSampleRate:I

    iput v3, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->sampleRate:I

    .line 217
    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/intlgame/video/INTLVideoRecorder;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/intlgame/video/INTLVideoRecorder;->videoConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;

    iget-object v6, p0, Lcom/intlgame/video/INTLVideoRecorder;->audioConfig:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->startStreamRecord(Ljava/lang/String;Landroid/app/Activity;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;)I

    move-result v1

    if-nez v1, :cond_4

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->isUseNormalRecord:Z

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    .line 227
    iput-boolean p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsWaitingRecordCallback:Z

    .line 228
    iget-wide v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/intlgame/video/INTLVideoRecorder;->switchPlugIn(JZ)V

    const/4 p1, 0x3

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public stopRecord(Z)I
    .locals 4

    .line 236
    iget-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsWaitingRecordCallback:Z

    const-string v1, "INTLVideoMomentRecord"

    if-eqz v0, :cond_0

    .line 237
    const-string p1, "recorder is waiting for callback. cannot stop at the moment."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mIsRecording:Z

    .line 241
    iget-wide v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    invoke-virtual {p0, v2, v3, v0}, Lcom/intlgame/video/INTLVideoRecorder;->switchPlugIn(JZ)V

    if-eqz p1, :cond_1

    .line 242
    const-string/jumbo p1, "stopNormalRecord"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "stopMomentRecord"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->stopStreamRecord(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public native switchPlugIn(JZ)V
.end method

.method public native unInit(J)V
.end method

.method public unInitialize()V
    .locals 6

    .line 247
    const-string/jumbo v0, "unInitialize start"

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-wide v2, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    const-wide/16 v4, -0x1

    .line 249
    iput-wide v4, p0, Lcom/intlgame/video/INTLVideoRecorder;->mJniHandler:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, v2, v3}, Lcom/intlgame/video/INTLVideoRecorder;->unInit(J)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x3e8

    .line 257
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder;->mThread:Ljava/lang/Thread;

    .line 263
    :cond_1
    const-string/jumbo v0, "unInitialize end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
