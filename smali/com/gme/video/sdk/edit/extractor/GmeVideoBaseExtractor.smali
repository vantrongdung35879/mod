.class public abstract Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;
.super Ljava/lang/Object;
.source "GmeVideoBaseExtractor.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/extractor/IExtractor;


# static fields
.field public static final MIME_AUDIO:Ljava/lang/String; = "audio"

.field public static final MIME_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mDurationUs:J

.field private mFrameRate:I

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private final mPath:Ljava/lang/String;

.field private mSampleFlags:I

.field private mSampleTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mPath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mTrackIndex:I

    .line 43
    invoke-direct {p0, p2}, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->init(Z)V

    return-void
.end method

.method private dumpMediaFormat(Landroid/media/MediaFormat;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    const-class v0, Landroid/media/MediaFormat;

    .line 112
    :try_start_0
    const-string v1, "getMap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    iget-object v5, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outputMediaFormat  key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private init(Z)V
    .locals 2

    .line 51
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 52
    iget-object v1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->parserMediaInfo(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->TAG:Ljava/lang/String;

    const-string v1, "Parser media info error"

    invoke-static {v0, v1, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private parserMediaInfo(Z)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-eqz p1, :cond_1

    .line 69
    const-string/jumbo p1, "video"

    goto :goto_0

    :cond_1
    const-string p1, "audio"

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 72
    iget-object v2, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 77
    :cond_2
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 83
    :cond_3
    iget v4, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    iput v1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mTrackIndex:I

    .line 85
    iput-object v2, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    .line 86
    iget-object v3, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 89
    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mDurationUs:J

    .line 94
    :cond_4
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mFrameRate:I

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mDurationUs:J

    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mFrameRate:I

    return v0
.end method

.method public getInteger(Ljava/lang/String;)J
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMediaFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 153
    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$2()V

    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleFlags()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mSampleFlags:I

    return v0
.end method

.method public getSampleTimeUs()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mSampleTimeUs:J

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackIndex()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mTrackIndex:I

    return v0
.end method

.method public readBuffer(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_1

    return v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    iget-object v1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mSampleFlags:I

    .line 221
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mSampleTimeUs:J

    .line 224
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    return p1
.end method

.method public release()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-void
.end method

.method public seekTo(J)J
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 242
    iget-object p1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    return-wide p1
.end method
