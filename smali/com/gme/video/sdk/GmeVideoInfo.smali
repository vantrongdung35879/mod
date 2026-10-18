.class public final Lcom/gme/video/sdk/GmeVideoInfo;
.super Ljava/lang/Object;
.source "GmeVideoInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GmeVideoInfo"


# instance fields
.field private mAudioChannelCount:I

.field private mAudioDuration:J

.field private mAudioSampleRate:I

.field private mCoverImage:Landroid/graphics/Bitmap;

.field private mCreateTimeStamp:J

.field private mFileId:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mVideoDuration:J

.field private mVideoFps:I

.field private mVideoHeight:I

.field private mVideoRotation:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 86
    sget-object p1, Lcom/gme/video/sdk/GmeVideoInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cast GMediainfo 2 GmeVideINfo error!!!!"

    invoke-static {p1, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/GmeVideoInfo;->initBasicInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/GmeVideoInfo;->initAudioInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/GmeVideoInfo;->initVideoInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    .line 92
    invoke-direct {p0}, Lcom/gme/video/sdk/GmeVideoInfo;->initFileId()V

    return-void
.end method

.method private initAudioInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 113
    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioChannelCount:I

    iput v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioChannelCount:I

    .line 114
    iget-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioDuration:J

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioDuration:J

    .line 115
    iget p1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioSampleRate:I

    iput p1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioSampleRate:I

    return-void
.end method

.method private initBasicInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 100
    iget-object v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileName:Ljava/lang/String;

    .line 101
    iget-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mFileSize:J

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileSize:J

    .line 102
    iget-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCreateTimeStamp:J

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCreateTimeStamp:J

    .line 103
    iget-object v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCoverImage:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCoverImage:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCoverImage:[B

    iget-object p1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCoverImage:[B

    array-length p1, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCoverImage:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private initFileId()V
    .locals 9

    .line 134
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCreateTimeStamp:J

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoFps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoInfo;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    const/4 v2, 0x3

    aput-object v4, v7, v2

    const/4 v2, 0x4

    aput-object v5, v7, v2

    const/4 v2, 0x5

    aput-object v6, v7, v2

    .line 134
    const-string v2, "%d-%d-%d-%d-%d-%d"

    invoke-static {v0, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v2, Lcom/gme/video/sdk/GmeVideoInfo;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v8

    const-string v3, "get fileId - <%s>"

    invoke-static {v2, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {v0}, Lcom/gme/video/sdk/utils/DataUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileId:Ljava/lang/String;

    return-void
.end method

.method private initVideoInfo(Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 123
    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mWidth:I

    iput v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoWidth:I

    .line 124
    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mHeight:I

    iput v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoHeight:I

    .line 125
    iget-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoDuration:J

    iput-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoDuration:J

    .line 126
    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoRotation:I

    iput v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoRotation:I

    .line 127
    iget p1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoFrameRate:I

    iput p1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoFps:I

    return-void
.end method


# virtual methods
.method public getAudioChannelCount()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioChannelCount:I

    return v0
.end method

.method public getAudioDuration()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioDuration:J

    return-wide v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioSampleRate:I

    return v0
.end method

.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCoverImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCreateTimeStamp()J
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCreateTimeStamp:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoInfo;->getAudioDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoInfo;->getVideoDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileSize:J

    return-wide v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoDuration:J

    return-wide v0
.end method

.method public getVideoFps()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoFps:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoHeight:I

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoRotation:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmeVideoInfo{mFileId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCreateTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mCreateTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mVideoRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/GmeVideoInfo;->mAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
