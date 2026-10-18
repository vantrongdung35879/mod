.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;
    }
.end annotation


# static fields
.field public static final EXTRA_FAILURE_ERROR:Ljava/lang/String; = "EXTRA_FAILURE_ERROR"

.field static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field public static final EXTRA_TWEET_ID:Ljava/lang/String; = "EXTRA_TWEET_ID"

.field static final EXTRA_TWEET_TEXT:Ljava/lang/String; = "EXTRA_TWEET_TEXT"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field static final EXTRA_VIDEO_URI:Ljava/lang/String; = "EXTRA_VIDEO_URI"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "TweetUploadService"

.field public static final TWEET_COMPOSE_CANCEL:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

.field public static final UPLOAD_FAILURE:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

.field public static final UPLOAD_SUCCESS:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"


# instance fields
.field private final dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

.field private intent:Landroid/content/Intent;

.field private postTweetManager:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V
    .locals 1

    .line 63
    const-string v0, "TweetUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    return-void
.end method

.method private fail(Ljava/lang/Throwable;)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendFailureBroadcast(Ljava/lang/Throwable;)V

    .line 130
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "TweetUploadService"

    const-string v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    return-void
.end method

.method private sendFailureBroadcast(Ljava/lang/Throwable;)V
    .locals 2

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v1, "EXTRA_FAILURE_ERROR"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSuccessBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v1, "EXTRA_TWEET_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private uploadImageMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->postTweetManager:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweetWithImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendSuccessBroadcast(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private uploadTextTweet(Ljava/lang/String;)V
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->postTweetManager:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendSuccessBroadcast(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private uploadTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadImageMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 92
    invoke-direct {p0, p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadVideoMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTextTweet(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private uploadVideoMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->postTweetManager:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;->postTweetWithVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendSuccessBroadcast(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 69
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    .line 71
    const-string v0, "EXTRA_USER_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez v0, :cond_0

    .line 73
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v0, "Missing Twitter auth token"

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 77
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v2, -0x1

    const-string v4, ""

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 79
    const-string v0, "EXTRA_TWEET_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "EXTRA_IMAGE_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v3, "EXTRA_VIDEO_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance v3, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v4, v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterApiClient;)V

    iput-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->postTweetManager:Lcom/twitter/sdk/android/tweetcomposer/PostTweetManager;

    .line 85
    invoke-direct {p0, v0, v2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
