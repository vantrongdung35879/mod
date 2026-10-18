.class public final Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;
.super Ljava/lang/Object;
.source "MediaInitializeRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;",
        "",
        "mediaCategory",
        "",
        "mediaType",
        "totalBytes",
        "",
        "additionalOwners",
        "",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V",
        "getAdditionalOwners",
        "()Ljava/util/List;",
        "getMediaCategory",
        "()Ljava/lang/String;",
        "getMediaType",
        "getTotalBytes",
        "()J",
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
.field private final additionalOwners:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_owners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCategory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_category"
    .end annotation
.end field

.field private final mediaType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field private final totalBytes:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_bytes"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->mediaCategory:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->mediaType:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->totalBytes:J

    .line 34
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->additionalOwners:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getAdditionalOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->additionalOwners:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaCategory()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->mediaCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;->totalBytes:J

    return-wide v0
.end method
