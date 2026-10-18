.class public Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;
.super Ljava/lang/Object;
.source "GmeVideoEditGenerator.java"

# interfaces
.implements Lcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GmeVideoEditGenerator"


# instance fields
.field private mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

.field private final mGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProgressListener:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;

.field private mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

.field private mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private checkParam()Z
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string v2, "param is null."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getOutPath()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string v2, "outPath is null or empty."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 286
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string v2, "outPath exist but can not delete."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getmTimeDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getmTimeDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;

    .line 304
    iget-object v3, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v3, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-object v5, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v5, v5, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    .line 305
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startTime >= endTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v4, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ClipConfigData;->time:Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    iget-wide v4, v2, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_7
    :goto_0
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string v2, "outPath Directory is empty or can not write "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 275
    :cond_8
    :goto_1
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sourcePath is null or can not read."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private getPrePtsTime(Landroid/media/MediaExtractor;J)J
    .locals 9

    const v0, 0x7d000

    const-wide/16 v1, 0x0

    .line 232
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide v4, v1

    .line 236
    :goto_0
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-lez v6, :cond_3

    .line 237
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    if-lez v6, :cond_2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-nez v8, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    return-wide p1

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-lez v8, :cond_1

    return-wide v4

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 248
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 255
    throw p1

    :catch_0
    move-exception p1

    .line 252
    const-string p2, "IFR"

    const-string p3, "initIFrameList error "

    invoke-static {p2, p3, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-wide v1
.end method

.method private startGenerateInner()V
    .locals 17

    move-object/from16 v0, p0

    .line 100
    sget-object v1, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "startGenerateInner"

    invoke-static {v1, v4, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->checkParam()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_0

    .line 103
    const-string v1, "param is Illegal"

    invoke-virtual {v0, v3, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 110
    :try_start_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    iget-object v5, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSourcePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v4, v1

    .line 113
    :catch_1
    invoke-static {v4}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    move-object v4, v1

    :goto_0
    if-nez v4, :cond_1

    const/16 v1, 0xca

    .line 117
    const-string v3, "codec error"

    invoke-virtual {v0, v1, v3}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    .line 118
    sget-object v1, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_1
    sget-object v5, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startGenerateInner MediaExtractor init end"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->isNoAudio()Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    sget-object v6, Lcom/gme/video/sdk/edit/model/TrackType;->AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v4, v6}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 128
    invoke-virtual {v4, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    move v8, v6

    move-object v11, v7

    goto :goto_1

    :cond_2
    move-object v11, v1

    move v8, v6

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    move-object v11, v1

    const/4 v8, -0x1

    .line 131
    :goto_1
    const-string/jumbo v6, "startGenerateInner get originalAudioFormat end"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v6, Lcom/gme/video/sdk/edit/model/TrackType;->VIDEO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v4, v6}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result v12

    if-ltz v12, :cond_4

    .line 138
    invoke-virtual {v4, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    move-object v13, v6

    goto :goto_2

    :cond_4
    move-object v13, v1

    :goto_2
    if-nez v13, :cond_5

    .line 141
    invoke-static {v4}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    .line 142
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "no video track"

    invoke-static {v5, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xcd

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 146
    :cond_5
    const-string/jumbo v6, "startGenerateInner get originalVideoFormat end"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getmTimeDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v14, 0x1

    if-nez v6, :cond_7

    .line 149
    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getStartTimeUs()J

    move-result-wide v6

    .line 150
    invoke-static {v4, v12, v6, v7}, Lcom/gme/video/sdk/utils/MediaUtil;->fixStartUs(Landroid/media/MediaExtractor;IJ)J

    move-result-wide v9

    cmp-long v15, v6, v9

    if-eqz v15, :cond_6

    .line 152
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v6, v15, v2

    aput-object v7, v15, v14

    const-string v6, "fixStartUs from %d to %d."

    invoke-static {v5, v6, v15}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6, v9, v10}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->fixStartTimeUs(J)V

    .line 155
    :cond_6
    const-string/jumbo v6, "startGenerateInner fixStartUs end"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_7
    :try_start_2
    new-instance v5, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getOutPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v5

    goto :goto_3

    .line 163
    :catch_2
    invoke-static {v4}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    .line 164
    invoke-static {v1}, Lcom/gme/video/sdk/utils/MediaUtil;->closeMuxer(Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)V

    :goto_3
    if-nez v1, :cond_8

    .line 167
    sget-object v1, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "muxer init failed"

    invoke-static {v1, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xcb

    .line 168
    invoke-virtual {v0, v1, v3}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 171
    :cond_8
    sget-object v15, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "startGenerateInner GmeVideoMuxer init end"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v15, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0xd0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v11, :cond_a

    .line 176
    new-instance v7, Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v7, v3, v0}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;-><init>([FLcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;)V

    .line 178
    new-instance v3, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    move-object v5, v3

    move-object/from16 v16, v6

    move-object v6, v4

    move-object v14, v7

    move-object v7, v1

    move-object v9, v11

    move-object/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;-><init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    iput-object v3, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    .line 179
    invoke-virtual {v3, v14}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->setProgressListener(Lcom/gme/video/sdk/utils/MultiProgressWrapper;)V

    .line 182
    iget-object v3, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    invoke-virtual {v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->addAudioMuxer()I

    move-result v3

    if-gez v3, :cond_9

    .line 183
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "add audio muxer failed"

    invoke-static {v15, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xd0

    .line 184
    invoke-virtual {v0, v3, v2}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    :cond_9
    const/16 v3, 0xd0

    move-object v10, v14

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_a
    const/16 v3, 0xd0

    .line 188
    new-instance v7, Lcom/gme/video/sdk/utils/MultiProgressWrapper;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v6, v2

    invoke-direct {v7, v6, v0}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;-><init>([FLcom/gme/video/sdk/utils/MultiProgressWrapper$MultiProgressListener;)V

    move-object v10, v7

    .line 190
    :goto_4
    const-string/jumbo v5, "startGenerateInner addAudioMuxer end"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v15, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v9, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    iget-object v8, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    move-object v5, v9

    move-object v6, v4

    move-object v7, v1

    move-object/from16 v16, v8

    move v8, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;-><init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    iput-object v12, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    .line 194
    invoke-virtual {v12, v13}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->setProgressListener(Lcom/gme/video/sdk/utils/MultiProgressWrapper;)V

    .line 195
    invoke-virtual {v13, v2}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->setCurrentStepIndex(I)V

    .line 196
    const-string/jumbo v5, "startGenerateInner processVideo"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v15, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v5, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->processVideo()I

    move-result v5

    .line 198
    const-string/jumbo v6, "startGenerateInner processVideo end"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v15, v6, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_b

    if-eqz v11, :cond_b

    const/4 v6, 0x1

    .line 201
    invoke-virtual {v13, v6}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->setCurrentStepIndex(I)V

    .line 202
    iget-object v5, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    iget-object v6, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    iget-object v6, v6, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->mClipVideoTimeList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->setClipAudioTimeList(Ljava/util/List;)V

    .line 203
    const-string/jumbo v5, "startGenerateInner processAudio "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v15, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v5, v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    invoke-virtual {v5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->processAudio()I

    move-result v5

    .line 208
    :cond_b
    :try_start_3
    invoke-static {v4}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    .line 209
    invoke-static {v1}, Lcom/gme/video/sdk/utils/MediaUtil;->closeMuxer(Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v1, 0x9

    if-ne v5, v1, :cond_c

    .line 217
    const-string/jumbo v3, "user end process!"

    invoke-virtual {v0, v1, v3}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    goto :goto_5

    :cond_c
    if-nez v5, :cond_d

    .line 219
    invoke-virtual {v13, v14}, Lcom/gme/video/sdk/utils/MultiProgressWrapper;->publishProgress(F)V

    .line 220
    const-string v1, "muxer successed!"

    invoke-virtual {v0, v2, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    goto :goto_5

    .line 222
    :cond_d
    const-string v1, "muxer failed!"

    invoke-virtual {v0, v5, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    .line 224
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string/jumbo v1, "startGenerateInner end result: %d"

    invoke-static {v15, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 211
    :catch_3
    const-string v1, "close video muxer failed"

    invoke-virtual {v0, v3, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
    .end array-data
.end method


# virtual methods
.method synthetic lambda$startGenerate$0$com-gme-video-sdk-edit-GmeVideoEditGenerator()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->startGenerateInner()V

    .line 89
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mProgressListener:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getSourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;->onEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "notifyCompleted code %d, msg %s"

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mProgressListener:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 318
    invoke-interface {v0, p1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;->onProgress(I)V

    goto :goto_0

    .line 320
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "notifyProgress p %f"

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public pauseGenerate()V
    .locals 2

    .line 334
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    .line 335
    const-string v1, "checkSystemVersion is too low"

    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->pause()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->pause()V

    :cond_2
    return-void
.end method

.method public resumeGenerate()V
    .locals 2

    .line 347
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    .line 348
    const-string v1, "checkSystemVersion is too low"

    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->resume()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->resume()V

    :cond_2
    return-void
.end method

.method public setProgressCallback(Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mProgressListener:Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;

    return-void
.end method

.method public startGenerate(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xf

    .line 80
    const-string v0, "checkSystemVersion is too low"

    invoke-virtual {p0, p1, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;-><init>(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    .line 85
    iget-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 92
    const-string v0, "generating"

    invoke-virtual {p0, p1, v0}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopGenerate()V
    .locals 2

    .line 360
    invoke-static {}, Lcom/gme/video/sdk/utils/DeviceInfo;->checkSystemVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    .line 361
    const-string v1, "checkSystemVersion is too low"

    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->onEvent(ILjava/lang/String;)V

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mAudioEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->stop()V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditGenerator;->mVideoEncoder:Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoVideoEncoder;->stop()V

    :cond_2
    return-void
.end method
