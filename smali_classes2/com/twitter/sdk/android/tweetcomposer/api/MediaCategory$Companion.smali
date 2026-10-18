.class public final Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;
.super Ljava/lang/Object;
.source "MediaCategory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;",
        "",
        "()V",
        "AMPLIFY_VIDEO",
        "",
        "DM_IMAGE",
        "DM_VIDEO",
        "SUBTITLES",
        "TWEET_GIF",
        "TWEET_IMAGE",
        "TWEET_VIDEO",
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
.field static final synthetic $$INSTANCE:Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

.field public static final AMPLIFY_VIDEO:Ljava/lang/String; = "amplify_video"

.field public static final DM_IMAGE:Ljava/lang/String; = "dm_image"

.field public static final DM_VIDEO:Ljava/lang/String; = "dm_video"

.field public static final SUBTITLES:Ljava/lang/String; = "subtitles"

.field public static final TWEET_GIF:Ljava/lang/String; = "tweet_gif"

.field public static final TWEET_IMAGE:Ljava/lang/String; = "tweet_image"

.field public static final TWEET_VIDEO:Ljava/lang/String; = "tweet_video"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;->$$INSTANCE:Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
