.class public Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;
.super Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;
.source "GmeVideoVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;
    }
.end annotation


# instance fields
.field private final mVideoDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/Surface;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p3}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;-><init>(Ljava/lang/String;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;)V

    .line 32
    iput-object p4, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->mVideoDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;

    return-void
.end method

.method private getSupportColorFormat(Landroid/media/MediaCodec;Ljava/lang/String;)I
    .locals 10

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " support Video Width  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " For "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " support VideoHeight  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 75
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v6, p1, v3

    .line 76
    iget-object v7, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " colorFormat => 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    .line 76
    invoke-static {v7, v8, v9}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x13

    if-ne v6, v7, :cond_0

    return v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f420888

    return p1
.end method


# virtual methods
.method public checkParam()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public configCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 5

    .line 45
    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->getSupportColorFormat(Landroid/media/MediaCodec;Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set decoder color format => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string v1, "color-format"

    invoke-virtual {p2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p2, v0, v0, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public decodeDone(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->mVideoDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    invoke-interface {v0, p1, v1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;->onDecoderEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initExtractor(Ljava/lang/String;)Lcom/gme/video/sdk/edit/extractor/IExtractor;
    .locals 1

    .line 41
    new-instance v0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;

    invoke-direct {v0, p1}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public initRenderer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public render(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;->mVideoDecoderCallback:Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;->onImageDecoder(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    return-void
.end method
