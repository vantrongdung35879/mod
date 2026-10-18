.class final Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PostTweetManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweetWithMedia(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Result;",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mediaFile:Ljava/io/File;

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $text:Ljava/lang/String;

.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$mediaFile:Ljava/io/File;

    iput-object p4, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$mimeType:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->invoke(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    .line 103
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$text:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$mediaFile:Ljava/io/File;

    .line 105
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;->$mimeType:Ljava/lang/String;

    .line 102
    invoke-static {v0, v1, v2, p1, v3}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->access$appendTweetMediaUpload(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
