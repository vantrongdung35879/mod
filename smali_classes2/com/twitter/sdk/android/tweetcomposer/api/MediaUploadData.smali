.class public final Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;
.super Ljava/lang/Object;
.source "MediaUploadData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR \u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
        "",
        "()V",
        "expiresAfterSecs",
        "",
        "getExpiresAfterSecs",
        "()J",
        "setExpiresAfterSecs",
        "(J)V",
        "mediaId",
        "",
        "getMediaId",
        "()Ljava/lang/String;",
        "setMediaId",
        "(Ljava/lang/String;)V",
        "mediaKey",
        "getMediaKey",
        "setMediaKey",
        "processingInfo",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;",
        "getProcessingInfo",
        "()Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;",
        "setProcessingInfo",
        "(Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;)V",
        "size",
        "getSize",
        "setSize",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private expiresAfterSecs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_after_secs"
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mediaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_key"
    .end annotation
.end field

.field private processingInfo:Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "processing_info"
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExpiresAfterSecs()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->expiresAfterSecs:J

    return-wide v0
.end method

.method public final getMediaId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessingInfo()Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->processingInfo:Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->size:J

    return-wide v0
.end method

.method public final setExpiresAfterSecs(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->expiresAfterSecs:J

    return-void
.end method

.method public final setMediaId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->mediaKey:Ljava/lang/String;

    return-void
.end method

.method public final setProcessingInfo(Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->processingInfo:Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->size:J

    return-void
.end method
