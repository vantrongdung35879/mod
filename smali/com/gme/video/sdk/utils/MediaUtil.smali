.class public Lcom/gme/video/sdk/utils/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# static fields
.field public static final AUDIO_DEF_FREQ_INDEX:I = 0x4

.field private static final AUDIO_FREQ_INDEX_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERR_NO_TRACK_INDEX:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "MediaUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/utils/MediaUtil;->AUDIO_FREQ_INDEX_MAP:Ljava/util/Map;

    const v1, 0x17700

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x15888

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xfa00

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xbb80

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xac44

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d00

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5dc0

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5622

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e80

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee0

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b11

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f40

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1cb6

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCodec(Landroid/media/MediaCodec;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V

    .line 322
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 324
    const-string v0, "MediaUtil"

    const-string v1, "closeCodec error "

    invoke-static {v0, v1, p0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeExtractor(Landroid/media/MediaExtractor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    :cond_0
    return-void
.end method

.method public static closeMuxer(Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->stop()V

    .line 338
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/muxer/GmeVideoMuxer;->release()V

    :cond_0
    return-void
.end method

.method public static createVideoCSD(Ljava/lang/String;Lcom/gme/video/sdk/edit/model/GmeVideoSize;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;
    .locals 1

    .line 129
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;->getHeight()I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    .line 130
    invoke-static {p0, p2, p3}, Lcom/gme/video/sdk/utils/MediaUtil;->fixVideoCSD(Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static fixAudioCSD(Landroid/media/MediaFormat;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    const-string v0, "aac-profile"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 102
    const-string v2, "sample-rate"

    invoke-static {p0, v2, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    .line 103
    const-string v3, "channel-count"

    invoke-static {p0, v3, v1}, Lcom/gme/video/sdk/utils/MediaUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_3

    if-ltz v2, :cond_3

    if-gez v1, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    sget-object v3, Lcom/gme/video/sdk/utils/MediaUtil;->AUDIO_FREQ_INDEX_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    const/4 v3, 0x2

    .line 112
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x3

    shr-int/lit8 v4, v2, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v3, v4, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x7

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 114
    invoke-virtual {v3, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 115
    const-string v0, "csd-0"

    invoke-virtual {p0, v0, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static fixGenResolution(III)Lcom/gme/video/sdk/edit/model/GmeVideoSize;
    .locals 0

    if-lez p2, :cond_1

    if-le p1, p0, :cond_0

    mul-int p1, p1, p2

    .line 228
    div-int/2addr p1, p0

    move p0, p2

    goto :goto_0

    :cond_0
    mul-int p0, p0, p2

    .line 231
    div-int/2addr p0, p1

    move p1, p2

    .line 234
    :cond_1
    :goto_0
    rem-int/lit8 p2, p0, 0x2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 235
    :goto_1
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 237
    :goto_2
    new-instance p2, Lcom/gme/video/sdk/edit/model/GmeVideoSize;

    invoke-direct {p2, p0, p1}, Lcom/gme/video/sdk/edit/model/GmeVideoSize;-><init>(II)V

    return-object p2
.end method

.method public static fixStartUs(Landroid/media/MediaExtractor;IJ)J
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p2

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const v3, 0x7d000

    .line 195
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 197
    :goto_0
    invoke-virtual {p0, v3, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-lez v4, :cond_2

    .line 198
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    cmp-long v6, p2, v4

    if-gtz v6, :cond_1

    move-wide p2, v4

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 206
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 207
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-wide p2
.end method

.method public static fixVideoCSD(Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)Landroid/media/MediaFormat;
    .locals 5

    .line 145
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 146
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 147
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 153
    iget p2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_1

    const/4 v2, 0x3

    if-le p2, v2, :cond_1

    .line 155
    aget-byte v2, v0, p2

    if-ne v2, v1, :cond_0

    add-int/lit8 v2, p2, -0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    add-int/lit8 v2, p2, -0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    add-int/lit8 v2, p2, -0x3

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    .line 156
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 157
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p2, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move-object v1, p2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 169
    const-string p1, "csd-0"

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 170
    const-string p1, "csd-1"

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_2
    return-object p0
.end method

.method public static getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return p2
.end method

.method public static getLong(Landroid/media/MediaFormat;Ljava/lang/String;J)J
    .locals 1

    if-eqz p0, :cond_1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    :goto_0
    return-wide p2
.end method

.method public static getString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static getTrackIndex(Landroid/media/MediaExtractor;Lcom/gme/video/sdk/edit/model/TrackType;)I
    .locals 4

    .line 28
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 31
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/gme/video/sdk/edit/model/TrackType;->getMime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static mixPCM([SF[SF)V
    .locals 3

    .line 286
    invoke-static {p0}, Lcom/gme/video/sdk/utils/DataUtil;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/gme/video/sdk/utils/DataUtil;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 291
    :goto_0
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 292
    aget-short v1, p0, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    aget-short v2, p2, v0

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, -0x8000

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    int-to-short v2, v1

    .line 295
    :goto_1
    aput-short v2, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method

.method public static setProfile(Ljava/lang/String;Landroid/media/MediaFormat;II)Z
    .locals 5

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 248
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 256
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 257
    invoke-virtual {v2, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 258
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 260
    invoke-static {v0}, Lcom/gme/video/sdk/utils/MediaUtil;->closeCodec(Landroid/media/MediaCodec;)V

    if-nez p0, :cond_2

    return v1

    .line 265
    :cond_2
    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 266
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p2, :cond_4

    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v4, p3, :cond_4

    .line 267
    const-string p0, "profile"

    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 268
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p0, p2, :cond_3

    .line 269
    const-string p0, "level"

    iget p2, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v1
.end method
