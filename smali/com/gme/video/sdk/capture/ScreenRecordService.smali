.class public Lcom/gme/video/sdk/capture/ScreenRecordService;
.super Landroid/app/Service;
.source "ScreenRecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/capture/ScreenRecordService$AudioEncode;,
        Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;,
        Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;
    }
.end annotation


# static fields
.field private static final FREERECORD_DURATION_MULTIPLE:I = 0x5

.field public static RECORD:I = 0x0

.field public static STREAM_RECORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenRecordService"

.field private static mAudioChanel:I = 0x2

.field private static mAudioSampleBit:I = 0x10

.field private static mAudioSampleRate:I = 0xbb80

.field private static mDurationMs:J = 0x1d4c0L

.field private static mFreeRecordFolder:Ljava/lang/String; = null

.field private static mFreeStreamRecord:Z = false

.field private static mIsRunning:Z = false

.field private static mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener; = null

.field private static mRecordFilePath:Ljava/lang/String; = null

.field private static mRecordHeight:I = 0x0

.field private static mRecordWidth:I = 0x0

.field private static mScreenDpi:I = 0x0

.field private static mShortAudioBufferLength:I = 0x0

.field private static mShortAudioBufferUs:F = 0.0f

.field private static mVideoBitRate:I = 0x2dc6c0

.field private static mVideoFrameRate:I = 0x1e

.field private static sEnableFeedVideo:Z = false

.field private static sEnableOpengl:Z = false

.field private static sVideoFormat:I = 0x1


# instance fields
.field private aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field audioMediaFormat:Landroid/media/MediaFormat;

.field private audioTrackIndex:I

.field bOutputEncodeData:Z

.field private mAudioBufferPrePtsUs:J

.field private mAudioEncodeThread:Ljava/lang/Thread;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private final mAudioEncoderLock:Ljava/lang/Object;

.field mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioQueueLock:Ljava/lang/Object;

.field private mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

.field private mEmptyAudioLen:I

.field private final mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

.field mFreeRecordCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;

.field private mFreeRecordFileQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeRecordOutPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsMosaicing:Z

.field private mIsStartMuxer:Z

.field protected mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mMuxerLock:Ljava/lang/Object;

.field private mPreFeedAudioTime:J

.field private mPrePts:J

.field private final mPtsLock:Ljava/lang/Object;

.field private mRecordjni:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;

.field private mStartGenerate:Z

.field private mTask:Ljava/lang/Runnable;

.field private mTotalAudioShortLen:J

