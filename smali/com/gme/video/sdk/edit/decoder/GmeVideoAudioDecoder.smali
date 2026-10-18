.class public Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;
.super Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;
.source "GmeVideoAudioDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;
    }
.end annotation


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

.field private mChannelCount:I

.field private final mDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;

.field private mEncoding:I

.field private mSampleRate:I

.field private mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;-><init>(Ljava/lang/String;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    .line 51
    iput-object p3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;

    .line 54
    :try_start_0
    new-instance p1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    invoke-direct {p1, p2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;-><init>(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkParam()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public configCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 4

    .line 70
    const-string v0, "pcm-encoding"

    :try_start_0
    const-string v1, "channel-count"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    .line 71
    const-string v1, "sample-rate"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x2

    if-lt v1, v2, :cond_1

    .line 74
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    :cond_0
    iput v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    goto :goto_0

    .line 77
    :cond_1
    iput v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;

    if-eqz v0, :cond_2

    .line 81
    iget v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    iget v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    iget v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    invoke-interface {v0, v1, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;->onFormatChange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->TAG:Ljava/lang/String;

    const-string v2, "configCodec audio decodec err "

    invoke-static {v1, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public decodeDone(I)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 141
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 142
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/gme/video/sdk/jni/SoundTouchJni;->unInit()V

    .line 146
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    :cond_1
    return-void
.end method

.method public initExtractor(Ljava/lang/String;)Lcom/gme/video/sdk/edit/extractor/IExtractor;
    .locals 1

    .line 65
    new-instance v0, Lcom/gme/video/sdk/edit/extractor/GmeVideoAudioExtractor;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/edit/extractor/GmeVideoAudioExtractor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public initRenderer()Z
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v0, :cond_0

    .line 94
    iget v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->setSrcSampleRate(I)V

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    iget v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    invoke-virtual {v0, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->setSrcChannelCount(I)V

    .line 96
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->start()V

    .line 99
    :cond_0
    new-instance v0, Lcom/gme/video/sdk/jni/SoundTouchJni;

    iget v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    iget v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    invoke-direct {v0, v1, v2}, Lcom/gme/video/sdk/jni/SoundTouchJni;-><init>(II)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    .line 101
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 102
    iget v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mChannelCount:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    const/16 v5, 0xc

    .line 103
    :goto_0
    iget v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    iget v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    invoke-static {v0, v5, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 104
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSampleRate:I

    iget v6, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mEncoding:I

    const/4 v8, 0x1

    const/4 v3, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 106
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_2
    return v1
.end method

.method protected release()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->release()V

    .line 158
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->release()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    :cond_0
    return-void
.end method

.method public render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 4

    .line 115
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getAudioData()[S

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, v0}, Lcom/gme/video/sdk/jni/SoundTouchJni;->processPCM([S)[S

    move-result-object v0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mBgmDecoder:Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoFrame;->getPtsUs()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBgmDecoder;->mixBgm([SJ)V

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;

    if-eqz p1, :cond_2

    .line 126
    invoke-interface {p1, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder$AudioDecoderCallback;->onDataDecoder([S)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoAudioDecoder;->mSoundTouchJni:Lcom/gme/video/sdk/jni/SoundTouchJni;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/jni/SoundTouchJni;->setSpeed(F)V

    :cond_0
    return-void
.end method
