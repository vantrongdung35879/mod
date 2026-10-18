.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaServiceV2;
.super Ljava/lang/Object;
.source "MediaServiceV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;,
        Lcom/twitter/sdk/android/core/services/MediaServiceV2$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016J,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\'J(\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00032\u0008\u0008\u0003\u0010\r\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u001e\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u001e\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\'J\u001e\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u000b0\u00032\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\'\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/twitter/sdk/android/core/services/MediaServiceV2;",
        "",
        "appendMedia",
        "Lretrofit2/Call;",
        "",
        "mediaId",
        "",
        "media",
        "Lokhttp3/RequestBody;",
        "segmentIndex",
        "checkMediaStatus",
        "Lcom/twitter/sdk/android/tweetcomposer/api/TwitterApiResponse;",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
        "command",
        "finalizeMedia",
        "initMedia",
        "request",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;",
        "postTweet",
        "Lcom/twitter/sdk/android/core/models/PostTweetResponse;",
        "tweet",
        "Lcom/twitter/sdk/android/core/models/TweetContent;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->$$INSTANCE:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    sput-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    return-void
.end method


# virtual methods
.method public abstract appendMedia(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "media"
        .end annotation
    .end param
    .param p3    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "segment_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/2/media/upload/{id}/append"
    .end annotation
.end method

.method public abstract checkMediaStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "command"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "media_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/TwitterApiResponse<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/2/media/upload"
    .end annotation
.end method

.method public abstract finalizeMedia(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/TwitterApiResponse<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/2/media/upload/{id}/finalize"
    .end annotation
.end method

.method public abstract initMedia(Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;)Lretrofit2/Call;
    .param p1    # Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetcomposer/api/MediaInitializeRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/TwitterApiResponse<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/2/media/upload/initialize"
    .end annotation
.end method

.method public abstract postTweet(Lcom/twitter/sdk/android/core/models/TweetContent;)Lretrofit2/Call;
    .param p1    # Lcom/twitter/sdk/android/core/models/TweetContent;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/TweetContent;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/tweetcomposer/api/TwitterApiResponse<",
            "Lcom/twitter/sdk/android/core/models/PostTweetResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/2/tweets"
    .end annotation
.end method
