.class public Lcom/gme/video/sdk/capture/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRecorder"

.field private static final mMinSpace:J = 0x40000000L

.field private static sInstance:Lcom/gme/video/sdk/capture/ScreenRecorder;

.field private static sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;


# instance fields
.field private final PERMISSION_RECORDER_CODE:I

.field private final PERMISSION_STREAM_RECORDER_CODE:I

.field private mDurationMs:J

.field private mEnableFeedVideo:Z

.field private mEnableFreeStreamRecord:Z

.field private mEnableOpengl:Z

.field private mFreeRecordFolder:Ljava/lang/String;

.field private mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

.field private mRecordPath:Ljava/lang/String;

.field private mVideoFormat:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 32
    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->PERMISSION_RECORDER_CODE:I

    const/16 v0, 0x65

    .line 33
    iput v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->PERMISSION_STREAM_RECORDER_CODE:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFreeStreamRecord:Z

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mDurationMs:J

    .line 37
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableOpengl:Z

    const/4 v1, 0x1

    .line 38
    iput v1, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mVideoFormat:I

    .line 39
    iput-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    return-void
.end method

.method public static getInstance()Lcom/gme/video/sdk/capture/ScreenRecorder;
    .locals 1

    .line 44
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sInstance:Lcom/gme/video/sdk/capture/ScreenRecorder;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/gme/video/sdk/capture/ScreenRecorder;

    invoke-direct {v0}, Lcom/gme/video/sdk/capture/ScreenRecorder;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sInstance:Lcom/gme/video/sdk/capture/ScreenRecorder;

    .line 47
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sInstance:Lcom/gme/video/sdk/capture/ScreenRecorder;

    return-object v0
.end method

