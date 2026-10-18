.class public Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;
.super Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;
.source "GmeVideoAudioEncoder.java"


# static fields
.field public static final NO_AUDIO_MUXER_INDEX:I = 0x63


# instance fields
.field private mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

.field private mClipAudioTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerId:I

.field private final mPcmFile:Ljava/lang/String;

.field private mPtsEndTime:J

.field private mResultAudioFormat:Landroid/media/MediaFormat;

.field private mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

.field private final mWavFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;-><init>(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;ILandroid/media/MediaFormat;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    const-wide/16 p1, 0x0

    .line 47
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPtsEndTime:J

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getOutPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".pcm"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".wav"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mClipAudioTimeList:Ljava/util/List;

    .line 69
    :try_start_0
    new-instance p1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    iget-object p2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-direct {p1, p2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;-><init>(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    :goto_0
    return-void
.end method

.method private covertOriginal(JJI)I
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 218
    iget-object v3, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v5, "Audio onceStartUs: %d, onceEndUs: %d"

    invoke-static {v3, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v3, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v2, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 221
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 223
    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-wide/16 v8, -0x1

    move-wide v10, v8

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-nez v6, :cond_a

    .line 228
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0xc8

    .line 230
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 236
    :cond_1
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_5

    .line 242
    :cond_2
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v12

    .line 243
    iget v13, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mTrackId:I

    if-ne v12, v13, :cond_8

    .line 244
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v5, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    iput v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 245
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v12, :cond_3

    .line 246
    iput v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    .line 249
    :cond_3
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v12, v10, v8

    if-nez v12, :cond_4

    .line 251
    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 253
    :cond_4
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v14, v12, v1

    if-gez v14, :cond_5

    .line 254
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v14, p3, v12

    if-ltz v14, :cond_7

    .line 256
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v14, v12, p3

    if-gez v14, :cond_6

    goto :goto_1

    .line 264
    :cond_6
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v12, v10

    iget-wide v14, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPtsEndTime:J

    add-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_2

    .line 257
    :cond_7
    :goto_1
    iput v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 258
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v12

    iput v12, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 260
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v12, v10

    iget-wide v14, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPtsEndTime:J

    add-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 261
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget v13, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMuxerId:I

    invoke-virtual {v12, v13, v5, v3}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 262
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    :cond_8
    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    :goto_2
    const/4 v12, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    .line 275
    :goto_5
    iget-wide v2, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPtsEndTime:J

    .line 276
    iget-object v2, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPtsEndTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPtsEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private covertWithDecode(JJILjava/io/FileOutputStream;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 287
    iget-object v3, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 289
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 290
    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 292
    iget-object v6, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-nez v7, :cond_f

    .line 299
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v9, 0xc8

    .line 301
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 307
    :cond_0
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_6

    :cond_1
    const/4 v9, 0x1

    const-wide/16 v10, 0x7d0

    if-nez v8, :cond_5

    .line 314
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    if-ltz v14, :cond_5

    .line 316
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    const-wide/16 v15, -0x1

    cmp-long v17, v12, v15

    if-nez v17, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v15, v12, v1

    if-gez v15, :cond_3

    .line 320
    iget-object v9, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_3
    cmp-long v15, v12, p3

    if-lez v15, :cond_4

    .line 327
    :goto_1
    iget-object v13, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-object/from16 p5, v5

    const/4 v8, 0x1

    goto :goto_2

    .line 329
    :cond_4
    iget-object v15, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v5, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    iput v15, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 330
    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 331
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v12

    iput v12, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 332
    iget-object v12, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 333
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 334
    iget-object v13, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 p5, v5

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v15, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v16, 0x0

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v12

    move-wide/from16 v17, v4

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 335
    iget-object v4, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    :cond_5
    move-object/from16 p5, v5

    :goto_2
    if-nez v7, :cond_e

    .line 341
    iget-object v4, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v5, -0x2

    if-ne v4, v5, :cond_7

    .line 345
    iget-object v4, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 346
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "audio decode newFormat = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-gez v4, :cond_8

    .line 349
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unexpected result from audio decoder.dequeueOutputBuffer: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v5, v4, v13}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v12, p6

    const/4 v13, 0x0

    goto :goto_2

    .line 351
    :cond_8
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x4

    if-ne v5, v12, :cond_9

    move-object/from16 v12, p6

    const/4 v7, 0x1

    goto :goto_4

    .line 353
    :cond_9
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_d

    .line 354
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 357
    iget v12, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    div-int/lit8 v12, v12, 0x2

    .line 358
    new-array v13, v12, [S

    .line 361
    sget-object v14, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-eq v6, v14, :cond_a

    const/4 v14, 0x0

    .line 362
    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5, v13, v14, v12}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 368
    :cond_a
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v5, :cond_b

    .line 369
    iget-wide v14, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v14, v15}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getAudioSpeedLevel(J)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->setSpeed(F)V

    .line 370
    invoke-direct {v0, v13}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->processPCM([S)[S

    move-result-object v13

    .line 374
    :cond_b
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v5, :cond_c

    .line 375
    iget-wide v14, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v13, v14, v15}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mixBgm([SJ)V

    .line 378
    :cond_c
    array-length v5, v13

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 379
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-object/from16 v12, p6

    .line 380
    invoke-virtual {v12, v5}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4

    :cond_d
    move-object/from16 v12, p6

    .line 382
    :goto_4
    iget-object v5, v0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    invoke-virtual {v5, v4, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_2

    :cond_e
    :goto_5
    move-object/from16 v12, p6

    const/4 v13, 0x0

    move-object/from16 v5, p5

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v13, 0x0

    const/4 v4, 0x0

    :goto_6
    return v4
.end method

.method private initResultAudioFormat()V
    .locals 11

    .line 429
    const-string v0, "durationUs"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getLongFormat(Ljava/lang/String;J)J

    move-result-wide v0

    .line 430
    const-string v2, "sample-rate"

    const v3, 0xac44

    invoke-virtual {p0, v2, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v2

    .line 431
    const-string v3, "channel-count"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x2ee00

    .line 432
    const-string v5, "bitrate"

    invoke-virtual {p0, v5, v4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v4

    const v6, 0x186a0

    .line 433
    const-string v7, "max-input-size"

    invoke-virtual {p0, v7, v6}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-lez v10, :cond_1

    .line 440
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, v2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->setSrcSampleRate(I)V

    .line 442
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    invoke-virtual {v0, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->setSrcChannelCount(I)V

    .line 443
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->start()V

    .line 446
    :cond_0
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 451
    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 452
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 453
    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 454
    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->fixAudioCSD(Landroid/media/MediaFormat;)V

    .line 456
    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mResultAudioFormat:Landroid/media/MediaFormat;

    return-void

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio duration is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private muxerWav()I
    .locals 21

    move-object/from16 v1, p0

    .line 507
    const-string v0, "audio/mp4a-latm"

    const-string v2, "bitrate"

    const-string v3, "max-input-size"

    .line 509
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 513
    :try_start_0
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 514
    :try_start_1
    iget-object v8, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 515
    sget-object v8, Lcom/gme/video/sdk/edit/model/TrackType;->AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v7, v8}, Lcom/gme/video/sdk/utils/MediaUtil;->getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I

    move-result v8

    .line 516
    invoke-virtual {v7, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9

    .line 517
    invoke-virtual {v7, v8}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const v8, 0x186a0

    .line 519
    invoke-static {v9, v3, v8}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 520
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const v11, 0x2ee00

    .line 522
    invoke-static {v9, v2, v11}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v11

    .line 523
    const-string v12, "channel-count"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    .line 524
    const-string v14, "sample-rate"

    const v15, 0xac44

    invoke-static {v9, v14, v15}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 525
    invoke-static {v0, v9, v12}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    .line 526
    invoke-virtual {v9, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 527
    const-string v2, "aac-profile"

    const/4 v11, 0x2

    invoke-virtual {v9, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 528
    invoke-virtual {v9, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 530
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 531
    :try_start_2
    invoke-virtual {v2, v9, v6, v6, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 532
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_8

    .line 538
    iget-object v6, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequirePause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    const-wide/16 v8, 0xc8

    .line 540
    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 546
    :cond_0
    :try_start_4
    iget-object v6, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_2

    :cond_1
    const-wide/16 v8, 0x7d0

    .line 551
    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-nez v3, :cond_3

    if-ltz v15, :cond_3

    .line 553
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    const-wide/16 v11, 0x0

    cmp-long v6, v18, v11

    if-gez v6, :cond_2

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v2

    .line 556
    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v3, 0x1

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v20

    .line 559
    invoke-virtual {v7, v10, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v17

    .line 560
    invoke-virtual {v2, v15}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 561
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 562
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v16, 0x0

    move-object v14, v2

    .line 564
    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 565
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    .line 570
    :cond_3
    :goto_1
    invoke-virtual {v2, v4, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_4

    goto :goto_0

    :cond_4
    const/4 v11, -0x2

    if-ne v6, v11, :cond_5

    .line 574
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 575
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audio decode newFormat = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-gez v6, :cond_6

    .line 578
    iget-object v11, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unexpected from audio decoder.dequeueOutputBuffer: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 580
    :cond_6
    iget v11, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 584
    :cond_7
    invoke-virtual {v2, v6}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 585
    iget-object v12, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget v14, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMuxerId:I

    invoke-virtual {v12, v14, v11, v4}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 586
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 587
    invoke-virtual {v2, v6, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 594
    :cond_8
    :goto_2
    invoke-static {v7}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v6

    :goto_3
    move-object v6, v7

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v6

    :goto_4
    move-object v6, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v2, v6

    .line 592
    :goto_5
    :try_start_5
    iget-object v3, v1, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    const-string v4, "muxerWav error"

    invoke-static {v3, v4, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 594
    invoke-static {v6}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    .line 595
    :goto_6
    invoke-static {v2}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    return v5

    :catchall_3
    move-exception v0

    .line 594
    :goto_7
    invoke-static {v6}, Lcom/gme/video/sdk/utils/MediaUtil;->closeExtractor(Landroid/media/MediaExtractor;)V

    .line 595
    invoke-static {v2}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 596
    throw v0
.end method

.method private processPCM([S)[S
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/SoundTouchJni;->processPCM([S)[S

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private shouldAddAudio()Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addAudioMuxer()I
    .locals 2

    .line 409
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->shouldAddAudio()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x63

    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mResultAudioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->initResultAudioFormat()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mResultAudioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    return v0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mResultAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMuxerId:I

    const/4 v0, 0x0

    return v0
.end method

.method public initSoundTouch()V
    .locals 3

    .line 488
    const-string v0, "channel-count"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v0

    .line 489
    const-string v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {p0, v1, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v1

    .line 490
    new-instance v2, Lcom/gme/video/sdk/jni/SoundTouchJni;

    invoke-direct {v2, v0, v1}, Lcom/gme/video/sdk/jni/SoundTouchJni;-><init>(II)V

    iput-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    return-void
.end method

.method public processAudio()I
    .locals 13

    .line 81
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->shouldAddAudio()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {p0, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->publishProgress(F)V

    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mTrackId:I

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 88
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mMediaMuxer:Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->start()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mVideoConfig:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;->getConfigMode()Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    move-result-object v0

    .line 92
    const-string v2, "max-input-size"

    invoke-virtual {p0, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;)I

    move-result v2

    .line 95
    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const/4 v10, 0x0

    if-ne v0, v3, :cond_7

    .line 96
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mClipAudioTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mClipAudioTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 98
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_6

    .line 101
    :cond_3
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->recordOnce(JJ)V

    .line 102
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    move-object v3, p0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->covertOriginal(JJI)I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 109
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_6

    .line 112
    :cond_6
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->recordOnce(JJ)V

    .line 113
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    move-object v3, p0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->covertOriginal(JJI)I

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6

    .line 119
    :cond_7
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-nez v3, :cond_b

    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-eq v0, v3, :cond_8

    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->None:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v3, :cond_b

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 122
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_6

    .line 125
    :cond_a
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->recordOnce(JJ)V

    .line 126
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    move-object v3, p0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->covertOriginal(JJI)I

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_6

    .line 133
    :cond_b
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 137
    :try_start_1
    const-string v3, "mime"

    invoke-virtual {p0, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getStringFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    .line 138
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mOriginalMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4, v10, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 139
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 141
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {v3}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 142
    iput-object v10, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    if-nez v3, :cond_c

    const/16 v1, 0xca

    .line 147
    const-string v0, "codec init failed"

    invoke-virtual {p0, v1, v0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->publishEvent(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 189
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v1

    .line 152
    :cond_c
    :try_start_5
    sget-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    if-ne v0, v3, :cond_d

    .line 153
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->initSoundTouch()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    const/4 v0, 0x0

    .line 156
    :cond_e
    :try_start_6
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 157
    iget-object v3, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    const v5, 0x3f333333    # 0.7f

    mul-float v4, v4, v5

    .line 158
    iget-object v5, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mGenerateNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->publishProgress(F)V

    .line 159
    iget-object v4, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mUserRequireStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_1

    .line 162
    :cond_f
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->recordOnce(JJ)V

    .line 163
    iget-wide v4, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    iget-wide v6, v3, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    move-object v3, p0

    move v8, v2

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->covertWithDecode(JJILjava/io/FileOutputStream;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    :cond_10
    :goto_1
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->unInitSoundTouch()V

    const v1, 0x3f4ccccd    # 0.8f

    .line 170
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->publishProgress(F)V

    if-nez v0, :cond_12

    .line 174
    const-string v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {p0, v1, v2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v1

    .line 175
    const-string v2, "channel-count"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->getIntegerFormat(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    const/16 v4, 0xc

    goto :goto_2

    :cond_11
    const/16 v4, 0x10

    .line 180
    :goto_2
    new-instance v5, Lcom/gme/video/sdk/utils/PcmToWavUtil;

    invoke-direct {v5, v1, v4, v2, v3}, Lcom/gme/video/sdk/utils/PcmToWavUtil;-><init>(IIII)V

    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Lcom/gme/video/sdk/utils/PcmToWavUtil;->pcmToWav(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x3f666666    # 0.9f

    .line 182
    invoke-virtual {p0, v1}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->publishProgress(F)V

    .line 183
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->muxerWav()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_12
    move v1, v0

    .line 185
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 189
    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    nop

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 133
    :goto_4
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 186
    :try_start_b
    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->TAG:Ljava/lang/String;

    const-string v3, "AudioEncoder error"

    invoke-static {v2, v3, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 189
    :try_start_c
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    .line 196
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    .line 198
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mTrackId:I

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 200
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v0, :cond_14

    .line 201
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->release()V

    .line 202
    iput-object v10, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    :cond_14
    return v1

    .line 189
    :goto_7
    :try_start_d
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mPcmFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mWavFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 193
    :catch_4
    throw v0
.end method

.method public setClipAudioTimeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;

    .line 53
    iget-object v1, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mClipAudioTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/SoundTouchJni;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public unInitSoundTouch()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/gme/video/sdk/jni/SoundTouchJni;->unInit()V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/gme/video/sdk/edit/encoder/GmeVideoAudioEncoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    :cond_0
    return-void
.end method
