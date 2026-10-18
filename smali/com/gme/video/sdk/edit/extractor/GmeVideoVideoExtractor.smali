.class public Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;
.super Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;
.source "GmeVideoVideoExtractor.java"


# instance fields
.field private final mIFrameTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/model/IPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoBaseExtractor;-><init>(Ljava/lang/String;Z)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->mIFrameTimeList:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->initPacketList()V

    return-void
.end method

.method private initPacketList()V
    .locals 9

    .line 30
    const-string v0, "IFR"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->getTrackIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const v3, 0x7d000

    .line 35
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, -0x1

    .line 38
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-lez v5, :cond_1

    .line 39
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    if-lez v6, :cond_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 42
    new-instance v6, Lcom/gme/video/sdk/edit/model/IPacket;

    .line 45
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-direct {v6, v4, v5, v7, v8}, Lcom/gme/video/sdk/edit/model/IPacket;-><init>(IIJ)V

    .line 47
    iget-object v5, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->mIFrameTimeList:Ljava/util/List;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I Frame Sample Time = > "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 61
    :try_start_1
    const-string v4, "initIFrameList error "

    invoke-static {v0, v4, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "iFrameTimeList Size= > "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->mIFrameTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 63
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 64
    throw v0
.end method


# virtual methods
.method public getIPacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gme/video/sdk/edit/model/IPacket;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/gme/video/sdk/edit/extractor/GmeVideoVideoExtractor;->mIFrameTimeList:Ljava/util/List;

    return-object v0
.end method