.method private requestPermission(Landroid/app/Activity;I)V
    .locals 5

    const/4 v0, 0x0

    .line 55
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ScreenRecorder"

    const-string v3, "requestPermission"

    invoke-static {v2, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const-string v1, "media_projection"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 60
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 63
    :cond_0
    const-string p1, "mediaProjectionManager not match"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string p1, "mediaProjectionManager = null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected static setScreenRecordService(Lcom/gme/video/sdk/capture/ScreenRecordService;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    return-void
.end method

.method private startRecordService(Landroid/content/Context;ILandroid/content/Intent;I)I
    .locals 5

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ScreenRecorder"

    const-string/jumbo v4, "startRecordService code %d and type =  %d "

    invoke-static {v1, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v4, "resultCode"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string p2, "data"

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string p2, "recordType"

    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "context.startService error %s "

    invoke-static {v1, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    :goto_0
    return v3
.end method

.method private stopRecordService(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "ScreenRecorder"

    const-string v0, "context.stopService got exception %s"

    invoke-static {p1, v0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public checkRecordFilePath(Ljava/lang/String;)I
    .locals 7

    .line 254
    const-string v0, "ScreenRecorder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 255
    const-string/jumbo p1, "strPath is empty!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 259
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    .line 262
    const-string p1, "dir is empty!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 p1, 0xb

    return p1

    .line 272
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 p1, 0xc

    return p1

    .line 278
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x40000000

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 280
    const-string p1, "disk FreeSpace to low %ld"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v0, p1, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0xa

    return p1

    :cond_4
    return v2

    :catch_0
    move-exception p1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "checkRecordFilePath got error %s"

    invoke-static {v0, p1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public enableFeedVideo(ZI)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    .line 306
    iput p2, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mVideoFormat:I

    return-void
.end method

.method public enableFreeStreamRecord(ZLjava/lang/String;J)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFreeStreamRecord:Z

    .line 293
    iput-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mFreeRecordFolder:Ljava/lang/String;

    .line 294
    iput-wide p3, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mDurationMs:J

    return-void
.end method

.method public enableOpengl(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableOpengl:Z

    return-void
.end method

.method public feedAudioByteData([BJ)I
    .locals 2

    .line 223
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 226
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-nez v0, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 230
    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->feedAudioByteData([BJ)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 231
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ScreenRecorder"

    const-string p3, "feedAudioData audioData error"

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1
.end method

.method public feedAudioData([SJ)I
    .locals 2

    .line 208
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 211
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-nez v0, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 215
    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->feedAudioData([SJ)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 216
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ScreenRecorder"

    const-string p3, "feedAudioData audioData error"

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1
.end method

.method public feedVideoByteData([BJ)I
    .locals 2

    .line 238
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 241
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-nez v0, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 245
    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/gme/video/sdk/capture/ScreenRecordService;->feedVideoByteData([BJ)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 246
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ScreenRecorder"

    const-string p3, "feedAudioData audioData error"

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1
.end method

.method public generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I
    .locals 1

    .line 298
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1, p2}, Lcom/gme/video/sdk/capture/ScreenRecordService;->generateFreeRecord(Ljava/lang/String;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$FreeRecordCallBack;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x7

    return p1
.end method

.method public getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;
    .locals 1

    .line 310
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->getRecordVideoConfig()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$EncodeVideoConfig;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    const/16 v1, 0x65

    if-ne p2, v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 100
    const-string v2, "ScreenRecorder"

    if-nez p4, :cond_1

    .line 102
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "onActivityResult data is null! user refuse permission"

    invoke-static {v2, p3, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    const/16 p4, 0xd

    iget-object v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mRecordPath:Ljava/lang/String;

    invoke-interface {p2, p4, p3, v0}, Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->stopRecordService(Landroid/content/Context;)I

    return-void

    :cond_1
    if-ne p2, v0, :cond_2

    .line 109
    sget p2, Lcom/gme/video/sdk/capture/ScreenRecordService;->RECORD:I

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/gme/video/sdk/capture/ScreenRecorder;->startRecordService(Landroid/content/Context;ILandroid/content/Intent;I)I

    move-result p1

    goto :goto_0

    .line 111
    :cond_2
    sget p2, Lcom/gme/video/sdk/capture/ScreenRecordService;->STREAM_RECORD:I

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/gme/video/sdk/capture/ScreenRecorder;->startRecordService(Landroid/content/Context;ILandroid/content/Intent;I)I

    move-result p1

    .line 113
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string/jumbo p1, "startRecordService ret = %d"

    invoke-static {v2, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public startRecord(Landroid/app/Activity;IIIIIILjava/lang/String;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I
    .locals 12

    move-object v0, p0

    .line 118
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xf

    return v1

    .line 121
    :cond_0
    sget-object v1, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    return v1

    :cond_1
    const/16 v1, 0x64

    move-object v2, p1

    .line 124
    invoke-direct {p0, p1, v1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->requestPermission(Landroid/app/Activity;I)V

    move-object/from16 v1, p9

    .line 125
    iput-object v1, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    move-object/from16 v10, p8

    .line 126
    iput-object v10, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mRecordPath:Ljava/lang/String;

    const/16 v7, 0x10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    .line 128
    invoke-static/range {v2 .. v11}, Lcom/gme/video/sdk/capture/ScreenRecordService;->setParams(Landroid/app/Activity;IIIIIIILjava/lang/String;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I

    const/4 v1, 0x0

    return v1
.end method

.method public startStreamRecord(Ljava/lang/String;Landroid/app/Activity;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 148
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v1, 0xf

    return v1

    .line 152
    :cond_0
    sget-object v3, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    const-string v4, "ScreenRecorder"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 153
    const-string/jumbo v1, "startStreamRecord error : mScreenRecordService not null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x6

    return v1

    :cond_1
    if-eqz v1, :cond_7

    if-nez v2, :cond_2

    goto :goto_2

    .line 163
    :cond_2
    iget-boolean v3, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFreeStreamRecord:Z

    if-nez v3, :cond_3

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->checkRecordFilePath(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkRecordFilePath error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 172
    :cond_4
    iget-boolean v3, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    if-nez v3, :cond_5

    const/16 v3, 0x65

    move-object/from16 v4, p2

    .line 173
    invoke-direct {v0, v4, v3}, Lcom/gme/video/sdk/capture/ScreenRecorder;->requestPermission(Landroid/app/Activity;I)V

    goto :goto_1

    :cond_5
    move-object/from16 v4, p2

    :goto_1
    move-object/from16 v3, p5

    .line 176
    iput-object v3, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mListener:Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;

    .line 177
    iget-boolean v6, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    iget v7, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mVideoFormat:I

    invoke-static {v6, v7}, Lcom/gme/video/sdk/capture/ScreenRecordService;->setEnableFeedVideo(ZI)V

    .line 178
    iget-boolean v6, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFreeStreamRecord:Z

    iget-object v7, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mFreeRecordFolder:Ljava/lang/String;

    iget-wide v8, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mDurationMs:J

    invoke-static {v6, v7, v8, v9}, Lcom/gme/video/sdk/capture/ScreenRecordService;->setFreeStreamRecord(ZLjava/lang/String;J)V

    .line 179
    iget-boolean v6, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableOpengl:Z

    invoke-static {v6}, Lcom/gme/video/sdk/capture/ScreenRecordService;->setEnableOpengl(Z)V

    .line 180
    iget v7, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordWidth:I

    iget v8, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->recordHeight:I

    iget v9, v2, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->channel:I

    iget v10, v2, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->sampleRate:I

    iget v11, v2, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$AudioConfig;->sampleBit:I

    iget v12, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->bitRate:I

    iget v13, v1, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl$VideoConfig;->frameRate:I

    move-object/from16 v6, p2

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    invoke-static/range {v6 .. v15}, Lcom/gme/video/sdk/capture/ScreenRecordService;->setParams(Landroid/app/Activity;IIIIIIILjava/lang/String;Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;)I

    .line 181
    iget-boolean v1, v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    if-eqz v1, :cond_6

    .line 182
    new-instance v1, Lcom/gme/video/sdk/capture/ScreenRecordService;

    invoke-direct {v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;-><init>()V

    sput-object v1, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    .line 183
    invoke-virtual {v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->startStreamRecordInternal()V

    :cond_6
    return v5

    .line 158
    :cond_7
    :goto_2
    const-string/jumbo v1, "startStreamRecord error recordVideoConfig == null || recordAudioConfig == null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    return v1
.end method

.method public stopRecord(Landroid/content/Context;)Z
    .locals 2

    .line 133
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/gme/video/sdk/capture/ScreenRecordService;->stopRecord()Z

    :cond_1
    const/4 v0, 0x0

    .line 139
    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    .line 141
    iget-boolean v0, p0, Lcom/gme/video/sdk/capture/ScreenRecorder;->mEnableFeedVideo:Z

    if-nez v0, :cond_2

    .line 142
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->stopRecordService(Landroid/content/Context;)I

    :cond_2
    return v1
.end method

.method public stopStreamRecord(Landroid/content/Context;)I
    .locals 2

    .line 190
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 194
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/capture/ScreenRecordService;->stopStreamRecord(Z)Z

    :cond_1
    if-nez p1, :cond_2

    .line 199
    const-string p1, "context is null"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ScreenRecorder"

    invoke-static {v1, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 v0, 0x0

    .line 203
    sput-object v0, Lcom/gme/video/sdk/capture/ScreenRecorder;->sScreenRecordService:Lcom/gme/video/sdk/capture/ScreenRecordService;

    .line 204
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/capture/ScreenRecorder;->stopRecordService(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
