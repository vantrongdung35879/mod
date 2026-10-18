.class public Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;
.super Ljava/lang/Object;
.source "GmeVideoPCMPlayer.java"


# instance fields
.field mAudioFormat:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field mChannelConfig:I

.field private mChannelCount:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mSampleRate:I

    .line 28
    iput p2, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mChannelCount:I

    .line 30
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 34
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 36
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    .line 41
    throw v0
.end method


# virtual methods
.method public getMinAudioBufferSize()I
    .locals 3

    .line 60
    iget v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mSampleRate:I

    iget v1, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mChannelConfig:I

    iget v2, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    return v0
.end method

.method public play(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    return-void
.end method

.method public play([B)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method public release()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 55
    iget-object v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/gme/video/sdk/edit/audio/GmeVideoPCMPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method
