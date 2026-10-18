.class public Lcom/gme/video/sdk/info/GmeVideoInfoReader;
.super Ljava/lang/Object;
.source "GmeVideoInfoReader.java"


# static fields
.field private static DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "GmeVideoInfoReader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpExtInfo(Ljava/lang/String;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 305
    sget-object p0, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    const-string p1, "mediaInfo is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 309
    :cond_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    iget v2, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mWidth:I

    iget v3, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v1

    .line 315
    const-string v2, "]"

    if-nez v1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v3

    .line 318
    sget-object v4, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " VideoSize not support, sys support w ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",h="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " file =["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mWidth:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mHeight:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object p0

    .line 322
    iget v1, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    sget-object v1, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Rate not support, sys support rate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " file = ["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoFrameRate:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static getAudioChannelCount(Landroid/media/MediaFormat;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 101
    const-string v0, "channel-count"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getAudioDuration(Landroid/media/MediaFormat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 125
    const-string v0, "durationUs"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getAudioDuration(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 334
    :try_start_0
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :try_start_1
    invoke-virtual {v3, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 337
    sget-object p0, Lcom/gme/video/sdk/edit/model/TrackType;->AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v3, p0}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result p0

    .line 338
    invoke-virtual {v3, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    .line 339
    const-string v2, "durationUs"

    invoke-static {p0, v2, v0, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getLong(Landroid/media/MediaFormat;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :catch_1
    move-object v3, v2

    .line 343
    :goto_0
    invoke-static {v3}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    return-wide v0
.end method

.method public static getAudioInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-static {p0, v0, v1, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getMediaInfo(Ljava/lang/String;ZZZ)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getAudioSampleRate(Landroid/media/MediaFormat;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 113
    const-string v0, "sample-rate"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMediaInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-static {p0, v0, v0, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getMediaInfo(Ljava/lang/String;ZZZ)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaInfo(Ljava/lang/String;ZZZ)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
    .locals 5

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 176
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    invoke-direct {v0}, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;-><init>()V

    .line 177
    iput-object p0, v0, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mMediaUrl:Ljava/lang/String;

    .line 178
    invoke-static {p0}, Lcom/gme/video/sdk/utils/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mFileSize:J

    .line 179
    invoke-static {p0}, Lcom/gme/video/sdk/utils/FileUtil;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCreateTimeStamp:J

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 183
    :try_start_0
    invoke-static {p0, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->initVideoCover(Ljava/lang/String;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    sget-object p1, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "initVideoCover failed,error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_8

    .line 191
    :cond_2
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    .line 193
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_7

    .line 197
    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 201
    :cond_3
    const-string v3, "mime"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 205
    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    invoke-static {v1, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->initVideoInfo(Landroid/media/MediaFormat;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    .line 207
    sget-boolean v1, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 208
    invoke-static {v3, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->dumpExtInfo(Ljava/lang/String;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 210
    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    invoke-static {v1, v0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->initAudioInfo(Landroid/media/MediaFormat;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 215
    sget-object p2, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    const-string p3, "getMediaInfo got excp"

    invoke-static {p2, p3, p0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    :cond_7
    invoke-static {p1}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    :cond_8
    return-object v0
.end method

.method private static getVideoDuration(Landroid/media/MediaFormat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 85
    const-string v0, "durationUs"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getVideoFrameRate(Landroid/media/MediaFormat;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 40
    const-string v0, "frame-rate"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getVideoHeight(Landroid/media/MediaFormat;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 73
    const-string v0, "height"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getVideoInfo(Ljava/lang/String;)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-static {p0, v0, v0, v1}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getMediaInfo(Ljava/lang/String;ZZZ)Lcom/gme/video/sdk/info/GmeVideoMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoRotation(Landroid/media/MediaFormat;)I
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 48
    const-string v0, "rotation-degrees"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getVideoWidth(Landroid/media/MediaFormat;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 61
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static initAudioInfo(Landroid/media/MediaFormat;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 286
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getAudioSampleRate(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioSampleRate:I

    .line 287
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getAudioDuration(Landroid/media/MediaFormat;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioDuration:J

    .line 288
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getAudioChannelCount(Landroid/media/MediaFormat;)I

    move-result p0

    iput p0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mAudioChannelCount:I

    return-void
.end method

.method private static initVideoCover(Ljava/lang/String;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 238
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 241
    sget-object p0, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    const-string p1, "initVideoCover bitmap is null "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 244
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mCoverImage:[B

    .line 247
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    sget-object p1, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->TAG:Ljava/lang/String;

    const-string v1, "initVideoCover error "

    invoke-static {p1, v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method private static initVideoInfo(Landroid/media/MediaFormat;Lcom/gme/video/sdk/info/GmeVideoMediaInfo;)V
    .locals 2

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 263
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoRotation(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoRotation:I

    .line 265
    :cond_0
    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoRotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoWidth(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mWidth:I

    .line 271
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoHeight(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mHeight:I

    goto :goto_1

    .line 267
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoHeight(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mWidth:I

    .line 268
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoWidth(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mHeight:I

    .line 274
    :goto_1
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoFrameRate(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoFrameRate:I

    .line 275
    invoke-static {p0}, Lcom/gme/video/sdk/info/GmeVideoInfoReader;->getVideoDuration(Landroid/media/MediaFormat;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/gme/video/sdk/info/GmeVideoMediaInfo;->mVideoDuration:J

    return-void
.end method
