.class public final Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;
.super Ljava/lang/Object;
.source "PostTweetManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostTweetManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostTweetManager.kt\ncom/twitter/sdk/android/tweetcomposer/PostTweetManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0003J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0003J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0003J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0003J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0007J0\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aH\u0003J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0007JO\u0010\u001d\u001a\u0002H\u001e\"\u0004\u0008\u0000\u0010\u001f\"\u0004\u0008\u0001\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001f0 2\'\u0010!\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u001f0 \u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u0002H\u001e0\"H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "client",
        "Lcom/twitter/sdk/android/core/TwitterApiClient;",
        "(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterApiClient;)V",
        "retrofit",
        "Lcom/twitter/sdk/android/core/services/MediaServiceV2;",
        "appendTweetMediaUpload",
        "",
        "text",
        "mediaFile",
        "Ljava/io/File;",
        "mediaId",
        "mimeType",
        "checkTweetMediaUploadState",
        "mediaData",
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;",
        "finalizeTweetMediaUpload",
        "postTweet",
        "postTweetWithImage",
        "imageUri",
        "postTweetWithMedia",
        "mediaCategory",
        "totalBytes",
        "",
        "postTweetWithVideo",
        "videoUri",
        "flatMap",
        "R",
        "T",
        "Lkotlin/Result;",
        "transform",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field private final context:Landroid/content/Context;

.field private final retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterApiClient;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaServiceV2()Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    move-result-object p1

    const-string p2, "getMediaServiceV2(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    return-void
.end method

.method public static final synthetic access$appendTweetMediaUpload(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->appendTweetMediaUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkTweetMediaUploadState(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->checkTweetMediaUploadState(Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$finalizeTweetMediaUpload(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->finalizeTweetMediaUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final appendTweetMediaUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x500000

    .line 121
    new-array v0, v0, [B

    .line 123
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    check-cast p2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, p2

    check-cast v3, Ljava/io/InputStream;

    .line 126
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, v4

    check-cast v3, Ljava/io/BufferedInputStream;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 128
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 129
    array-length v1, v0

    if-ge v7, v1, :cond_0

    .line 130
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :cond_0
    sget-object v1, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    .line 135
    sget-object v8, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v9, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v8, v9, v0, v5, v10}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v8

    .line 133
    invoke-virtual {v1, v7, p3, v8, v6}, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->appendMediaUpload-BWLJW6A(Lcom/twitter/sdk/android/core/services/MediaServiceV2;Ljava/lang/String;Lokhttp3/RequestBody;I)Ljava/lang/Object;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 146
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 126
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 125
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 148
    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$appendTweetMediaUpload$2;

    invoke-direct {p2, p0, p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$appendTweetMediaUpload$2;-><init>(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 146
    :cond_4
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    const-string p2, "Unable to open media file input stream"

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkTweetMediaUploadState(Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->getProcessingInfo()Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "succeeded"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadProcessingInfo;->getCheckAfterSecs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 178
    sget-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->getMediaId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->checkMediaUploadStatus-gIAlu-s(Lcom/twitter/sdk/android/core/services/MediaServiceV2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 179
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$checkTweetMediaUploadState$1;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$checkTweetMediaUploadState$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v0}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 172
    :cond_1
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    const-string p2, "upload media failed"

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaUploadData;->getMediaId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final finalizeTweetMediaUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    invoke-virtual {v0, v1, p2}, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->finalizeMediaUpload-gIAlu-s(Lcom/twitter/sdk/android/core/services/MediaServiceV2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 155
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$finalizeTweetMediaUpload$1;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$finalizeTweetMediaUpload$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v0}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;+TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    const-string p2, "unknown error"

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    :cond_1
    throw p1
.end method

.method private final postTweet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->postTweet-0E7RQCE(Lcom/twitter/sdk/android/core/services/MediaServiceV2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/twitter/sdk/android/core/models/PostTweetResponse;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/PostTweetResponse;->id:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    sget-object p2, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweet$2;->INSTANCE:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweet$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final postTweetWithMedia(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/twitter/sdk/android/core/services/MediaServiceV2;->Companion:Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->retrofit:Lcom/twitter/sdk/android/core/services/MediaServiceV2;

    move-object v2, p3

    move-wide v3, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/core/services/MediaServiceV2$Companion;->initMediaUpload-BWLJW6A(Lcom/twitter/sdk/android/core/services/MediaServiceV2;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 101
    new-instance p5, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager$postTweetWithMedia$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    check-cast p5, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p4, p5}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->flatMap(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final postTweet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final postTweetWithImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v3}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 78
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "tweet_image"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweetWithMedia(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final postTweetWithVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {v3}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "tweet_video"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweetWithMedia(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
