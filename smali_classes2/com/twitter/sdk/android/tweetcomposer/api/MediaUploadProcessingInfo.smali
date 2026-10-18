.class public final Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;
.super Ljava/lang/Object;
.source "MediaUploadProcessingInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;",
        "",
        "()V",
        "checkAfterSecs",
        "",
        "getCheckAfterSecs",
        "()J",
        "setCheckAfterSecs",
        "(J)V",
        "progressPercent",
        "",
        "getProgressPercent",
        "()I",
        "setProgressPercent",
        "(I)V",
        "state",
        "",
        "getState$annotations",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
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
.field private checkAfterSecs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_after_secs"
    .end annotation
.end field

.field private progressPercent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "progress_percent"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->state:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCheckAfterSecs()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->checkAfterSecs:J

    return-wide v0
.end method

.method public final getProgressPercent()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->progressPercent:I

    return v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setCheckAfterSecs(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->checkAfterSecs:J

    return-void
.end method

.method public final setProgressPercent(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->progressPercent:I

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->state:Ljava/lang/String;

    return-void
.end method
