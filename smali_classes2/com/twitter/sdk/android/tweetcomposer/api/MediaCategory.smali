.class public interface abstract annotation Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory;
.super Ljava/lang/Object;
.source "MediaCategory.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory;",
        "",
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

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# static fields
.field public static final AMPLIFY_VIDEO:Ljava/lang/String; = "amplify_video"

.field public static final Companion:Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

.field public static final DM_IMAGE:Ljava/lang/String; = "dm_image"

.field public static final DM_VIDEO:Ljava/lang/String; = "dm_video"

.field public static final SUBTITLES:Ljava/lang/String; = "subtitles"

.field public static final TWEET_GIF:Ljava/lang/String; = "tweet_gif"

.field public static final TWEET_IMAGE:Ljava/lang/String; = "tweet_image"

.field public static final TWEET_VIDEO:Ljava/lang/String; = "tweet_video"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;->$$INSTANCE:Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory;->Companion:Lcom/twitter/sdk/android/tweetcomposer/api/MediaCategory$Companion;

    return-void
.end method
