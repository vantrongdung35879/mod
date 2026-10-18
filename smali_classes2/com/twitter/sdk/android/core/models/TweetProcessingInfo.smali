.class public Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;
.super Ljava/lang/Object;
.source "TweetProcessingInfo.java"


# instance fields
.field public final checkAfterSecs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_after_secs"
    .end annotation
.end field

.field public final error:Lcom/twitter/sdk/android/core/models/ApiError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field public final progressPercent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "progress_percent"
    .end annotation
.end field

.field public final state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JILcom/twitter/sdk/android/core/models/ApiError;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->state:Ljava/lang/String;

    .line 40
    iput-wide p2, p0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->checkAfterSecs:J

    .line 41
    iput p4, p0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->progressPercent:I

    .line 42
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->error:Lcom/twitter/sdk/android/core/models/ApiError;

    return-void
.end method