.field private mVideoEncodeThread:Ljava/lang/Thread;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoMuxerIndex:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->bOutputEncodeData:Z

    .line 79
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    .line 80
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    .line 83
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 84
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    .line 86
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncodeThread:Ljava/lang/Thread;

    .line 87
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    .line 90
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueueLock:Ljava/lang/Object;

    .line 93
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    .line 95
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoderLock:Ljava/lang/Object;

    .line 97
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    .line 98
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    const v4, 0xbb80

    .line 99
    iput v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEmptyAudioLen:I

    .line 100
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPtsLock:Ljava/lang/Object;

    .line 101
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    .line 102
    new-instance v2, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;

    invoke-direct {v2}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;-><init>()V

    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordjni:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;

    .line 109
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    .line 112
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsMosaicing:Z

    .line 113
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;

    .line 114
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/gme/video/sdk/capture/ScreenRecordService;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/gme/video/sdk/capture/ScreenRecordService;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/gme/video/sdk/capture/ScreenRecordService;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPtsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gme/video/sdk/capture/ScreenRecordService;JJ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->calcEmptyData(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/gme/video/sdk/capture/ScreenRecordService;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private calcEmptyData(JJ)V
    .locals 7

    .line 478
    iget-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    long-to-float p3, p1

    .line 479
    sget p4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferUs:F

    mul-float p3, p3, p4

    float-to-long p3, p3

    sub-long/2addr p3, v0

    .line 481
    iget v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEmptyAudioLen:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 482
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ScreenRecordService"

    const-string p3, "calcEmptyData mEmptyAudioLen is 0"

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x64

    cmp-long v3, p3, v1

    if-lez v3, :cond_4

    int-to-long v1, v0

    .line 486
    div-long v1, p3, v1

    long-to-int v2, v1

    int-to-long v0, v0

    .line 487
    rem-long/2addr p3, v0

    long-to-int p4, p3

    if-eqz p4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 491
    :cond_1
    iget-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    :goto_0
    if-lez v2, :cond_4

    .line 493
    iget-boolean p3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    if-eqz p3, :cond_4

    .line 494
    iget p3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEmptyAudioLen:I

    new-array v3, p3, [S

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 496
    rem-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_2

    add-int/lit8 p4, p4, -0x1

    :cond_2
    long-to-float p3, v0

    int-to-float v0, p4

    .line 499
    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferUs:F

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    float-to-long v0, p3

    .line 500
    invoke-virtual {p0, v3, v0, v1, p4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->inputAudioData([SJI)V

    .line 501
    iget-wide v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    int-to-long v5, p4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    goto :goto_1

    :cond_3
    long-to-float v0, v0

    int-to-float v1, p3

    .line 503
    sget v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferUs:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 504
    invoke-virtual {p0, v3, v0, v1, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->inputAudioData([SJI)V

    .line 505
    iget-wide v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    iget p3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEmptyAudioLen:I

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTotalAudioShortLen:J

    .line 508
    :goto_1
    iput-wide v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 514
    :cond_4
    iput-wide p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    return-void
.end method

.method private checkEmptyAudioBuffer()V
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gme/video/sdk/capture/ScreenRecordService$2;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$2;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkRecordAudio()Z
    .locals 1

    .line 568
    sget v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioChanel:I

    if-eqz v0, :cond_1

    sget v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    if-eqz v0, :cond_1

    sget v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleBit:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanFreeRecordFile()V
    .locals 1

    .line 1354
    new-instance v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    invoke-direct {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;-><init>()V

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    .line 1357
    iget-object v0, v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->deleteRecordFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private contain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 318
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private createNotificationChannel()V
    .locals 5

    .line 1073
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1074
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 1075
    const-string v1, "notification_id"

    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1076
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1077
    const-string v3, "notification_name"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 1078
    invoke-static {v2, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 1080
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x6e

    .line 1081
    invoke-virtual {p0, v1, v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private deleteRecordFile(Ljava/lang/String;)V
    .locals 4

    .line 1338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ScreenRecordService"

    if-eqz v0, :cond_0

    .line 1339
    const-string p1, "deleteFile filepath is empty "

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1343
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1348
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const-string p1, "deleteFile %s, error: %s"

    invoke-static {v2, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initAudioEncoder()Z
    .locals 4

    .line 768
    const-string v0, "audio/mp4a-latm"

    .line 770
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 771
    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    sget v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioChanel:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioMediaFormat:Landroid/media/MediaFormat;

    .line 772
    const-string v1, "bitrate"

    sget v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 773
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 774
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "max-input-size"

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 775
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioMediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 776
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 779
    const-string v1, "ScreenRecordService"

    const-string v2, "initAudioEncoder error"

    invoke-static {v1, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .locals 4

    .line 1204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "ScreenRecordService"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 1205
    const-string v0, "isSoftwareOnly"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    invoke-static {p1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 1210
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1212
    const-string p1, "isSoftwareOnly name is empty"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1215
    :cond_1
    const-string v0, "OMX.google."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android."

    .line 1216
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX."

    .line 1217
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "c2."

    .line 1218
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method static synthetic lambda$onComplete$1(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1190
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    const/4 v1, 0x0

    const-string v2, "ScreenRecordService"

    if-eqz v0, :cond_0

    .line 1191
    const-string v0, "ScreenRecordService onComplete by handler"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_0
    const-string p0, "ScreenRecordService onComplete but mListener is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    :goto_0
    sget-boolean p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1197
    sput-object p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    :cond_1
    return-void
.end method

.method private modifyMuxerFile()V
    .locals 12

    const-string v0, "free_record_"

    .line 908
    const-string v1, "ScreenRecordService"

    const-string v2, "modifyMuxerFile start"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 911
    :try_start_0
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 912
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 913
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    .line 916
    :cond_0
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :try_start_1
    iput-boolean v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 919
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x64

    .line 920
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 921
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    .line 924
    :cond_1
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    if-eqz v5, :cond_2

    .line 925
    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->stop()V

    .line 926
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->release()V

    .line 927
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 932
    :cond_2
    sget-object v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget-wide v10, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v6, v10

    div-long/2addr v6, v8

    sub-long/2addr v6, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/gme/video/sdk/capture/ScreenRecordService;->pushFreeRecordFie(Ljava/lang/String;J)V

    .line 934
    iget-boolean v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    if-eqz v5, :cond_3

    .line 935
    iput-boolean v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    .line 936
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startGenerateFreeRecord()V

    .line 939
    :cond_3
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->initAudioEncoder()Z

    .line 941
    new-instance v5, Lcom/gme/video/sdk/capture/ScreenRecordService$AudioEncode;

    invoke-direct {v5, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$AudioEncode;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    iput-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    .line 942
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 944
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    if-nez v5, :cond_4

    .line 945
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->checkEmptyAudioBuffer()V

    .line 948
    :cond_4
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    .line 949
    const-string v6, "csd-0"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 950
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v6, "aac-profile"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 951
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v6, "aac-profile"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 953
    :cond_5
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-static {v5}, Lcom/gme/video/sdk/utils/MediaUtil;->fixAudioCSD(Landroid/media/MediaFormat;)V

    .line 956
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    .line 958
    new-instance v0, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    sget-object v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    mul-long v5, v5, v8

    iput-wide v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    .line 962
    const-string v0, "ScreenRecordService"

    const-string v5, "audioFormat %s: "

    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-static {v0, v5, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioTrackIndex:I

    .line 964
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    const-wide/16 v5, 0x0

    .line 966
    iput-wide v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    mul-long v10, v10, v8

    iput-wide v10, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    .line 970
    iput-wide v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    .line 971
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 972
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 974
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 977
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 978
    const-string v2, "ScreenRecordService"

    const-string/jumbo v4, "stopMuxter error"

    invoke-static {v2, v4, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 981
    :goto_0
    const-string v0, "ScreenRecordService"

    const-string v2, "modifyMuxerFile end: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ScreenRecordService"

    const-string v3, "ScreenRecordService onComplete: %d"

    invoke-static {v0, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 1179
    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    if-eqz v1, :cond_0

    .line 1180
    const-string v1, "ScreenRecordService onComplete direct send"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    :cond_0
    const-string p1, "ScreenRecordService onComplete but mListener is null"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    :goto_0
    sget-boolean p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1186
    sput-object p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    goto :goto_1

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private pushFreeRecordFie(Ljava/lang/String;J)V
    .locals 10

    .line 1288
    new-instance v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    invoke-direct {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;-><init>()V

    .line 1289
    iput-wide p2, v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->durationMs:J

    .line 1290
    iput-object p1, v0, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushFreeRecordFie filepath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "duration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ScreenRecordService"

    invoke-static {v3, p1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    new-instance p1, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    invoke-direct {p1}, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;-><init>()V

    .line 1294
    :try_start_0
    sget-wide v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    cmp-long p1, p2, v4

    if-ltz p1, :cond_1

    .line 1295
    :goto_0
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1296
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    .line 1297
    iget-object p1, p1, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->deleteRecordFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_0
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1300
    :cond_1
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v2, 0x1

    if-gt p1, v2, :cond_2

    .line 1301
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1303
    :cond_2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 1304
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-virtual {p1, v4}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 1305
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 1309
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    const/4 v5, 0x0

    .line 1310
    :goto_1
    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1311
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    .line 1312
    iget-wide v7, v6, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->durationMs:J

    add-long/2addr p2, v7

    if-nez v5, :cond_3

    .line 1313
    sget-wide v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    cmp-long v9, p2, v7

    if-ltz v9, :cond_3

    .line 1314
    invoke-virtual {v4, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 1316
    sget-wide v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    cmp-long v9, p2, v7

    if-ltz v9, :cond_4

    .line 1317
    iget-object v6, v6, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/gme/video/sdk/capture/ScreenRecordService;->deleteRecordFile(Ljava/lang/String;)V

    goto :goto_1

    .line 1319
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1322
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1323
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    .line 1324
    iget-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1328
    :cond_6
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1332
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "pushFreeRecordFie error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1334
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pushFreeRecordFie size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnableFeedVideo(ZI)V
    .locals 3

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnableFeedVideo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ScreenRecordService"

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    sput-boolean p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    .line 1237
    sput p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->sVideoFormat:I

    return-void
.end method

.method public static setEnableOpengl(Z)V
    .locals 3

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnableOpengl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ScreenRecordService"

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    sput-boolean p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    return-void
.end method

.method public static setFreeStreamRecord(ZLjava/lang/String;J)V
    .locals 3

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFreeStreamRecord "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ScreenRecordService"

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    sput-wide p2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    .line 1225
    sput-boolean p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    .line 1226
    sput-object p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFolder:Ljava/lang/String;

    return-void
.end method

.method public static setParams(Landroid/app/Activity;IIIIIIILjava/lang/String;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I
    .locals 10

    .line 670
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    return v1

    .line 675
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v2, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    aput-object v7, v8, v1

    .line 673
    const-string v0, "ScreenRecordService"

    const-string v1, "audioChanel: %d audioSampleRate: %d audioSampleBit: %d recordWidth: %d recordHeight: %d videoBitRate: %d videoFrameRate: %d"

    invoke-static {v0, v1, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 677
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 678
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 679
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mScreenDpi:I

    .line 681
    sput p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    .line 682
    sput p2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    .line 683
    sput p3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioChanel:I

    .line 684
    sput p4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    .line 685
    sput p5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleBit:I

    .line 686
    sput p6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    .line 687
    sput p7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFrameRate:I

    .line 688
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    if-eqz v0, :cond_1

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "free_record_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    goto :goto_0

    .line 692
    :cond_1
    sput-object p8, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    .line 695
    :goto_0
    sput-object p9, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    .line 696
    sget v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleBit:I

    mul-int v0, v0, v1

    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioChanel:I

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0x320

    sput v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferLength:I

    int-to-float v0, v0

    const v1, 0x469c4000    # 20000.0f

    div-float/2addr v0, v1

    .line 697
    sput v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferUs:F

    return v9
.end method

.method private shortToBytes([SI)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    .line 470
    new-array p2, p2, [B

    .line 471
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    return-object p2
.end method

.method private startGenerateFreeRecord()V
    .locals 14

    .line 1253
    const-string v0, "ScreenRecordService"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsMosaicing:Z

    .line 1254
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1256
    const-string v4, "outPath"

    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordOutPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1259
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordFileQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;

    .line 1260
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1261
    const-string v9, "filePath"

    iget-object v10, v7, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1262
    const-string v9, "durationMs"

    iget-wide v10, v7, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->durationMs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1263
    const-string v9, "index"

    add-int/2addr v6, v1

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1264
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateFreeRecord "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/gme/video/sdk/capture/ScreenRecordService$FreeRecordInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1267
    :cond_0
    const-string/jumbo v1, "videoInfoConfig"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateFreeRecord json: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordjni:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    long-to-int v5, v4

    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordOutPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v5, v4}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->setMosaicPathJni(Ljava/lang/String;ILjava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordjni:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;

    new-instance v3, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda3;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    invoke-virtual {v1, v3}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->startMosaicVideoJni(Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateFreeRecord error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private startRecordInternal()V
    .locals 14

    .line 126
    const-string v0, "ScreenRecordService"

    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v2, 0x7

    if-nez v1, :cond_0

    .line 127
    const-string v0, "MediaProjection is null, maybe have no screen record permission"

    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_1
    const/4 v1, 0x0

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioChanel:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 145
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioSampleRate:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 146
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 147
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 148
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-object v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 150
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 151
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 152
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFrameRate:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 153
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 154
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v8, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    sget v9, Lcom/gme/video/sdk/capture/ScreenRecordService;->mScreenDpi:I

    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 162
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 161
    const-string v6, "MainScreen"

    const/16 v10, 0x10

    invoke-virtual/range {v5 .. v13}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 163
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 164
    sput-boolean v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    .line 166
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v0}, Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;->onStart()V

    :cond_2
    return-void

    :catch_0
    move-exception v3

    .line 156
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->clearRecordElement()V

    .line 157
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :catch_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "enable audio capture failed! please request permission [android.RECORD_AUDIO]"

    invoke-static {v0, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearRecordElement()V
    .locals 4

    .line 1010
    const-string v0, "ScreenRecordService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "clearRecordElement start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1012
    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    .line 1013
    iput-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 1015
    :cond_0
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 1016
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 1017
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1018
    iput-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1020
    :cond_1
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    .line 1021
    const-string v2, "clearRecordElement end"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1023
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "clearRecordElement got error %s"

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public enableOpenglVideoEncode()V
    .locals 12

    .line 853
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 854
    const-string v0, "ScreenRecordService"

    const-string v2, "enableOpenglVideoEncode mVideoEncoder is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 858
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_8

    .line 861
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 863
    const-string v0, "encode error, getOutputBuffer is null"

    .line 864
    const-string v2, "ScreenRecordService"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    sget-object v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-direct {p0, v3, v0, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 869
    :cond_1
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_7

    .line 870
    iget v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 871
    const-string/jumbo v3, "video/avc"

    new-instance v4, Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    sget v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    invoke-direct {v4, v6, v7}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;-><init>(II)V

    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v3, v4, v6, v2}, Lcom/gme/video/sdk/utils/MediaUtil;->createVideoCSD(Ljava/lang/String;Lcom/gme/video/sdk/edit/model/GmeVideoSize;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFormat:Landroid/media/MediaFormat;

    .line 872
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :try_start_1
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    .line 874
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 875
    iput-boolean v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 876
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 877
    :cond_2
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 878
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v3, v3, v6

    iget-wide v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v3, v8

    sget-wide v8, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    const-wide/16 v10, 0x1388

    mul-long v8, v8, v10

    cmp-long v10, v3, v8

    if-ltz v10, :cond_3

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-eq v3, v5, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v3, v5, :cond_5

    .line 880
    :cond_4
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->modifyMuxerFile()V

    .line 883
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v3, v3, v6

    iget-wide v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v3, v5

    .line 885
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iput-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 886
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 887
    :try_start_3
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    if-eqz v4, :cond_6

    .line 888
    iget v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v2, v6}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 890
    :cond_6
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 893
    :cond_7
    :goto_0
    sget-boolean v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-eqz v2, :cond_8

    .line 894
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 899
    const-string v2, "ScreenRecordService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enableOpenglVideoEncode encode error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public feedAudioByteData([BJ)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 541
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ScreenRecordService"

    const-string p3, "feedAudioByteData: audioData is null"

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 545
    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 546
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 547
    invoke-virtual {p0, v0, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->feedAudioData([SJ)I

    move-result p1

    return p1
.end method

.method public feedAudioData([SJ)I
    .locals 4

    .line 519
    iget-boolean p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->bOutputEncodeData:Z

    const/16 p3, 0xe

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->checkRecordAudio()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    if-nez p2, :cond_1

    .line 524
    const-string p1, "ScreenRecordService"

    const-string p2, "feedAudioData mAudioEncoder is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 528
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    .line 529
    iget-wide v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr p2, v1

    .line 531
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPtsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    array-length v2, p1

    int-to-long v2, v2

    invoke-direct {p0, p2, p3, v2, v3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->calcEmptyData(JJ)V

    .line 533
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->inputAudioData([SJI)V

    return v0

    :catchall_0
    move-exception p1

    .line 533
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 520
    :cond_2
    :goto_0
    const-string p1, "ScreenRecordService"

    const-string p2, "feedAudioData bOutputEncodeData is false"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method

.method public feedVideoByteData([BJ)I
    .locals 4

    const/4 v0, 0x0

    .line 551
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ScreenRecordService"

    const-string v3, "feedVideoByteData "

    invoke-static {v2, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->bOutputEncodeData:Z

    const/16 v3, 0xe

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->checkRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    .line 557
    const-string p1, "feedVideoData mVideoEncoder is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {v1, p1, p2, p3}, Lcom/gme/video/sdk/capture/EGLRender;->startDrawRgba([BJ)I

    :cond_2
    return v0

    .line 553
    :cond_3
    :goto_0
    const-string p1, "feedVideoData bOutputEncodeData is false"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I
    .locals 2

    .line 1241
    iget-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsMosaicing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1242
    const-string p1, "generateFreeRecord mIsMosaicing is true"

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "ScreenRecordService"

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x8

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 1245
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    .line 1246
    iput-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordOutPath:Ljava/lang/String;

    .line 1247
    iput-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;

    return v1
.end method

.method public getAudioData()[S
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    const-string v1, "ScreenRecordService"

    const-string/jumbo v2, "start getAudioData mAudioQueue size: %d"

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    sget v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferLength:I

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    new-array v1, v2, [S

    .line 648
    :goto_0
    sget v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mShortAudioBufferLength:I

    if-ge v5, v2, :cond_1

    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 650
    :try_start_1
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v5
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 652
    :try_start_2
    const-string v3, "ScreenRecordService"

    const-string v4, "getAudioData error e: "

    invoke-static {v3, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 656
    :cond_1
    monitor-exit v0

    return-object v1

    .line 645
    :cond_2
    :goto_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 656
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMediaFormat(Landroid/media/MediaCodecInfo;Z)Landroid/media/MediaFormat;
    .locals 11

    .line 328
    const-string/jumbo v0, "video/avc"

    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v2

    .line 334
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    .line 335
    :goto_0
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    sget v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    .line 336
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p1

    .line 338
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    .line 339
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "getMediaFormat CONFIG video encode width: originVideoBitRate: %d-> VideoBitRate: %d"

    const/4 v6, 0x0

    const-string v7, "ScreenRecordService"

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v3, v4, :cond_3

    .line 340
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v6

    aput-object v4, v10, v8

    invoke-static {v7, v5, v10}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 343
    :cond_3
    sget v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v4, v10, :cond_4

    .line 344
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v6

    aput-object v4, v10, v8

    invoke-static {v7, v5, v10}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 347
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v4, v5, v8

    const-string p1, "getMediaFormat CONFIG video encode width: %d, height: %d"

    invoke-static {v7, p1, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 349
    const-string v0, "color-format"

    const v1, 0x7f000789

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz p2, :cond_5

    .line 351
    const-string p2, "bitrate-mode"

    invoke-virtual {p1, p2, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 353
    :cond_5
    const-string p2, "bitrate"

    invoke-virtual {p1, p2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 354
    const-string p2, "frame-rate"

    sget v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFrameRate:I

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 355
    const-string p2, "i-frame-interval"

    invoke-virtual {p1, p2, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;
    .locals 2

    .line 1362
    new-instance v0, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;

    invoke-direct {v0}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;-><init>()V

    .line 1363
    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    iput v1, v0, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;->encodeWidth:I

    .line 1364
    sget v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    iput v1, v0, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;->encodeHeight:I

    return-object v0
.end method

.method public initVideoEncoder(Z)I
    .locals 13

    .line 360
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ScreenRecordService"

    const-string v4, "initVideoEncoder isEnableCbr: %s"

    invoke-static {v0, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    new-instance v6, Landroid/media/MediaCodecList;

    invoke-direct {v6, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 365
    invoke-virtual {v6}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 368
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    const-string/jumbo v9, "video/avc"

    if-ge v8, v7, :cond_4

    aget-object v10, v6, v8

    if-eqz v10, :cond_2

    .line 369
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v9}, Lcom/gme/video/sdk/capture/ScreenRecordService;->contain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 375
    invoke-direct {p0, v10}, Lcom/gme/video/sdk/capture/ScreenRecordService;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 376
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 379
    :cond_1
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 370
    :cond_2
    :goto_1
    const-string v9, "initVideoEncoder info is null or name is empty"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 385
    :try_start_0
    invoke-static {v9}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 386
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gme/video/sdk/capture/ScreenRecordService;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 387
    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 389
    :cond_5
    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    :goto_3
    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getMediaFormat(Landroid/media/MediaCodecInfo;Z)Landroid/media/MediaFormat;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_7

    .line 393
    :try_start_1
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6, v5, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v7, v5

    .line 396
    :goto_4
    iget-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v8, :cond_6

    .line 397
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 398
    iput-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 400
    :cond_6
    const-string v8, "initVideoEncoder: "

    invoke-static {v0, v8, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v6, v7

    .line 404
    :cond_7
    :goto_5
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-nez v7, :cond_10

    const/4 v7, 0x0

    .line 405
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 407
    :try_start_2
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8

    iput-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 408
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getMediaFormat(Landroid/media/MediaCodecInfo;Z)Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 410
    iget-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v6, v5, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v8

    .line 413
    iget-object v9, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v9, :cond_8

    .line 414
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 415
    iput-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 417
    :cond_8
    const-string v9, "createByCodecName hardwareEncodeNames "

    invoke-static {v0, v9, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 420
    :cond_9
    :goto_7
    iget-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 425
    :cond_b
    :goto_8
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v4, :cond_c

    .line 426
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "initVideoEncoder hardwareEncodeName: %s"

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_c
    const/4 v4, 0x0

    .line 430
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_10

    .line 431
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v7, "initVideoEncoder softwareEncodeNames: %s"

    invoke-static {v0, v7, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :try_start_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 435
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-virtual {p0, v7, p1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getMediaFormat(Landroid/media/MediaCodecInfo;Z)Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 437
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6, v5, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v7

    .line 440
    iget-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v8, :cond_d

    .line 441
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 442
    iput-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 444
    :cond_d
    const-string v8, "createByCodecName softwareEncodeNames "

    invoke-static {v0, v8, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 447
    :cond_e
    :goto_a
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v7, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 453
    :cond_10
    :goto_b
    iget-object p1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_11

    .line 454
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "initVideoEncoder name: %s"

    invoke-static {v0, p1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    const-string/jumbo p1, "width"

    invoke-virtual {v6, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    .line 456
    const-string p1, "height"

    invoke-virtual {v6, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    .line 457
    const-string p1, "bitrate"

    invoke-virtual {v6, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoBitRate:I

    .line 458
    invoke-virtual {v6}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "initVideoEncoder mediaFormat info: %s"

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 461
    :cond_11
    const-string p1, "initVideoEncoder error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->clearRecordElement()V

    const/4 p1, 0x7

    return p1
.end method

.method public inputAudioData([SJI)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "inputAudioData tmpAudioData size: "

    .line 594
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    mul-int/lit8 v3, p4, 0x2

    .line 598
    iget v4, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEmptyAudioLen:I

    const/4 v5, 0x2

    if-nez p4, :cond_1

    .line 600
    array-length v4, v0

    .line 601
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    :cond_1
    const/4 v6, 0x0

    .line 607
    :try_start_0
    iget-object v7, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoderLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :try_start_1
    iget-object v8, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    if-nez v8, :cond_2

    .line 609
    const-string v0, "ScreenRecordService"

    const-string v2, "InputAudioData mAudioEncoder == null"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    monitor-exit v7

    return-void

    :cond_2
    const-wide/16 v9, -0x1

    .line 613
    invoke-virtual {v8, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-ltz v12, :cond_4

    .line 615
    iget-object v8, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 616
    aget-object v8, v8, v12

    .line 617
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 619
    invoke-direct {v1, v0, v4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->shortToBytes([SI)[B

    move-result-object v0

    .line 621
    array-length v4, v0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-le v4, v9, :cond_3

    .line 622
    const-string v3, "ScreenRecordService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; byteBuffer: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    :cond_3
    move v14, v3

    .line 626
    invoke-virtual {v8, v0, v6, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 627
    iget-object v11, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-wide/from16 v15, p2

    .line 628
    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 631
    :cond_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 633
    const-string v2, "ScreenRecordService"

    const-string v3, "inputAudioData  <pts:%d> error e: "

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    invoke-static {v2, v3, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-eqz v0, :cond_5

    .line 635
    invoke-virtual {v1, v4}, Lcom/gme/video/sdk/capture/ScreenRecordService;->stopStreamRecord(Z)Z

    :cond_5
    :goto_0
    return-void
.end method

.method synthetic lambda$startGenerateFreeRecord$2$com-gme-video-sdk-capture-ScreenRecordService(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    .line 1272
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsMosaicing:Z

    .line 1273
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;

    const-string v2, "ScreenRecordService"

    if-eqz v1, :cond_0

    .line 1274
    const-string v1, "ScreenRecordService onComplete by handler"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeRecordCallback:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_0
    const-string p1, "ScreenRecordService onComplete but mListener is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$startGenerateFreeRecord$3$com-gme-video-sdk-capture-ScreenRecordService(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda4;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$startStreamRecordInternal$0$com-gme-video-sdk-capture-ScreenRecordService()V
    .locals 21

    .line 0
    move-object/from16 v1, p0

    .line 236
    const-string v2, "ScreenRecordService"

    const/4 v3, 0x7

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v11

    .line 237
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-eqz v0, :cond_4

    .line 239
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/capture/EGLRender;

    sget v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFrameRate:I

    sget-boolean v8, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/gme/video/sdk/capture/EGLRender;-><init>(IIIZ)V

    iput-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    .line 241
    invoke-virtual {v0, v11}, Lcom/gme/video/sdk/capture/EGLRender;->initOpengl(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    if-nez v0, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    new-instance v5, Lcom/gme/video/sdk/capture/ScreenRecordService$1;

    invoke-direct {v5, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService$1;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    invoke-virtual {v0, v5}, Lcom/gme/video/sdk/capture/EGLRender;->setCallBack(Lcom/gme/video/sdk/capture/EGLRender$onFrameCallBack;)V

    goto :goto_1

    .line 245
    :cond_2
    :goto_0
    const-string v0, "new EGLRender error, set sEnableOpengl is false"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-eqz v0, :cond_3

    .line 247
    const-string v0, "new EGLRender error"

    sget-object v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v5}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_3
    sput-boolean v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    .line 262
    :cond_4
    :goto_1
    iget-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 264
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-nez v0, :cond_5

    sget-boolean v5, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-eqz v5, :cond_5

    .line 265
    iget-object v12, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v13, "MainScreen"

    sget v14, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v15, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    sget v16, Lcom/gme/video/sdk/capture/ScreenRecordService;->mScreenDpi:I

    iget-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    .line 266
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    .line 265
    invoke-virtual/range {v12 .. v20}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 267
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-nez v0, :cond_6

    .line 268
    iget-object v5, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v6, "MainScreen"

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v8, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    sget v9, Lcom/gme/video/sdk/capture/ScreenRecordService;->mScreenDpi:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v13}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 273
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iput-wide v5, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPreFeedAudioTime:J

    const-wide/16 v5, 0x0

    .line 275
    iput-wide v5, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mPrePts:J

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->bOutputEncodeData:Z

    .line 277
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-nez v0, :cond_7

    .line 278
    const-string v0, "sEnableOpengl false createVirtualDisplay"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;

    invoke-direct {v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService$VideoEncode;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    iput-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncodeThread:Ljava/lang/Thread;

    .line 280
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    :cond_7
    iget-object v0, v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    if-eqz v0, :cond_8

    .line 284
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/EGLRender;->startRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_8
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    if-eqz v0, :cond_9

    .line 295
    invoke-interface {v0}, Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;->onStart()V

    :cond_9
    return-void

    :catch_0
    move-exception v0

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createVirtualDisplay error, e: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->clearRecordElement()V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x0

    .line 1035
    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "ScreenRecordService"

    const-string v1, "onStartCommand in"

    invoke-static {v0, v1, p3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->createNotificationChannel()V

    .line 1037
    invoke-static {p0}, Lcom/gme/video/sdk/capture/ScreenRecorder;->setScreenRecordService(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    .line 1038
    const-string p3, "data"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    .line 1039
    const-string v1, "resultCode"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1040
    const-string v2, "media_projection"

    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    if-eqz v2, :cond_1

    .line 1042
    invoke-virtual {v2, v1, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p3

    iput-object p3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 1043
    new-instance v0, Lcom/gme/video/sdk/capture/ScreenRecordService$3;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$3;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 1059
    const-string p3, "recordType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1060
    sget p2, Lcom/gme/video/sdk/capture/ScreenRecordService;->RECORD:I

    if-ne p1, p2, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startRecordInternal()V

    goto :goto_0

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startStreamRecordInternal()V

    goto :goto_0

    .line 1067
    :cond_1
    const-string p1, "get projectionManager error!"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public startAudioEncode()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 718
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    if-nez v4, :cond_5

    .line 719
    iget-boolean v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    if-nez v4, :cond_1

    goto :goto_0

    .line 722
    :cond_1
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 724
    aget-object v5, v3, v4

    .line 725
    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :try_start_1
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    if-eqz v7, :cond_4

    .line 727
    iget-wide v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_2

    .line 728
    const-string v5, "ScreenRecordService"

    const-string v7, "pts error currentpts: %d, prePts: %d"

    iget-object v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v2

    aput-object v9, v10, v0

    invoke-static {v5, v7, v10}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 730
    monitor-exit v6

    goto :goto_0

    .line 733
    :cond_2
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v7, v1, :cond_3

    .line 734
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 735
    monitor-exit v6

    goto :goto_0

    .line 738
    :cond_3
    iget-object v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioTrackIndex:I

    iget-object v9, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v7, v8, v5, v9}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 739
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 740
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->aBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    .line 742
    :cond_4
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    .line 746
    const-string v4, "ScreenRecordService"

    const-string v5, "mMediaMuxer.writeSampleData <pts:%d> error %s"

    iget-wide v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    aput-object v3, v1, v0

    invoke-static {v4, v5, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    :cond_5
    const-string v0, "ScreenRecordService"

    const-string/jumbo v1, "startAudioEncode end"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 751
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoderLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    .line 752
    :try_start_3
    iput-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 753
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    .line 757
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 758
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 760
    :catch_1
    const-string v0, "ScreenRecordService"

    const-string/jumbo v1, "startAudioEncode stop error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    iput-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    :cond_6
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 753
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public startStreamRecordInternal()V
    .locals 10

    .line 172
    const-string v0, "aac-profile"

    const-string v1, "initAudioEncoder fail"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ScreenRecordService"

    const-string/jumbo v5, "startStreamRecordInternal"

    invoke-static {v4, v5, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    const/4 v5, 0x7

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v3, :cond_0

    .line 174
    const-string v0, "MediaProjection is null, maybe have no screen record permission"

    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    :try_start_0
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    and-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    sub-int/2addr v3, v7

    .line 180
    sput v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    .line 182
    :cond_1
    sget v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v7, :cond_2

    sub-int/2addr v3, v7

    .line 183
    sput v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    .line 186
    :cond_2
    sput-boolean v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    const-wide/16 v8, 0x0

    .line 187
    iput-wide v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    .line 189
    new-instance v3, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    sget-object v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 190
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->checkRecordAudio()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->initAudioEncoder()Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_3
    new-instance v1, Lcom/gme/video/sdk/capture/ScreenRecordService$AudioEncode;

    invoke-direct {v1, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$AudioEncode;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 199
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->checkEmptyAudioBuffer()V

    .line 201
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    .line 202
    const-string v3, "csd-0"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 203
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->fixAudioCSD(Landroid/media/MediaFormat;)V

    .line 209
    :cond_5
    const-string v0, "audioFormat %s: "

    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->audioTrackIndex:I

    .line 213
    :cond_6
    invoke-virtual {p0, v7}, Lcom/gme/video/sdk/capture/ScreenRecordService;->initVideoEncoder(Z)I

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->initVideoEncoder(Z)I

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    .line 219
    const-string v0, "config encode error"

    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_8
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    const/16 v0, 0xc8

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/gme/video/sdk/capture/ScreenRecordService$$ExternalSyntheticLambda1;-><init>(Lcom/gme/video/sdk/capture/ScreenRecordService;)V

    int-to-long v6, v0

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->clearRecordElement()V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startVideoEncode()V
    .locals 12

    .line 787
    const-string v0, "ScreenRecordService"

    const-string/jumbo v1, "startVideoEncode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_9

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_8

    .line 793
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 795
    const-string v0, "encode error, getOutputBuffer is null"

    .line 796
    const-string v1, "ScreenRecordService"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-direct {p0, v3, v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 801
    :cond_1
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_7

    .line 802
    iget v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 803
    const-string/jumbo v3, "video/avc"

    new-instance v4, Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    sget v6, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordWidth:I

    sget v7, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordHeight:I

    invoke-direct {v4, v6, v7}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;-><init>(II)V

    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v3, v4, v6, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->createVideoCSD(Ljava/lang/String;Lcom/gme/video/sdk/edit/model/GmeVideoSize;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFormat:Landroid/media/MediaFormat;

    .line 804
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :try_start_1
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    .line 806
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 807
    iput-boolean v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 808
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 809
    :cond_2
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 810
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v3, v3, v6

    iget-wide v8, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v3, v8

    sget-wide v8, Lcom/gme/video/sdk/capture/ScreenRecordService;->mDurationMs:J

    const-wide/16 v10, 0x1388

    mul-long v8, v8, v10

    cmp-long v10, v3, v8

    if-ltz v10, :cond_3

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-eq v3, v5, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mStartGenerate:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v3, v5, :cond_5

    .line 812
    :cond_4
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->modifyMuxerFile()V

    .line 815
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v3, v3, v6

    iget-wide v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v3, v5

    .line 816
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iput-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 817
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 818
    :try_start_3
    iget-object v4, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    if-eqz v4, :cond_6

    .line 819
    iget v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoMuxerIndex:I

    iget-object v6, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v1, v6}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 821
    :cond_6
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 824
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 828
    :cond_8
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEncodeBuf:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 830
    const-string v0, "ScreenRecordService"

    const-string v1, "outputDone"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 835
    const-string v1, "ScreenRecordService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startVideoEncode encode error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 839
    :cond_9
    :goto_2
    const-string v0, "ScreenRecordService"

    const-string/jumbo v1, "startVideoEncode end"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_a

    .line 843
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 844
    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 847
    const-string v1, "ScreenRecordService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startVideoEncode stop error e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public stopRecord()Z
    .locals 4

    .line 985
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 988
    :cond_0
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    const/4 v0, 0x0

    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 991
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 992
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 993
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 994
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 996
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    iget-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 998
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1001
    :goto_0
    iput-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 1003
    const-string v2, ""

    sget-object v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    const/4 v0, 0x1

    return v0
.end method

.method public stopStreamRecord(Z)Z
    .locals 9

    .line 1085
    sget-boolean v0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1088
    :cond_0
    const-string v0, "ScreenRecordService"

    const-string/jumbo v2, "stopStreamRecord: %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v0, v2, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsRunning:Z

    .line 1090
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->bOutputEncodeData:Z

    const/4 v0, 0x7

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 1096
    :try_start_0
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_2

    .line 1097
    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1098
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 1100
    :cond_2
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v3, :cond_3

    .line 1101
    invoke-virtual {v3}, Landroid/media/projection/MediaProjection;->stop()V

    .line 1102
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 1105
    :cond_3
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    if-eqz v3, :cond_4

    .line 1106
    invoke-virtual {v3}, Lcom/gme/video/sdk/capture/EGLRender;->stopRender()V

    .line 1107
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mEglRender:Lcom/gme/video/sdk/capture/EGLRender;

    .line 1110
    :cond_4
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    .line 1111
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mTask:Ljava/lang/Runnable;

    .line 1114
    :cond_5
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-nez v3, :cond_6

    .line 1115
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncodeThread:Ljava/lang/Thread;

    if-eqz v3, :cond_6

    const-wide/16 v5, 0x1f4

    .line 1116
    invoke-virtual {v3, v5, v6}, Ljava/lang/Thread;->join(J)V

    .line 1117
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncodeThread:Ljava/lang/Thread;

    .line 1120
    :cond_6
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;

    if-eqz v3, :cond_7

    const-wide/16 v5, 0x64

    .line 1121
    invoke-virtual {v3, v5, v6}, Ljava/lang/Thread;->join(J)V

    .line 1122
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioEncodeThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1126
    const-string v3, "ScreenRecordService"

    const-string/jumbo v5, "stopStreamRecord error"

    invoke-static {v3, v5, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x7

    .line 1136
    :cond_7
    :goto_1
    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    if-eqz v3, :cond_9

    .line 1137
    :cond_8
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_9

    .line 1139
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 1140
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 1141
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mVideoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1143
    const-string v5, "ScreenRecordService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startVideoEncode stop error e: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :cond_9
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1150
    :try_start_3
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    if-eqz v5, :cond_a

    .line 1151
    iput-boolean v1, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mIsStartMuxer:Z

    .line 1152
    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->stop()V

    .line 1153
    iget-object v5, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->release()V

    .line 1154
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 1156
    :cond_a
    monitor-exit v3

    move v0, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 1159
    iput-object v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    .line 1160
    const-string v2, "ScreenRecordService"

    const-string/jumbo v3, "stopStreamRecord error"

    invoke-static {v2, v3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1162
    :goto_3
    sget-boolean p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    if-eqz p1, :cond_b

    .line 1163
    sget-object p1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long v2, v2, v5

    iget-wide v7, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->presentationTimeUs:J

    sub-long/2addr v2, v7

    div-long/2addr v2, v5

    invoke-direct {p0, p1, v2, v3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->pushFreeRecordFie(Ljava/lang/String;J)V

    .line 1164
    invoke-direct {p0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->cleanFreeRecordFile()V

    .line 1165
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->mFreeStreamRecord:Z

    .line 1168
    :cond_b
    const-string p1, ""

    sget-object v2, Lcom/gme/video/sdk/capture/ScreenRecordService;->mRecordFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    .line 1170
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableOpengl:Z

    const-wide/16 v2, 0x0

    .line 1171
    iput-wide v2, p0, Lcom/gme/video/sdk/capture/ScreenRecordService;->mAudioBufferPrePtsUs:J

    .line 1172
    sput-boolean v1, Lcom/gme/video/sdk/capture/ScreenRecordService;->sEnableFeedVideo:Z

    return v4
.end method
